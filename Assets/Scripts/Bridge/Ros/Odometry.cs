namespace Ros
{
    [MessageType("nav_msgs/Odometry")]
    public struct Odometry
    {
        public Header header;
        public string child_frame_id;
        public PoseWithCovariance pose;
        public TwistWithCovariance twist;
    }
}