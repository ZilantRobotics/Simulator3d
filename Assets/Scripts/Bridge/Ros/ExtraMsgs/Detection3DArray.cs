using System.Collections.Generic;

namespace Ros
{
    [MessageType("extra_msgs/Detection3DArray")]
    public struct Detection3DArray
    {
        public Header header;
        public List<Detection3D> detections;
    }
}