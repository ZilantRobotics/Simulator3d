namespace Ros
{
    [MessageType("geometry_msgs/Twist")]
    public struct Twist
    {
        public Vector3 linear;
        public Vector3 angular;
    }
}
