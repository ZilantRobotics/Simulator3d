
namespace Ros
{
    public static class TransformExtensions
    {
        public static UnityEngine.Vector3 Ros2UnityPoint(Point vector3)
        {
            //return new UnityEngine.Vector3((float)vector3.X, (float)vector3.Y, (float)vector3.Z);
            return new UnityEngine.Vector3(-(float)vector3.y, (float)vector3.z, (float)vector3.x);
        }

        public static Point Unity2RosPoint(UnityEngine.Vector3 vector3)
        {
            //return new Point() { X = vector3.X, Y = vector3.Y, Z = vector3.Z };
            return new Point() { x = vector3.z, y = -vector3.x, z = vector3.y };
        }


        public static UnityEngine.Vector3 Ros2Unity(UnityEngine.Vector3 vector3)
        {
            //return new UnityEngine.Vector3((float)vector3.X, (float)vector3.Y, (float)vector3.Z);
            return new UnityEngine.Vector3(-vector3.y, vector3.z, vector3.x);
        }

        public static UnityEngine.Vector3 Ros2Unity(Vector3 vector3)
        {
            //return new UnityEngine.Vector3((float)vector3.X, (float)vector3.Y, (float)vector3.Z);
            return new UnityEngine.Vector3(-(float)vector3.y, (float)vector3.z, (float)vector3.x);
        }

        public static Vector3 Unity2Ros(UnityEngine.Vector3 vector3)
        {
            //return new Vector3(vector3.X, vector3.Y, vector3.Z);
            return new Vector3(vector3.z, -vector3.x, vector3.y);
        }

        public static UnityEngine.Vector3 Ros2UnityScale(Vector3 vector3)
        {
            //return new UnityEngine.Vector3((float)vector3.X, (float)vector3.Y, (float)vector3.Z);
            return new UnityEngine.Vector3((float)vector3.y, (float)vector3.z, (float)vector3.x);
        }

        public static Vector3 Unity2RosScale(UnityEngine.Vector3 vector3)
        {
            //return new Vector3(vector3.X, vector3.Y, vector3.Z);
            return new Vector3(vector3.z, vector3.x, vector3.y);
        }

        public static UnityEngine.Quaternion Ros2Unity(Quaternion quaternion)
        {
            //return new UnityEngine.Quaternion((float)quaternion.X, (float)quaternion.Y, -(float)quaternion.Z, (float)quaternion.w);
            return new UnityEngine.Quaternion((float)quaternion.y, -(float)quaternion.z, -(float)quaternion.x, (float)quaternion.w);
        }

        public static Quaternion Unity2Ros(UnityEngine.Quaternion quaternion)
        {
            //return new Quaternion() { X = quaternion.X, Y = quaternion.Y, Z = quaternion.Z, w = quaternion.w };
            return new Quaternion() { x = -quaternion.z, y = quaternion.x, z = -quaternion.y, w = quaternion.w };
        }
    }
}