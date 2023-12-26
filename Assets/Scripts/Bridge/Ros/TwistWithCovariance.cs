using System.Collections.Generic;

namespace Ros
{
    [MessageType("geometry_msgs/TwistWithCovariance")]
    public struct TwistWithCovariance
    {
        public Twist twist;
        public double[] covariance;  // float64[36] covariance
    }
}