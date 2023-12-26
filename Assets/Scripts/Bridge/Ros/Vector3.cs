namespace Ros
{
    [MessageType("geometry_msgs/Vector3")]
    public struct Vector3
    {
        public double x;
        public double y;
        public double z;
        public Vector3(double i, double j, double k)
        {
            x = i;
            y = j;
            z = k;
        }
    }
}
