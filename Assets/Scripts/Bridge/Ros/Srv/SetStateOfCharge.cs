namespace Ros
{
    namespace Srv
    {
        [MessageType("tb_agv_srvs/SetStateOfCharge")]
        public struct SetStateOfCharge
        {
            public float data;
        }

        [MessageType("tb_agv_srvs/SetStateOfChargeResponse")]
        public struct SetStateOfChargeResponse
        {
            public bool success;
            public string message;
        }
    }
}
