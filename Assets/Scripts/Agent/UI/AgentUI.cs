using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Sensors;
using Assets.Scripts.BridgeAddressSelection;
using Assets.Scripts.BridgeManagement;

using Assets.Scripts.Injection;
using UnityEngine;
using Object = UnityEngine.Object;

namespace Assets.Scripts.Agent.UI
{
    public class AgentUI : IAgentUI
    {
        public AgentUIView View { get; }

        private readonly BridgeStatusUpdater _bridgeStatusUpdater;
        private readonly BridgeAddressSelector _bridgeAddressSelector;

        private readonly GameObject _uiGameObject;

        public AgentUI(
            IUnityCallbacks callbacks,
            GameObject uiPrefab, 
            ISensors sensors,
            IBridgeProvider bridgeProvider,
            IConfigurationManager configurationManager,
            BridgeAddressProvider bridgeAddressProvider)
        {
            _uiGameObject = Object.Instantiate(uiPrefab);
            View = _uiGameObject.GetComponent<AgentUIView>();

            View.SaveConfigurationEvent.AddListener(configurationManager.Save);
            View.LoadConfigurationEvent.AddListener(configurationManager.Load);
            View.ReconnectEvent.AddListener(bridgeProvider.Reconnect);

            _bridgeStatusUpdater = new BridgeStatusUpdater(callbacks, View.BridgeStatusText, bridgeProvider);
            _bridgeAddressSelector = new BridgeAddressSelector(View.BridgeAddressInputField, View.BridgePortInputField, bridgeAddressProvider);
        }

        public void Dispose()
        {
            Object.Destroy(_uiGameObject);
            _bridgeStatusUpdater?.Dispose();
        }
    }
}
