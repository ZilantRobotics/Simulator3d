using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.Injection.Views;
using Assets.Scripts.UI;
using System;
using UnityEngine;


namespace Assets.Scripts.Agent.Sensors.AltimeterSensor
{
    public class AltimeterSensorDeviceView : MonoBehaviour, ISensorSettings, IStartableView, IUpdatableView, IConfigurableEntity<AltimeterSensorConfiguration>
    {
        public AltimeterSensorConfiguration Configuration
        {
            get => new AltimeterSensorConfiguration
            {
                Name = Name,
                LocalPosition = LocalPosition,
                LocalRotation = LocalRotation,
                FrameId = FrameId,
                TopicName = TopicName,
                Frequency = PublishRate,
            };
            set
            {
                LocalPosition = value.LocalPosition;
                LocalRotation = value.LocalRotation;
                FrameId = value.FrameId;
                TopicName = value.TopicName;
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

        public string Name
        {
            get => _name;
            set => _name = value;
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
        public float PublishRate
        {
            get => _publishRate;
            set
            {
                _publishRate = value;
                PublishRateChange?.Invoke(this, value);
            }
        }

        public LayerMask GroundHitBitmask
        {
            get => _groundHitBitmask;
            set => _groundHitBitmask = value;
        }    

        public event EventHandler OnStart;

        public event EventHandler OnUpdate;

        public event EventHandler<float> PublishRateChange;

        [SerializeField] private string _name;
        [SerializeField] private string _frameId;
        [SerializeField] private string _topic;
        [SerializeField] private float _publishRate;
        [SerializeField] private LayerMask _groundHitBitmask;

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