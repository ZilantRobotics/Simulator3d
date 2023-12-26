namespace Ros
{
    [MessageType("extra_msgs/Detection2D")]
    public struct Detection2D
    {
        public Header header;

        public uint id;
        public string label;
        public double score;
        
        public BoundingBox2D bbox;
        public Twist velocity;
    }
}