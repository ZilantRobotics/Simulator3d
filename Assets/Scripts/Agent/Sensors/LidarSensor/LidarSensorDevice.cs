using Assets.Scripts.Agent.Sensors.LidarSensor.PointCloudRetrievers;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.TargetEnvironmentSelection;
using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.LidarSensor
{
    public class LidarSensorDevice : ISensorWithSettings<LidarSensorDeviceView>, IDisposable
    {
        public LidarSensorDeviceView Settings { get; }

        public Sensor Sensor { get; }

        private PointCloudRetriever _pointCloudRetriever;
        private RenderTextureCombiner _combiner;

        private readonly ComputeShader _computeShader;
        private readonly ITargetEnvironmentProvider _targetEnvironmentProvider;
        private readonly IBridgeProvider _bridgeProvider;
        private readonly ISensorEffectProvider _sensorEffectProvider;

        private readonly int _pointCloudLayerMask;

        private MessageWriter<Ros.PointCloud2> _writer;

        private uint _seqId = 0;

        private byte[] _resultPoints;

        public LidarSensorDevice(
            Sensor sensor,
            LidarSensorDeviceView view,
            ComputeShader computeShader,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            IBridgeProvider bridgeProvider,
            ISensorEffectProvider sensorEffectProvider)
        {
            Sensor = sensor;
            Settings = view;

            _computeShader = computeShader;
            _targetEnvironmentProvider = targetEnvironmentProvider;
            _bridgeProvider = bridgeProvider;
            _sensorEffectProvider = sensorEffectProvider;
            _pointCloudLayerMask = 1 << LayerMask.NameToLayer("Sensor Effects");

            InitializeRendererAndRetriever(this, EventArgs.Empty);

            Settings.OnRenderObjectEvent += OnRenderObject;
            _bridgeProvider.Bridge.OnConnected += BridgeOnConnected;

            _resultPoints = new byte[Settings.Width * Settings.Height * 32];

            Render();

            Settings.WidthChanged += InitializeRendererAndRetriever;
            Settings.HeightChanged += InitializeRendererAndRetriever;
            Settings.SegmentsCountChanged += InitializeRendererAndRetriever;

            Sensor.Publish += SensorPublish;
        }

        private void SensorPublish(object sender, EventArgs e)
        {
            Render();
            UpdateMessage();
        }

        public void Dispose()
        {
            Sensor.Publish -= SensorPublish;

            Settings.WidthChanged -= InitializeRendererAndRetriever;
            Settings.HeightChanged -= InitializeRendererAndRetriever;
            Settings.SegmentsCountChanged -= InitializeRendererAndRetriever;

            _combiner?.Dispose();
            _pointCloudRetriever?.Dispose();
            _writer?.Dispose();
        }

        private void InitializeRendererAndRetriever(object sender, EventArgs args)
        {
            _combiner?.Dispose();
            _pointCloudRetriever?.Dispose();
            _combiner = new RenderTextureCombiner(Settings.Camera, Settings.Width, 
                Settings.Height, Settings.SegmentsCount, Settings.FieldOfView);
            _pointCloudRetriever = new PointCloudRetriever(Settings.Transform, _computeShader, _combiner);
        }

        private void BridgeOnConnected()
        {
            _writer?.Dispose();
            _writer = new MessageWriter<Ros.PointCloud2>(Sensor, 
                _bridgeProvider.Bridge.AddWriter<Ros.PointCloud2>(Settings.TopicName),
                (msg, timestamp) =>
                {
                    msg.header.stamp = Ros.Time.Now();
                });
        }

        private void Render()
        {
            _combiner.Render();
            _pointCloudRetriever.Retrieve();
        }

        private void UpdateMessage()
        {
            if (_bridgeProvider.Bridge == null || _bridgeProvider.Bridge.Status != Comm.BridgeStatus.Connected || !Sensor.IsActive.Value)
            {
                return;
            }

            var worldToLocal = new Matrix4x4(
                new Vector4(0, -1, 0, 0), 
                new Vector4(0, 0, 1, 0), 
                new Vector4(1, 0, 0, 0), 
                Vector4.zero);

            if (Settings.Compensated)
            {
                worldToLocal *= Settings.Transform.worldToLocalMatrix;
            }

            if (_targetEnvironmentProvider.TargetEnvironment == TargetEnvironment.ROS)
            {
                var msg = new Ros.PointCloud2
                {
                    header = new Ros.Header
                    {
                        seq = _seqId++,
                        frame_id = Settings.FrameId,
                    },
                    is_dense = true,
                    height = 1,
                    width = (uint)_pointCloudRetriever.PointCloud.Length,
                    fields = new Ros.PointField[] {
                        new Ros.PointField()
                        {
                            name = "x",
                            offset = 0,
                            datatype = 7,
                            count = 1,
                        },
                        new Ros.PointField()
                        {
                            name = "y",
                            offset = 4,
                            datatype = 7,
                            count = 1,
                        },
                        new Ros.PointField()
                        {
                            name = "z",
                            offset = 8,
                            datatype = 7,
                            count = 1,
                        },
                        new Ros.PointField()
                        {
                            name = "intensity",
                            offset = 16,
                            datatype = 2,
                            count = 1,
                        },
                        new Ros.PointField()
                        {
                            name = "timestamp",
                            offset = 24,
                            datatype = 8,
                            count = 1,
                        },
                    },
                    is_bigendian = false,
                    point_step = 32,
                    row_step = (uint)_pointCloudRetriever.PointCloud.Length * 32,
                };


                var points = _pointCloudRetriever.PointCloud;
                var pointsInSector = _pointCloudRetriever.PointCloud.Length / Settings.SegmentsCount;

                int offset = 0;

                for (int i = 0; i < Settings.SegmentsCount; i++)
                {
                    unsafe
                    {
                        fixed (byte* ptr = _resultPoints)
                        {                           
                            for (int n = pointsInSector * i; n < pointsInSector + (pointsInSector * i); n++)
                            {
                                if (points[n] == Vector4.zero)
                                {
                                    continue;
                                }

                                var intensity = points[n].w;
                                var pos = worldToLocal.MultiplyPoint3x4(points[n]);

                                *(Vector3*)(ptr + offset) = pos;
                                *(ptr + offset + 16) = (byte)(intensity * 255);

                                offset += 32;
                            }
                        }
                    }
                }

                msg.data = new Ros.PartialByteArray
                {
                    Base64 = Convert.ToBase64String(_resultPoints, 0, points.Length * 32),
                };

                Array.Clear(_resultPoints, 0, _resultPoints.Length);
                _writer?.Publish(msg, Sensor.PublishingEventProvider.Timestamp);
            }
        }

        public bool Save(string path)
        {
            throw new NotImplementedException();
        }

        private void OnRenderObject(object sender, EventArgs e)
        {
            if (!_sensorEffectProvider.IsSensorEffect ||
                (Camera.main.cullingMask & _pointCloudLayerMask) == 0)
                return;

            Settings.PointCloudMaterial.SetMatrix("_LidarToWorld", Matrix4x4.identity);
            Settings.PointCloudMaterial.SetBuffer("PointCloud", _pointCloudRetriever.PointCloudBuffer);
            Settings.PointCloudMaterial.SetColor("_Color", Settings.PointColor);
            Settings.PointCloudMaterial.SetPass(0);
            Graphics.DrawProceduralNow(MeshTopology.Points, _pointCloudRetriever.PointCloud.Length);
        }
    }
}
