using Assets.Scripts.Api;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.Mapping;
using Assets.Scripts.TargetEnvironmentSelection;
using Comm;
using System;
using Unity.VisualScripting;
using UnityEngine;

namespace Assets.Scripts.Agent.Controllers.BehaviorController
{
    public class BehaviorController : IDisposable
    {
        public BehaviorControllerView Settings { get; }

        private readonly ITargetEnvironmentProvider _targetEnvironmentProvider;
        private readonly IBridgeProvider _bridgeProvider;
        private readonly MapOrigin _mapOrigin;
        private readonly Bridge _bridge;

        private float firstAltitudeValue = 0f;
        private bool _firstMessage = true;
        private Quaternion _gimbalAngleQuat = Quaternion.identity;
        private Rigidbody _cargoRB;

        public BehaviorController(
            BehaviorControllerView view,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            IBridgeProvider bridgeProvider,
            MapOrigin mapOrigin)
        {
            Settings = view;
            _targetEnvironmentProvider = targetEnvironmentProvider;
            _bridgeProvider = bridgeProvider;
            _mapOrigin = mapOrigin;
            _bridge = _bridgeProvider.Bridge;

            if (Settings.Cargo)
            {
                _cargoRB = Settings.Cargo.GetComponent<Rigidbody>();
            }

            _bridgeProvider.Bridge.OnConnected += BridgeOnConnected;
            Settings.OnUpdate += (sender, args) => Update();
            Settings.OnCollision += (sender, args) => OnCollisionEnter(args.ConvertTo<Collision>());
            Settings.OnTrigger += (sender, args) => OnTriggerEnter(args.ConvertTo<Collider>());
        }

        private void BridgeOnConnected()
        {
            _bridge.AddReader<Ros.QuaternionStamped>(Settings.AttitudeTopicName, (Ros.QuaternionStamped msg) =>
            {
                Settings.Transform.rotation =
                new Quaternion(-(float)msg.quaternion.x,
                               -(float)msg.quaternion.z,
                               -(float)msg.quaternion.y,
                                (float)msg.quaternion.w);
                Settings.Transform.rotation *= Quaternion.Euler(0, 90f, 0);
            });

            _bridge.AddReader<Ros.NavSatFix>(Settings.GpsPositionTopicName, (Ros.NavSatFix msg) =>
            {
                double northing, easting;

                CoordinateConverter.ConvertLatLngToUtm(msg.latitude, msg.longitude, out northing, out easting);
                var inputPos = _mapOrigin.FromNorthingEasting(northing, easting);

                if (_firstMessage)
                {
                    _firstMessage = false;
                    firstAltitudeValue = (float)msg.altitude;
                }

                var position = new Vector3(inputPos.x - 500000f, (float)msg.altitude, inputPos.z);
                Settings.Transform.position = position;
            });

            _bridge.AddReader<Ros.GimbalAngle>(Settings.GimbalAngleTopicName, (Ros.GimbalAngle msg) =>
            {
                _gimbalAngleQuat = Quaternion.Euler((float)msg.vector.y, (float)msg.vector.z, (float)msg.vector.x);
            });

            _bridge.AddReader<Ros.Joy>(Settings.ActuatorsTopicName, (Ros.Joy msg) =>
            {
                IgniteActuators((int)msg.axes[0], (int)msg.axes[2], (int)msg.axes[3], (int)msg.axes[1]);
                SetAileronValues(msg.axes[4], msg.axes[5]);
                SetElevatorValue(msg.axes[6]);
                SetRudderValue(msg.axes[7]);

                // After index #7 it's mandatory to check array index existence
                if (msg.axes.Length > 8)
                {
                    IgniteMainEngine((int)msg.axes[8]); //Stop engine - 0, ignite - 1
                }

                if (msg.axes.Length > 9)
                {
                    HandleCargo((int)msg.axes[9]); //Drop - 0, Pick - 1 (distance between the drone and cargo must be less than 0.5m)
                }
            });
        }

        private void IgniteMainEngine(int value)
        {
            if (Settings.MainEnginePropeller)
            {
                if (value > 0)
                {
                    Settings.MainEnginePropeller?.SetActive(false);
                    Settings.MainEngineMB?.SetActive(true);
                }
                else
                {
                    Settings.MainEnginePropeller?.SetActive(true);
                    Settings.MainEngineMB?.SetActive(false);
                }
            }
        }

        private void IgniteActuators(int actFRValue, int actFLValue, int actRRValue, int actRLValue)
        {
            if (actFRValue > 0)
            {
                if (Settings.ActuatorFR != null)
                    Settings.ActuatorFR?.SetActive(false);
                if (Settings.ActuatorFRSB != null)
                    Settings.ActuatorFRSB?.SetActive(false);
                if (Settings.ActuatorMBFR != null)
                    Settings.ActuatorMBFR?.SetActive(true);
                if (Settings.ActuatorMBFRSB != null)
                    Settings.ActuatorMBFRSB?.SetActive(true);
            }
            else
            {
                if (Settings.ActuatorFR != null)
                    Settings.ActuatorFR?.SetActive(true);
                if (Settings.ActuatorFRSB != null)
                    Settings.ActuatorFRSB?.SetActive(true);
                if (Settings.ActuatorMBFR != null)
                    Settings.ActuatorMBFR?.SetActive(false);
                if (Settings.ActuatorMBFRSB != null)
                    Settings.ActuatorMBFRSB?.SetActive(false);
            }

            if (actFLValue > 0)
            {
                if (Settings.ActuatorFR != null)
                    Settings.ActuatorFL?.SetActive(false);
                if (Settings.ActuatorFLSB != null)
                    Settings.ActuatorFLSB?.SetActive(false);
                if (Settings.ActuatorMBFL != null)
                    Settings.ActuatorMBFL?.SetActive(true);
                if (Settings.ActuatorMBFLSB != null)
                    Settings.ActuatorMBFLSB?.SetActive(true);
            }
            else
            {
                if (Settings.ActuatorFL != null)
                    Settings.ActuatorFL?.SetActive(true);
                if (Settings.ActuatorFLSB != null)
                    Settings.ActuatorFLSB?.SetActive(true);
                if (Settings.ActuatorMBFL != null)
                    Settings.ActuatorMBFL?.SetActive(false);
                if (Settings.ActuatorMBFLSB != null)
                    Settings.ActuatorMBFLSB?.SetActive(false);
            }

            if (actRRValue > 0)
            {
                if (Settings.ActuatorRR != null)
                    Settings.ActuatorRR?.SetActive(false);
                if (Settings.ActuatorRRSB != null)
                    Settings.ActuatorRRSB?.SetActive(false);
                if (Settings.ActuatorMBRR != null)
                    Settings.ActuatorMBRR?.SetActive(true);
                if (Settings.ActuatorMBRRSB != null)
                    Settings.ActuatorMBRRSB?.SetActive(true);
            }
            else
            {
                if (Settings.ActuatorRR != null)
                    Settings.ActuatorRR?.SetActive(true);
                if (Settings.ActuatorRRSB != null)
                    Settings.ActuatorRRSB?.SetActive(true);
                if (Settings.ActuatorMBRR != null)
                    Settings.ActuatorMBRR?.SetActive(false);
                if (Settings.ActuatorMBRRSB != null)
                    Settings.ActuatorMBRRSB?.SetActive(false);
            }

            if (actRLValue > 0)
            {
                if (Settings.ActuatorRL != null)
                    Settings.ActuatorRL?.SetActive(false);
                if (Settings.ActuatorRLSB != null)
                    Settings.ActuatorRLSB?.SetActive(false);
                if (Settings.ActuatorMBRL != null)
                    Settings.ActuatorMBRL?.SetActive(true);
                if (Settings.ActuatorMBRLSB != null)
                    Settings.ActuatorMBRLSB?.SetActive(true);
            }
            else
            {
                if (Settings.ActuatorRL != null)
                    Settings.ActuatorRL?.SetActive(true);
                if (Settings.ActuatorRLSB != null)
                    Settings.ActuatorRLSB?.SetActive(true);
                if (Settings.ActuatorMBRL != null)
                    Settings.ActuatorMBRL?.SetActive(false);
                if (Settings.ActuatorMBRLSB != null)
                    Settings.ActuatorMBRLSB?.SetActive(false);
            }
        }

        private void SetAileronValues(float valueLeft, float valueRight)
        {           
            if (Settings.AileronLeft && Settings.AileronRight)
            {
                var aileronLeftRotEuler = Settings.AileronLeft.transform.localRotation.eulerAngles;
                var aileronRightRotEuler = Settings.AileronRight.transform.localRotation.eulerAngles;

                Settings.AileronLeft.transform.localRotation = Quaternion.Euler(
                    aileronLeftRotEuler.x, 
                    aileronLeftRotEuler.y, valueLeft);
                Settings.AileronRight.transform.localRotation = Quaternion.Euler(
                    aileronRightRotEuler.x,
                    aileronRightRotEuler.y, valueRight);
            }
        }

        private void SetElevatorValue(float value)
        {
            if (Settings.Elevator)
            {
                var elevatorRotEuler = Settings.Elevator.transform.localRotation.eulerAngles;

                Settings.Elevator.transform.localRotation = Quaternion.Euler(
                    elevatorRotEuler.x, 
                    elevatorRotEuler.y, value);
            }
        }

        private void SetRudderValue(float value)
        {
            if (Settings.Rudder)
            {
                Settings.Rudder.transform.Rotate(Vector3.up, -value);
            }

            if (Settings.RudderExtra)
            {
                Settings.RudderExtra.transform.Rotate(Vector3.up, -value);
            }
        }

        private void DropCargo()
        {
            if (_cargoRB != null && Settings.Cargo)
            {
                _cargoRB.isKinematic = false;
                Settings.Cargo.transform.parent = null;
            }
        }

        private void PickCargo()
        {
            if (_cargoRB != null && Settings.Cargo)
            {
                if (Vector3.Distance(Settings.Cargo.transform.position, 
                    Settings.transform.position) < 0.5f)
                {
                    _cargoRB.isKinematic = true;
                    Settings.Cargo.transform.parent = Settings.transform;
                    Settings.Cargo.transform.position = Vector3.zero;
                }                
            }
        }

        private void HandleCargo(int value)
        {
            if (value == 0)
            {
                DropCargo();
            }
            else if (value == 1)
            {
                PickCargo();
            }
        }

        private void Update()
        {
            if (_bridge?.Status == BridgeStatus.Connected)
            {
                if (Settings.MovableHolder)
                {
                    Settings.MovableHolder.transform.rotation = _gimbalAngleQuat;
                }
            }
        }

        public void Dispose()
        {
            _bridgeProvider.Bridge.OnConnected -= BridgeOnConnected;
            Settings.OnUpdate -= (sender, args) => Update();
            Settings.OnCollision -= (sender, args) => OnCollisionEnter(args.ConvertTo<Collision>());
            Settings.OnTrigger -= (sender, args) => OnTriggerEnter(args.ConvertTo<Collider>());
        }

        private void OnCollisionEnter(Collision collision)
        {
            ApiManager.Instance?.AddCollision(Settings.gameObject, collision);
        }

        private void OnTriggerEnter(Collider collider)
        {
            ApiManager.Instance?.AddMinDistance(Settings.gameObject, collider);
        }
    }
}