namespace Ros
{
    namespace Srv
    {
        [MessageType("tb_agv_srvs/SetEffectLED")]
        public struct SetEffectLED
        {
            public string data;
        }

        [MessageType("tb_agv_srvs/SetEffectLEDResponse")]
        public struct SetEffectLEDResponse
        {
            public bool success;
            public string message;
        }
    }
}
