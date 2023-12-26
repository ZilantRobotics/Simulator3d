using UnityEngine;

namespace Ros
{
    [MessageType("std_msgs/ColorRGBA")]
    public struct ColorRGBA
    {
        public double r;
        public double g;
        public double b;
        public double a;

        public Color ToUnityColor()
        {
            return new Color(
                Mathf.Clamp((float)r, 0, 1),
                Mathf.Clamp((float)g, 0, 1),
                Mathf.Clamp((float)b, 0, 1),
                (float)a);
        }

        public Vector4 ToUnityVector()
        {
            return new Vector4((float)r, (float)g, (float)b, (float)a);
        }
    }
}
