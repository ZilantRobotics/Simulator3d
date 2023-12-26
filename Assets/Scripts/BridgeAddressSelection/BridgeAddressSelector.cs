using Assets.Scripts.BridgeManagement;
using UnityEngine.UI;

namespace Assets.Scripts.BridgeAddressSelection
{
    public class BridgeAddressSelector
    {
        private readonly InputField _addressInputField;

        private readonly InputField _portInputField;

        private readonly BridgeAddressProvider _bridgeAddressProvider;

        public BridgeAddressSelector(InputField addressInputField, InputField portInputField, BridgeAddressProvider bridgeAddressProvider)
        {
            _bridgeAddressProvider = bridgeAddressProvider;

            _addressInputField = addressInputField;
            _addressInputField.text = PlayerPrefsHelper.AgentHost;
            _addressInputField.onEndEdit.AddListener(OnAddressChanged);
            _portInputField = portInputField;
            _portInputField.text = PlayerPrefsHelper.AgentPort.ToString();
            _portInputField.onEndEdit.AddListener(OnPortChanged);
        }

        private void OnAddressChanged(string value)
        {
            PlayerPrefsHelper.AgentHost = value;
            _bridgeAddressProvider.Host = value;
        }

        private void OnPortChanged(string value)
        {
            if (int.TryParse(_portInputField.text, out var port))
            {
                PlayerPrefsHelper.AgentPort = port;
                _bridgeAddressProvider.Port = port;
            }
            else
            {
                _portInputField.text = PlayerPrefsHelper.AgentPort.ToString();
            }
        }
    }
}
