using Assets.Scripts.BridgeManagement;
using Assets.Scripts.Mapping;
using Assets.Scripts.TargetEnvironmentSelection;
using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.AltimeterSensor
{
    public class AltimeterSensorDevice : ISensorWithSettings<AltimeterSensorDeviceView>, IDisposable
    {
        public AltimeterSensorDeviceView Settings { get; }

        public Sensor Sensor { get; }

        private readonly IBridgeProvider _bridgeProvider;

        private readonly ITargetEnvironmentProvider _targetEnvironmentProvider;

        private RaycastHit _groundCheckInfo = new();
        private LayerMask  _groundHitBitmask = new();

        private MessageWriter<Ros.Range> _writer;

        private uint _seqId = 0;
        private float _altitude = 0f;

        public AltimeterSensorDevice(
        Sensor sensor,
        IBridgeProvider bridgeProvider,
        ITargetEnvironmentProvider targetEnvironmentProvider,
        AltimeterSensorDeviceView view)
        {
            Sensor = sensor;

            Settings = view;
            _bridgeProvider = bridgeProvider;
            _targetEnvironmentProvider = targetEnvironmentProvider;
            _groundHitBitmask = Settings.GroundHitBitmask;

            Sensor.Publish += SensorPublish;
            _bridgeProvider.Bridge.OnConnected += BridgeOnConnected;
        }

        private void BridgeOnConnected()
        {
            switch (_targetEnvironmentProvider.TargetEnvironment)
            {
                case TargetEnvironment.ROS:
                    {
                        _writer?.Dispose();
                        _writer = new MessageWriter<Ros.Range>(Sensor, 
                            _bridgeProvider.Bridge.AddWriter<Ros.Range>(Settings.TopicName), (msg, timestamp) =>
                        {
                            msg.header.stamp = Ros.Time.Now();
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

            CalculateAltitude();

            var rangeMsg = new Ros.Range()
            {
                header = new Ros.Header()
                {
                    stamp = Ros.Time.Now(),
                    seq = _seqId++,
                    frame_id = Settings.FrameId,
                },
                field_of_view = 4f * Mathf.PI / 180f,
                radiation_type = (uint)Ros.Range.RadiationType.INFRARED,
                min_range = 0.1f,
                max_range = 100f,
                range = _altitude,
            };

            _writer?.Publish(rangeMsg, Sensor.PublishingEventProvider.Timestamp);

        }

        private void CalculateAltitude()
        {
            if (Physics.Raycast(Settings.Transform.position, Vector3.down, out _groundCheckInfo, _groundHitBitmask))
            {
                if (_groundCheckInfo.collider != null)
                {
                    _altitude = _groundCheckInfo.distance;
                }
            }
        }

        public void Dispose()
        {
            Sensor.Publish -= SensorPublish;
            _bridgeProvider.Bridge.OnConnected -= BridgeOnConnected;
        }
    }
}