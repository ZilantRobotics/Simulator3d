using Assets.Scripts.Api.Commands;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.Mapping;
using Assets.Scripts.TargetEnvironmentSelection;
using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.GPSSensor
{
    public class GPSSensorDevice : ISensorWithSettings<GPSSensorDeviceView>, IDisposable
    {
        public GPSSensorDeviceView Settings { get; }

        public Sensor Sensor { get; }

        private readonly IBridgeProvider _bridgeProvider;

        private readonly ITargetEnvironmentProvider _targetEnvironmentProvider;

        private readonly MapOrigin _mapOrigin;

        private double _easting;

        private double _northing;

        private uint _seqId = 0;

        private MessageWriter<Ros.NavSatFix> _gnssNavPvtWriter;
        private MessageWriter<Ros.Odometry> _odometryWriter;

        public GPSSensorDevice(
            Sensor sensor,
            IBridgeProvider bridgeProvider,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            GPSSensorDeviceView view,
            MapOrigin mapOrigin)
        {
            Sensor = sensor;

            Settings = view;
            _bridgeProvider = bridgeProvider;
            _targetEnvironmentProvider = targetEnvironmentProvider;

            if (Settings.Agent == null)
                Settings.Agent = Settings.Transform.root.gameObject;

            _mapOrigin = mapOrigin;

            Sensor.Publish += SensorPublish;
            _bridgeProvider.Bridge.OnConnected += BridgeOnConnected;
        }

        private void BridgeOnConnected()
        {
            switch (_targetEnvironmentProvider.TargetEnvironment)
            {
                case TargetEnvironment.ROS:
                {
                    _gnssNavPvtWriter?.Dispose();
                    _odometryWriter?.Dispose();

                    _gnssNavPvtWriter = new MessageWriter<Ros.NavSatFix>(Sensor, 
                        _bridgeProvider.Bridge.AddWriter<Ros.NavSatFix>(Settings.TopicName), (msg, timestamp) =>
                    {
                        msg.header.stamp = Ros.Time.Now();
                    });

                    _odometryWriter = new MessageWriter<Ros.Odometry>(Sensor, 
                        _bridgeProvider.Bridge.AddWriter<Ros.Odometry>(Settings.GPSOdometryTopic), (msg, timestamp) =>
                    {
                        msg.header.stamp = Ros.Time.Now();
                    });
                }
                break;
            }
        }

        private void UpdateValues()
        {
            var pos = Settings.Transform.position;

            _mapOrigin.GetNorthingEasting(pos, out _northing, out _easting);

            _mapOrigin.GetLatitudeLongitude(_northing, _easting, out double lat, out double lon);
            Settings.Latitude = lat;
            Settings.Longitude = lon;
            _mapOrigin.GetUTMMeridianConvergence(lat * Mathf.Deg2Rad, lon * Mathf.Deg2Rad, out double UtmConvAngle);
            Settings.UTMMeridianConvergenceAngle = UtmConvAngle;
        }

        private void SensorPublish(object sender, EventArgs e)
        {
            if (_bridgeProvider.Bridge == null || _bridgeProvider.Bridge.Status != Comm.BridgeStatus.Connected || !Sensor.IsActive.Value)
            {
                return;
            }

            UpdateValues();

            switch (_targetEnvironmentProvider.TargetEnvironment)
            {
                case TargetEnvironment.ROS:
                {
                     
                    double altitude = Settings.Transform.position.y + _mapOrigin.AltitudeOffset; // above sea level
                    // ROS - GPS Best Pose
                    Settings.MeasurementTime = Sensor.PublishingEventProvider.Timestamp;
                    var orientation = Settings.Transform.rotation;
                    var unity2map = Quaternion.AngleAxis(_mapOrigin.Angle, Vector3.up);
                    // correct angle to true north
                    float TrueNorthAngle = (float)Settings.UTMMeridianConvergenceAngle;
                    var map2TN = Quaternion.AngleAxis(-TrueNorthAngle, Vector3.up);
                    var correctedOrientation = orientation * unity2map * map2TN;
                    var rosOrientation = Quaternion.identity;
                    rosOrientation.Set(-correctedOrientation.x, -correctedOrientation.z, -correctedOrientation.y, correctedOrientation.w);
                    var rosZXYeuler = EulerZXY(rosOrientation.w, rosOrientation.x, rosOrientation.y, rosOrientation.z);

                    //var worldVelocity = Settings.MainRigidbody.GetPointVelocity(Sensor.Settings.Transform.TransformPoint(Sensor.Settings.Transform.localPosition));

                    var navPvtMsg = new Ros.NavSatFix()
                    {
                        header = new Ros.Header()
                        {
                            stamp = Ros.Time.Now(),
                            seq = _seqId++,
                            frame_id = "gps"
                        },

                        latitude = Settings.Latitude,
                        longitude = Settings.Longitude,
                        altitude = altitude,
                        position_covariance = new double[9] { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                        position_covariance_type = 3,
                        status = new Ros.NavSatStatus()
                        {
                            service = 1,
                            status = 0
                        }
                    };

                    _gnssNavPvtWriter?.Publish(navPvtMsg, Sensor.PublishingEventProvider.Timestamp);

                    var odometryMessage = new Ros.Odometry()
                    {
                        header = new Ros.Header()
                        {
                            stamp = Ros.Time.Now(),
                            seq = _seqId++,
                            frame_id = "odometry",
                        },

                        child_frame_id = "base_link",
                        pose = new Ros.PoseWithCovariance()
                        {
                            pose = new Ros.Pose()
                            {
                                position = new Ros.Point()
                                {
                                    x = _easting + 500000,
                                    y = _northing,
                                    z = altitude,
                                },
                                orientation = new Ros.Quaternion()
                                {
                                    x = rosOrientation.x,
                                    y = rosOrientation.y,
                                    z = rosOrientation.z,
                                    w = rosOrientation.w,
                                }
                            }
                        },
                        twist = new Ros.TwistWithCovariance()
                        {
                            twist = new Ros.Twist()
                            {
                                linear = new Ros.Vector3()
                                {
                                    x = 0,  // mainRigidbody.velocity.X,
                                    y = 0,  // mainRigidbody.velocity.Z,
                                    z = 0,
                                },
                                angular = new Ros.Vector3()
                                {
                                    x = 0,
                                    y = 0,
                                    z = 0,//mainRigidbody.angularVelocity.y,
                                }
                            },
                        }
                    };
                    _odometryWriter?.Publish(odometryMessage, Sensor.PublishingEventProvider.Timestamp);

                    break;
                }
            }
        }

        public GpsData GetData()
        {
            UpdateValues();

            var data = new GpsData
            {
                Latitude = Settings.Latitude,
                Longitude = Settings.Longitude,
                Easting = _easting + 500000,
                Northing = _northing,
                Altitude = Settings.Transform.position.y + _mapOrigin.AltitudeOffset,
                Orientation = -Settings.Transform.rotation.eulerAngles.y - _mapOrigin.Angle
            };

            return data;
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
            Sensor.Publish -= SensorPublish;
            _bridgeProvider.Bridge.OnConnected -= BridgeOnConnected;
        }
    }
}
