using Assets.Scripts.Constants;
using UnityEngine;

namespace Assets.Scripts.BridgeAddressSelection
{
    public static class PlayerPrefsHelper
    {
        public static string AgentHost
        {
            get => PlayerPrefs.GetString(PlayerPrefKeys.LastBridgeAddress, DefaultAddress);
            set => PlayerPrefs.SetString(PlayerPrefKeys.LastBridgeAddress, value);
        }

        public static int AgentPort
        {
            get => PlayerPrefs.GetInt(PlayerPrefKeys.LastBridgePort, DefaultPort);
            set => PlayerPrefs.SetInt(PlayerPrefKeys.LastBridgePort, value);
        }

        private const string DefaultAddress = "localhost";

        private const int DefaultPort = 9090;
    }
}
