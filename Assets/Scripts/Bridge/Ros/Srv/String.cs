namespace Ros
{
    namespace Srv
    {
        [MessageType("tb_agv_srvs/String")]
        public struct String
        {
            public string str;
            public String(string s)
            {
                str = s;
            }
        }
    }
}
