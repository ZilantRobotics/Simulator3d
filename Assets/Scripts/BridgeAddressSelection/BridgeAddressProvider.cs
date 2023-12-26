namespace Assets.Scripts.BridgeAddressSelection
{
    public class BridgeAddressProvider
    {
        public string Host
        {
            get;
            set;
        }

        public int Port
        {
            get;
            set;
        }

        public BridgeAddressProvider()
        {
            Host = PlayerPrefsHelper.AgentHost;
            Port = PlayerPrefsHelper.AgentPort;
        }
    }
}
