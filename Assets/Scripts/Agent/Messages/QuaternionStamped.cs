namespace Ros
{
    [MessageType("geometry_msgs/QuaternionStamped")]
    public struct QuaternionStamped
    {
        public Header header;
        public Quaternion quaternion;
    }
}
