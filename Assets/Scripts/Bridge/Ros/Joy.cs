namespace Ros
{
    [MessageType("sensor_msgs/Joy")]
    public struct Joy
    {
        public Header header;
        public float[] axes;
        public int[] buttons;
    }
}
