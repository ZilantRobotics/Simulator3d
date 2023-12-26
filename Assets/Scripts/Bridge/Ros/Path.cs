namespace Ros
{
    [MessageType("nav_msgs/Path")]
    public struct Path
    {
        public Header header;

        public PoseStamped[] poses;
    }
}
