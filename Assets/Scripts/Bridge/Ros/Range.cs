namespace Ros
{
    [MessageType("sensor_msgs/Range")]
    public struct Range
    {        
        public enum RadiationType
        {
            ULTRASOUND = 0,
            INFRARED = 1
        }
        public Header header;
        public uint radiation_type;
        public float field_of_view;
        public float min_range;
        public float max_range;
        public float range;
    }
}