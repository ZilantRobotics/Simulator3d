using System.Collections.Generic;

namespace Ros
{
    [MessageType("extra_msgs/Detection2DArray")]
    public struct Detection2DArray
    {
        public Header header;
        public List<Detection2D> detections;
    }
}