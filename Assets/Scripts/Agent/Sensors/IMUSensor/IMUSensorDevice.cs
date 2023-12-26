using Assets.Scripts.BridgeManagement;
using Assets.Scripts.TargetEnvironmentSelection;
using System;
using UnityEngine;
using Quaternion = UnityEngine.Quaternion;
using Vector3 = UnityEngine.Vector3;

namespace Assets.Scripts.Agent.Sensors.IMUSensor
{
    public class IMUSensorDevice : ISensorWithSettings<IMUSensorDeviceView>, IDisposable
    {
        public IMUSensorDeviceView Settings { get; }

        public Sensor Sensor { get; }

        private readonly IBridgeProvider _bridgeProvider;

        private readonly ITargetEnvironmentProvider _targetEnvironmentProvider;

        private Vector3 _currGlobalVelocity;
        private Vector3 _lastGlobalVelocity;

        private MessageWriter<Ros.Apollo.Imu> _writerImu;
        private MessageWriter<Ros.CorrectedImu> _correctedImuWriter;

        private float _prevTime;
        private bool _firstUpdate = true;
        private uint _seqId = 0;

        public IMUSensorDevice(
            Sensor sensor,
            IBridgeProvider bridgeProvider,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            IMUSensorDeviceView view)
        {
            Sensor = sensor;

            _bridgeProvider = bridgeProvider;
            _targetEnvironmentProvider = targetEnvironmentProvider;

            Settings = view;

            Sensor.Publish += SensorPublish;
            _bridgeProvider.Bridge.OnConnected += BridgeOnConnected;
        }

        private void BridgeOnConnected()
        {
            switch (_targetEnvironmentProvider.TargetEnvironment)
            {
                case TargetEnvironment.ROS:
                {
                    _writerImu?.Dispose();
                    _correctedImuWriter?.Dispose();

                    _writerImu = new MessageWriter<Ros.Apollo.Imu>(Sensor, 
                        _bridgeProvider.Bridge.AddWriter<Ros.Apollo.Imu>(Settings.ImuTopic), (msg, timestamp) =>
                    {
                        msg.header = new Ros.ApolloHeader()
                        {
                            timestamp_sec = timestamp
                        };
                    });

                    _correctedImuWriter = new MessageWriter<Ros.CorrectedImu>(Sensor, 
                        _bridgeProvider.Bridge.AddWriter<Ros.CorrectedImu>(Settings.ImuTopic), (msg, timestamp) => 
                    {
                        msg.header = new Ros.ApolloHeader()
                        {
                            timestamp_sec = timestamp
                        };
                    });
                }
                break;
            }
        }

        private void SensorPublish(object sender, EventArgs e)
        {
            if (_bridgeProvider.Bridge == null || _bridgeProvider.Bridge.Status != Comm.BridgeStatus.Connected || !Sensor.IsActive.Value)
            {
                return;
            }

            var currTime = Time.fixedTime;

            var globalAcceleration = (_currGlobalVelocity - _lastGlobalVelocity) / (currTime - _prevTime);
            var localAcceleration = Sensor.Settings.Transform.InverseTransformDirection(globalAcceleration);
            var currVelocity = Sensor.Settings.Transform.InverseTransformDirection(_currGlobalVelocity);

            var globalAngularVelocity = Vector3.zero; // Settings.mainRigidbody.angularVelocity;
            var angularVelocity = Sensor.Settings.Transform.InverseTransformDirection(globalAngularVelocity);

            var orientation = Settings.Transform.rotation;
            float roll = -orientation.z;
            float pitch = -orientation.x;
            float yaw = -orientation.y;

            var globalGravity = Physics.gravity;
            var localGravity = Sensor.Settings.Transform.InverseTransformDirection(globalGravity);
            localAcceleration -= localGravity;
            
            if (!_firstUpdate)
            {
                switch (_targetEnvironmentProvider.TargetEnvironment)
                {
                    case TargetEnvironment.ROS:
                    {
                        // Convert from Unity coordinate system to ROS
                        // Unity: left handed, forward: Z, right: X, up: Y
                        // ROS (EKF): right handed, forward: X, right: Y, down: Z
                        var linearAcceleration = new Ros.Point3D()
                        {
                            x = localAcceleration.z,
                            y = localAcceleration.x,
                            z = -localAcceleration.y,
                        };

                        // Conversion similar to linear accelerations, but invert sign,
                        // because rotation is changed from left-handed to right-handed
                        var angularVel = new Ros.Point3D()
                        {
                            x = -angularVelocity.z,
                            y = -angularVelocity.x,
                            z = angularVelocity.y,
                        };

                        var imuMsg = new Ros.Apollo.Imu()
                        {
                            header = new Ros.ApolloHeader()
                            {
                                timestamp_sec = Sensor.PublishingEventProvider.Timestamp, 
                                sequence_num = _seqId++,
                            },

                            measurement_time = Sensor.PublishingEventProvider.Timestamp,
                            measurement_span = 1 / Sensor.Settings.PublishRate,

                            linear_acceleration = linearAcceleration,
                            angular_velocity = angularVel
                        };

                        var correctedImuMsg = new Ros.CorrectedImu()
                        {
                            header = new Ros.ApolloHeader()
                            {
                                timestamp_sec = Sensor.PublishingEventProvider.Timestamp, 
                                sequence_num = _seqId++,
                            },

                            imu = new Ros.ApolloPose()
                            {
                                linear_acceleration = linearAcceleration,
                                angular_velocity = angularVel,
                                
                                heading = yaw,
                                euler_angles = new Ros.Point3D()
                                {
                                    x = roll * Mathf.Deg2Rad,
                                    y = pitch * Mathf.Deg2Rad,
                                    z = yaw * Mathf.Deg2Rad
                                }
                            }
                        };

                        _writerImu.Publish(imuMsg, Sensor.PublishingEventProvider.Timestamp);
                        _correctedImuWriter?.Publish(correctedImuMsg, Sensor.PublishingEventProvider.Timestamp);
                    }
                    break;
                }
            }

            _lastGlobalVelocity = _currGlobalVelocity;
            _prevTime = currTime;
            _firstUpdate = false;        
        }

        private Vector3 EulerZXY(float qw, float qx, float qy, float qz)
        {
            var result = Vector3.zero;
            var roll_ = Mathf.Atan2(2.0f * (qw * qy - qx * qz), 2.0f * (qw * qw + qz * qz) - 1.0f);
            var pitch_ = Mathf.Asin(2.0f * (qw * qx + qy * qz));
            var yaw_ = Mathf.Atan2(2.0f * (qw * qz - qx * qy), 2.0f * (qw * qw + qy * qy) - 1.0f);
            result.Set(pitch_ * Mathf.Rad2Deg, roll_ * Mathf.Rad2Deg, yaw_ * Mathf.Rad2Deg);
            return result;
        }

        public void Dispose()
        {
            _writerImu?.Dispose();
            _correctedImuWriter?.Dispose();
            Sensor.Publish -= SensorPublish;
            _bridgeProvider.Bridge.OnConnected -= BridgeOnConnected;
        }
    }
}
