namespace Ros
{
    namespace Srv
    {
        [MessageType("std_srvs/SetBool")]
        public struct SetBool
        {
            public bool data;
        }

        [MessageType("std_srvs/SetBool")]
        public struct SetBoolResponse
        {
            public bool success;
            public string message;
        }
    }
}
