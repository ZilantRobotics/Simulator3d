using System;
using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.Injection.Views;
using Assets.Scripts.UI;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.IMUSensor
{
    public class IMUSensorDeviceView : MonoBehaviour, 
        ISensorSettings,
        IStartableView, 
        IUpdatableView, 
        IFixedUpdatableView, 
        IDestroyableView,
        IConfigurableEntity<ImuSensorConfiguration>
    {

        public string Name => _name;

        public Transform Transform => transform;

        public ImuSensorConfiguration Configuration
        {
            get =>
                new ImuSensorConfiguration
                {
                    Name = Name,
                    LocalPosition = LocalPosition,
                    LocalRotation = LocalRotation,
                    TopicName = ImuTopic,
                    CorrectedImuTopic = CorrectedImuTopic,
                    FrameId = FrameId,
                    Frequency = PublishRate,
                };
            set
            {
                LocalPosition = value.LocalPosition;
                LocalRotation = value.LocalRotation;
                ImuTopic = value.TopicName;
                CorrectedImuTopic = value.CorrectedImuTopic;
                FrameId = value.FrameId;
                PublishRate = value.Frequency;
            }
        }

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
        public string ImuTopic
        {
            get => _imuTopic;
            set => _imuTopic = value;
        }
        [Editable]
        public string CorrectedImuTopic
        {
            get => _correctedImuTopic;
            set => _correctedImuTopic = value;
        }
        [Editable]
        public string FrameId
        {
            get => _frameId;
            set => _frameId = value;
        }

        public GameObject Target
        {
            get => _target;
            set => _target = value;
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

        [SerializeField] private string _name;
        [SerializeField] private string _frameId;
        [SerializeField] private string _imuTopic;
        [SerializeField] private string _correctedImuTopic;
        [SerializeField] private GameObject _target;
        [SerializeField] private float _publishRate;

        public event EventHandler OnStart;
        public event EventHandler OnUpdate;
        public event EventHandler OnFixedUpdate;
        public event EventHandler OnDestroyView;
        public event EventHandler<float> PublishRateChange;

        private void Start()
        {
            OnStart?.Invoke(this, EventArgs.Empty);
        }

        private void Update()
        {
            OnUpdate?.Invoke(this, EventArgs.Empty);
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
