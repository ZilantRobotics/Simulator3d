namespace Ros
{
    [MessageType("geometry_msgs/PointStamped")]
    public struct PointStamped
    {
        public Header header;

        public Point point;
    }
}
