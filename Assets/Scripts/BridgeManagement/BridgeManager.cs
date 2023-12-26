using Assets.Scripts.BridgeAddressSelection;
using Assets.Scripts.Injection;
using Assets.Scripts.TargetEnvironmentSelection;
using Comm;
using Comm.Ros;
using UnityEngine;

namespace Assets.Scripts.BridgeManagement
{
    public class BridgeManager : IBridgeProvider
    {
        public Bridge Bridge { get; }

        private readonly BridgeAddressProvider _bridgeAddressProvider;

        private readonly ITargetEnvironmentProvider _targetEnvironmentProvider;
        private bool _isDisconnected = true;

        private float _timeToConnect = Time.realtimeSinceStartup;

        public BridgeManager(
            IUnityCallbacks callbacks,
            BridgeAddressProvider bridgeAddressProvider,
            ITargetEnvironmentProvider targetEnvironmentProvider)
        {
            _bridgeAddressProvider = bridgeAddressProvider;
            _targetEnvironmentProvider = targetEnvironmentProvider;

            Bridge = _targetEnvironmentProvider.TargetEnvironment switch
            {
                TargetEnvironment.ROS => new RosBridge(),
                _ => new RosBridge()
            };

            callbacks.OnUpdate += (sender, args) => Tick();
        }

        public void Reconnect()
        {
            Bridge.Address = _bridgeAddressProvider.Host;
            Bridge.Port = _bridgeAddressProvider.Port;
            Bridge.Disconnect();
        }

        public void Tick()
        {
            if (Bridge.Status != BridgeStatus.Disconnected)
            {
                _isDisconnected = false;
            }

            if (!_isDisconnected && Bridge.Status == BridgeStatus.Disconnected)
            {
                _timeToConnect = Time.time + 1.0f;
                _isDisconnected = true;
            }

            if (Bridge.Status == BridgeStatus.Disconnected)
            {
                if (!string.IsNullOrEmpty(_bridgeAddressProvider.Host) && Time.realtimeSinceStartup > _timeToConnect)
                {
                    _isDisconnected = false;
                    Bridge.Connect(_bridgeAddressProvider.Host, _bridgeAddressProvider.Port, TargetEnvironmentHelper.GetRosVersion(_targetEnvironmentProvider.TargetEnvironment));
                }
                else
                {
                    return;
                }
            }

            Bridge.Update();
        }

        public void Dispose()
        {
            Bridge.Disconnect();
        }
    }
}
