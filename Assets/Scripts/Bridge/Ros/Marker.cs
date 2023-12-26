namespace Ros
{
    [MessageType("visualization_msgs/Marker")]
    public struct Marker
    {
        public enum TYPE { Arrow = 0, Cube = 1, Sphere = 2, Cylinder = 3, LineStrip = 4, LineList = 5}

        public enum ACTION { Add = 0, Delete = 2 }

        public Header header;

        public string ns;

        public int id;

        public int type;

        public int action;

        public Pose pose;

        public Vector3 scale;

        public ColorRGBA color;

        public Time lifetime;

        public bool frame_locked;

        public Point[] points;

        public ColorRGBA[] colors;

        public string text;

        public string mesh_resource;

        public bool mesh_use_embedded_materials;

        public UnityEngine.Vector3 ToUnityScale()
        {
            return TransformExtensions.Ros2UnityScale(scale);
        }
    }
}
