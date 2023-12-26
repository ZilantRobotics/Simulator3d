using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace Assets.Scripts.Agent.UI
{
    public class AgentUIView : MonoBehaviour
    {
        public UnityEvent SaveConfigurationEvent => _saveConfigurationButton.onClick;

        public UnityEvent LoadConfigurationEvent => _loadConfigurationButton.onClick;

        public UnityEvent ReconnectEvent => _reconnectButton.onClick;

        [SerializeField]
        private Transform _tweakingUIContainer;

        [SerializeField]
        private Transform _cameraPreviewsContainer;
                
        [SerializeField]
        private Button _saveConfigurationButton;

        [SerializeField]
        private Button _loadConfigurationButton;

        [SerializeField]
        private Button _reconnectButton;
       
        [SerializeField]
        private Button _turnMainCameraButton;

        [SerializeField]
        private Text _bridgeStatusText;

        [SerializeField]
        private Text _appVersionText;

        [SerializeField] 
        private InputField _bridgeAddressInputField;

        [SerializeField] 
        private InputField _bridgePortInputField;

        public InputField BridgeAddressInputField => _bridgeAddressInputField;

        public InputField BridgePortInputField => _bridgePortInputField;

        public Transform TweakingUIContainer => _tweakingUIContainer;

        public Transform CameraPreviewsContainer => _cameraPreviewsContainer;

        public Text BridgeStatusText => _bridgeStatusText;

        public Text AppVersionText => _appVersionText;
    }
}
