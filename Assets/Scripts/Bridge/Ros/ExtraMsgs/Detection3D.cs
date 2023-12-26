using System.Collections.Generic;

namespace Ros
{
    [MessageType("extra_msgs/Detection3D")]
    public struct Detection3D
    {
        public Header header;

        public uint id;
        public string label;
        public double score;
        
        public BoundingBox3D bbox;
        public Twist velocity;
        public Vector3 acceleration;
    }
}