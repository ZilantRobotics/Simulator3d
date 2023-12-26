namespace Ros
{
    [MessageType("geometry_msgs/Pose")]
    public struct Pose
    {
        public Point position;
        public Quaternion orientation;
    }
}
