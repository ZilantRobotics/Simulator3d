namespace Ros
{
    [MessageType("geometry_msgs/Quaternion")]
    public struct Quaternion
    {
        public double x;
        public double y;
        public double z;
        public double w;

        public UnityEngine.Quaternion ToUnityQuaternion()
        {
            return TransformExtensions.Ros2Unity(this);
        }
    }
}
