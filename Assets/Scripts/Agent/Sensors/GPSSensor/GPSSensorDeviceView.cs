using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.Injection.Views;
using Assets.Scripts.UI;
using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.GPSSensor
{
    public class GPSSensorDeviceView : MonoBehaviour, ISensorSettings, IStartableView, IUpdatableView, IConfigurableEntity<GpsSensorConfiguration>
    {
        public GpsSensorConfiguration Configuration
        {
            get => new GpsSensorConfiguration
            {
                Name = Name,
                LocalPosition = LocalPosition,
                LocalRotation = LocalRotation,
                FrameId = FrameId,
                TopicName = TopicName,
                GpsOdomTopicName = GPSOdometryTopic,
                Frequency = PublishRate,
            };
            set
            {
                LocalPosition = value.LocalPosition;
                LocalRotation = value.LocalRotation;
                FrameId = value.FrameId;
                TopicName = value.TopicName;
                PublishRate = value.Frequency;
                GPSOdometryTopic = value.GpsOdomTopicName;
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

        public string Name
        {
            get => _name;
            set => _name = value;
        }

        public GameObject Agent
        {
            get => _agent;
            set => _agent = value;
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
            get => _topic;
            set => _topic = value;
        }

        [Editable]
        public string GPSOdometryTopic
        {
            get => _gpsOdometryTopic;
            set => _gpsOdometryTopic = value;
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
        public float Accuracy { get; set; }

        [Editable]
        public double Height { get; set; }

        [Editable]
        public double Latitude { get; set; }

        [Editable]
        public double Longitude { get; set; }

        [Editable]
        public double UTMMeridianConvergenceAngle { get; set; }

        [Editable]
        public double MeasurementTime { get; set; }

        public event EventHandler OnStart;

        public event EventHandler OnUpdate;

        public event EventHandler<float> PublishRateChange;

        [SerializeField] private string _name;
        [SerializeField] private string _frameId;
        [SerializeField] private Rigidbody _mainRigidbody;
        [SerializeField] private GameObject _target;
        [SerializeField] private GameObject _agent;
        [SerializeField] private string _topic;
        [SerializeField] private string _gpsOdometryTopic;
        [SerializeField] private float _publishRate; 

        private void Start()
        {
            OnStart?.Invoke(this, EventArgs.Empty);
        }

        private void Update()
        {
            OnUpdate?.Invoke(this, EventArgs.Empty);
        }
    }
}
