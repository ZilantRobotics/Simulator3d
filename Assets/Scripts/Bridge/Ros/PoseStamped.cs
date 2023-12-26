namespace Ros
{
    [MessageType("geometry_msgs/PoseStamped")]
    public struct PoseStamped
    {
        public Header header;

        public Pose pose;
    }
}
