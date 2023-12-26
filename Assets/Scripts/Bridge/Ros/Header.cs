namespace Ros
{
    [MessageType("std_msgs/Header")]
    public struct Header
    {
        public uint seq;
        public Time stamp;
        public string frame_id;
    }
}
