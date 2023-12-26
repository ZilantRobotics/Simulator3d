using System.Collections.Generic;

namespace Ros
{
    [MessageType("extra_msgs/BoundingBox3D")]
    public struct BoundingBox3D
    {
        public Pose position;
        public Vector3 size;
        public List<Vector3> vertexPoints;
    }
}