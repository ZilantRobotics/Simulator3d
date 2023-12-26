namespace Ros
{
    [MessageType("geometry_msgs/TwistStamped")]
    public struct TwistStamped
    {
        public Header header;
        public Twist twist;
    }
}
