using System;
using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.UI;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.VideoSensor
{
    public class VideoSensorDeviceView : MonoBehaviour, ISensorSettings, IConfigurableEntity<VideoSensorConfiguration>
    {
        public VideoSensorConfiguration Configuration
        {
            get => new VideoSensorConfiguration
            {
                Name = Name,
                LocalPosition = LocalPosition,
                LocalRotation = LocalRotation,
                TopicName = TopicName,
                JpegQuality = JpegQuality,
                FocalLength = _camera.focalLength,
                SensorSizeX = _camera.sensorSize.x,
                SensorSizeY = _camera.sensorSize.y,
                LensShiftX = _camera.lensShift.x,
                LensShiftY = _camera.lensShift.y,
                FrameWidth = Width,
                FrameHeight = Height,
                Frequency = PublishRate
            };
            set
            {
                LocalPosition = value.LocalPosition;
                LocalRotation = value.LocalRotation;
                JpegQuality = value.JpegQuality;
                TopicName = value.TopicName;
                _camera.focalLength = value.FocalLength;
                _camera.sensorSize = new Vector2(value.SensorSizeX, value.SensorSizeY);
                _camera.lensShift = new Vector2(value.LensShiftX, value.LensShiftY);
                Width = value.FrameWidth;
                Height = value.FrameHeight;
                PublishRate = value.Frequency;
            }
        }

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
        public float FocalLength
        {
            get => Camera.focalLength;
            set => Camera.focalLength = value;
        }

        [Editable]
        public float SensorWidth
        {
            get => Camera.sensorSize.x;
            set => Camera.sensorSize = new Vector2(value, Camera.sensorSize.y);
        }

        [Editable]
        public float SensorHeight
        {
            get => Camera.sensorSize.y;
            set => Camera.sensorSize = new Vector2(Camera.sensorSize.x, value);
        }

        [Editable]
        public float LensShiftX
        {
            get => Camera.lensShift.x;
            set => Camera.lensShift = new Vector2(value, Camera.lensShift.y);
        }

        [Editable]
        public float LensShiftY
        {
            get => Camera.lensShift.y;
            set => Camera.lensShift = new Vector2(Camera.lensShift.x, value);
        }

        [Editable]
        public string TopicName
        {
            get => _topicName;
            set => _topicName = value;
        }

        public string Name => _sensorName;

        public CaptureType CameraCaptureType
        {
            get => _cameraCaptureType;
            set => _cameraCaptureType = value;
        }

        public FormatType CameraEncodingFormat
        {
            get => _encodingFormat;
            set => _encodingFormat = value;
        }

        [Editable]
        public float PublishRate
        {
            get => _publishRate;
            set
            {
                _publishRate = value;
                PublishRateChange?.Invoke(this, value);
            }
        }

        [Editable]
        public int JpegQuality
        {
            get => _jpegQuality;
            set => _jpegQuality = value;
        }

        [Editable]
        public bool Manual
        {
            get => _manual;
            set => _manual = value;
        }

        [Editable]
        public int Width
        {
            get => _width;
            set
            {
                _width = value;
                OnChange?.Invoke(this, EventArgs.Empty);
            }
        }

        [Editable]
        public int Height
        {
            get => _height;
            set
            {
                _height = value;
                OnChange?.Invoke(this, EventArgs.Empty);
            }
        }

        public Camera Camera => _camera;

        public FormatType FormatType => _encodingFormat;

        public event EventHandler OnStart;

        public event EventHandler OnFixedUpdate;

        public event EventHandler OnDestroyView;

        public event EventHandler OnChange;
        public event EventHandler<float> PublishRateChange;

        [SerializeField]
        private string _topicName;

        [SerializeField]
        private string _sensorName;

        [SerializeField]
        private CaptureType _cameraCaptureType;

        [SerializeField]
        private float _publishRate;

        [SerializeField]
        [Range(1, 100)]
        private int _jpegQuality;

        [SerializeField]
        private bool _manual;

        [SerializeField]
        private Camera _camera;

        [SerializeField]
        private int _width;

        [SerializeField]
        private int _height;

        [SerializeField]
        private FormatType _encodingFormat;

        private void Start()
        {
            OnStart?.Invoke(this, EventArgs.Empty);
        }

        private void FixedUpdate()
        {
            OnFixedUpdate?.Invoke(this, EventArgs.Empty);
        }

        private void OnDestroy()
        {
            OnDestroyView?.Invoke(this, EventArgs.Empty);
        }
    }
}
