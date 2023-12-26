using System;
using Unity.VisualScripting;
using UnityEngine;

namespace Assets.Scripts.Agent.Controllers.BehaviorController
{
    public class BehaviorControllerView : MonoBehaviour
    {
        [Header("Functional")]
        [SerializeField] private string _attitudeTopic = "/sim/attitude";
        [SerializeField] private string _gpsPositionTopic = "/sim/gps_position";
        [SerializeField] private string _gimbalAngleTopic = "/sim/gimbal_angle";
        [SerializeField] private string _actuatorsTopic = "/sim/actuators";

        [Tooltip("Movable sensor platform for some types of drones. Ex: lidar or camera.")]
        [SerializeField] private GameObject _movableHolder;


        /// <summary>
        /// Abbreviations
        /// FR - front right, FL - front left, RR - rear right, RL - rear left
        /// MB - motion blur (object that representing blur visuals while engine/actuator is active)
        /// SB - side or bottom (required for octo UAVs, object that representing side or bottom actuator)
        /// </summary>
        [Space]
        [Header("Actuator Visuals")]
        [Tooltip("Required only by Vtol UAVs.")]
        [SerializeField] private GameObject _mainEnginePropeller;
        [Tooltip("Required only by Vtol UAVs. Main engine motion blur. Only visible when the engine is running.")]
        [SerializeField] private GameObject _mainEngineMB;
        [Tooltip("Required only by Vtol UAVs.")]
        [SerializeField] private GameObject _aileronLeft, _aileronRight, _elevator, _rudder, _rudderExtra;

        [Tooltip("Required only by all quadrotor UAVs.")]
        [SerializeField] private GameObject _actuatorFR, _actuatorFL, _actuatorRR, _actuatorRL;
        [Tooltip("Required only by all octorotor UAVs. Side or bottom actuators.")]
        [SerializeField] private GameObject _actuatorFRSB, _actuatorFLSB, _actuatorRRSB, _actuatorRLSB;

        [Tooltip("Required only by all quadrotor UAVs. Only visible when the actuator is running.")]
        [SerializeField] private GameObject _actuatorMBFR, _actuatorMBFL, _actuatorMBRR, _actuatorMBRL;
        [Tooltip("Required only by all octorotor UAVs. Side or bottom motion blur. Only visible when the actuator is running.")]
        [SerializeField] private GameObject _actuatorMBFRSB, _actuatorMBFLSB, _actuatorMBRRSB, _actuatorMBRLSB;

        [Space]
        [Header("Cargo Visuals")]
        [SerializeField] private GameObject _mainCargoObject;

        public event EventHandler OnUpdate;
        public event EventHandler<Collision> OnCollision;
        public event EventHandler<Collider> OnTrigger;

        public Transform Transform => transform;

        public string AttitudeTopicName
        {
            get => _attitudeTopic;
            set => _attitudeTopic = value;
        }

        public string GpsPositionTopicName
        {
            get => _gpsPositionTopic;
            set => _gpsPositionTopic = value;
        }

        public string GimbalAngleTopicName
        {
            get => _gimbalAngleTopic;
            set => _gimbalAngleTopic = value;
        }

        public string ActuatorsTopicName
        {
            get => _actuatorsTopic;
            set => _actuatorsTopic = value;
        }

        public GameObject MovableHolder
        {
            get => _movableHolder;
            set => _movableHolder = value;
        }

        public GameObject MainEnginePropeller
        {
            get => _mainEnginePropeller;
            set => _mainEnginePropeller = value;
        }

        public GameObject MainEngineMB
        {
            get => _mainEngineMB;
            set => _mainEngineMB = value;
        }

        public GameObject AileronLeft
        {
            get => _aileronLeft;
            set => _aileronLeft = value;
        }

        public GameObject AileronRight
        {
            get => _aileronRight;
            set => _aileronRight = value;
        }

        public GameObject Elevator
        {
            get => _elevator;
            set => _elevator = value;
        }

        public GameObject Rudder
        {
            get => _rudder;
            set => _rudder = value;
        }

        public GameObject RudderExtra
        {
            get => _rudderExtra;
            set => _rudderExtra = value;
        }

        public GameObject ActuatorFR
        {
            get => _actuatorFR;
            set => _actuatorFR = value;
        }

        public GameObject ActuatorFL
        {
            get => _actuatorFL;
            set => _actuatorFL = value;
        }

        public GameObject ActuatorRR
        {
            get => _actuatorRR;
            set => _actuatorRR = value;
        }

        public GameObject ActuatorRL
        {
            get => _actuatorRL;
            set => _actuatorRL = value;
        }

        public GameObject ActuatorFRSB
        {
            get => _actuatorFRSB;
            set => _actuatorFRSB = value;
        }

        public GameObject ActuatorFLSB
        {
            get => _actuatorFLSB;
            set => _actuatorFLSB = value;
        }

        public GameObject ActuatorRRSB
        {
            get => _actuatorRRSB;
            set => _actuatorRRSB = value;
        }

        public GameObject ActuatorRLSB
        {
            get => _actuatorRLSB;
            set => _actuatorRLSB = value;
        }

        public GameObject ActuatorMBFR
        {
            get => _actuatorMBFR;
            set => _actuatorMBFR = value;
        }

        public GameObject ActuatorMBFL
        {
            get => _actuatorMBFL;
            set => _actuatorMBFL = value;
        }

        public GameObject ActuatorMBRR
        {
            get => _actuatorMBRR;
            set => _actuatorMBRR = value;
        }

        public GameObject ActuatorMBRL
        {
            get => _actuatorMBRL;
            set => _actuatorMBRL = value;
        }

        public GameObject ActuatorMBFRSB
        {
            get => _actuatorMBFRSB;
            set => _actuatorMBFRSB = value;
        }

        public GameObject ActuatorMBFLSB
        {
            get => _actuatorMBFLSB;
            set => _actuatorMBFLSB = value;
        }

        public GameObject ActuatorMBRRSB
        {
            get => _actuatorMBRRSB;
            set => _actuatorMBRRSB = value;
        }

        public GameObject ActuatorMBRLSB
        {
            get => _actuatorMBRLSB;
            set => _actuatorMBRLSB = value;
        }

        public GameObject Cargo
        {
            get => _mainCargoObject;
            set => _mainCargoObject = value;
        }

        private void Update()
        {
            OnUpdate?.Invoke(this, EventArgs.Empty);
        }

        private void OnCollisionEnter(Collision collision) 
        {
            OnCollision?.Invoke(this, collision);
        }

        private void OnTriggerEnter(Collider collider)
        {
            OnTrigger?.Invoke(this, collider);
        }
    }
}