using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.UI;
using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.LidarSensor
{
    public class LidarSensorDeviceView : MonoBehaviour, ISensorSettings, IConfigurableEntity<LidarSensorConfiguration>
    {
        [SerializeField] private string _name;
        [SerializeField] private string _frameId;
        [SerializeField] private float _publishRate;
        [SerializeField] private int _width;
        [SerializeField] private int _height;
        [SerializeField] private float _distanceNoiseFrequency;
        [SerializeField] private float _distanceNoiseAmplitude;
        [SerializeField] private float _intensityNoiseFrequency;
        [SerializeField] private float _intensityNoiseAmplitude;
        [SerializeField] private Camera _camera;
        [SerializeField] private Material _pointCloudMaterial;
        [SerializeField] private Color _pointColor;
        [SerializeField] private string _topicName;
        [SerializeField] private bool _compensated;
        [SerializeField] private int _segmentsCount;
        [SerializeField] private Vector2 _fieldOfView;

        public LidarSensorConfiguration Configuration
        {
            get => new LidarSensorConfiguration
            {
                LocalPosition = LocalPosition,
                LocalRotation = LocalRotation,
                TopicName = TopicName,
                FrameId = FrameId,
                Fov = FieldOfView.x,
                MaxDistance = MaxDistance,
                MinDistance = MinDistance,
                Name = Name,
                Frequency = PublishRate
            };
            set
            {
                LocalPosition = value.LocalPosition;
                LocalRotation = value.LocalRotation;
                TopicName = value.TopicName;
                FrameId = value.FrameId;
                FieldOfView = new Vector2(value.Fov, FieldOfView.y);
                MaxDistance = value.MaxDistance;
                MinDistance = value.MinDistance;
                PublishRate = value.Frequency;
            }
        }

        public string Name => _name;
        public Transform Transform => transform;
        
        [Editable]
        public Vector3 LocalPosition
        {
            get => transform.localPosition;
            set => transform.localPosition = value;
        }

        [Editable]
        public Quaternion LocalRotation
        {
            get => transform.localRotation;
            set => transform.localRotation = value;
        }

        [Editable]
        public float PublishRate
        {
            get => _publishRate;
            set
            {
                _publishRate = value;
                PublishRateChange?.Invoke(this, _publishRate);
            }
        }

        [Editable]
        public int Width
        {
            get => _width;
            set
            {
                _width = value;
                WidthChanged?.Invoke(this, EventArgs.Empty);
            }
        }

        public event EventHandler WidthChanged;

        [Editable]
        public int Height
        {
            get => _height;
            set
            {
                _height = value;
                HeightChanged?.Invoke(this, EventArgs.Empty);
            }
        }

        public event EventHandler HeightChanged;

        [Editable]
        public Vector2 FieldOfView
        {
            get => _fieldOfView;
            set => _fieldOfView = value;
        }

        [Editable]
        public float MinDistance
        {
            get => Camera.nearClipPlane;
            set => Camera.nearClipPlane = value;
        }

        [Editable]
        public float MaxDistance
        {
            get => Camera.farClipPlane;
            set => Camera.farClipPlane = value;
        }

        public float DistanceNoiseFrequency
        {
            get => _distanceNoiseFrequency;
            set => _distanceNoiseFrequency = value;
        }

        public float DistanceNoiseAmplitude
        {
            get => _distanceNoiseAmplitude;
            set => _distanceNoiseAmplitude = value;
        }

        public float IntensityNoiseFrequency
        {
            get => _intensityNoiseFrequency;
            set => _intensityNoiseFrequency = value;
        }

        public float IntensityNoiseAmplitude
        {
            get => _intensityNoiseAmplitude;
            set => _intensityNoiseFrequency = value;
        }

        public Camera Camera
        {
            get => _camera;
            set => _camera = value;
        }

        [Editable]
        public int SegmentsCount
        {
            get => _segmentsCount;
            set
            {
                _segmentsCount = value;
                SegmentsCountChanged?.Invoke(this, EventArgs.Empty);
            }
        }

        [Editable]
        public event EventHandler SegmentsCountChanged;

        public Material PointCloudMaterial
        {
            get => _pointCloudMaterial;
            set => _pointCloudMaterial = value;
        }

        public Color PointColor
        {
            get => _pointColor;
            set => _pointColor = value;
        }

        [Editable]
        public string FrameId
        {
            get => _frameId;
            set => _frameId = value;
        }

        [Editable]
        public string TopicName
        {
            get => _topicName;
            set => _topicName = value;
        }

        [Editable]
        public bool Compensated
        {
            get => _compensated;
            set => _compensated = value;
        }

        public event EventHandler OnRenderObjectEvent;
        public event EventHandler<float> PublishRateChange;

        private void OnRenderObject()
        {
            OnRenderObjectEvent?.Invoke(this, EventArgs.Empty);
        }
    }
}
