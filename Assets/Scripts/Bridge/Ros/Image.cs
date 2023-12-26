namespace Ros
{
    [MessageType("sensor_msgs/Image")]
    public struct Image
    {
        public Header header;
        public uint height;
        public uint width;
        public string encoding;
        public byte is_bigendian;
        public uint step;
        public byte[] data;
    }
}
