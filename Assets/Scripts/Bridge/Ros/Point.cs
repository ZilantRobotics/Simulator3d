namespace Ros
{
    [MessageType("geometry_msgs/Point")]
    public struct Point
    {
        public double x;
        public double y;
        public double z;

        public UnityEngine.Vector3 ToUnityVector()
        {
            return TransformExtensions.Ros2UnityPoint(this);
        }
    }
}
