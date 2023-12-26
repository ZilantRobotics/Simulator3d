namespace Ros
{
    [MessageType("sensor_msgs/NavSatFix")]
    public struct NavSatFix
    {
        public const uint COVARIANCE_TYPE_UNKNOWN = 0;
        public const uint COVARIANCE_TYPE_APPROXIMATED = 1;
        public const uint COVARIANCE_TYPE_DIAGONAL_KNOWN = 2;
        public const uint COVARIANCE_TYPE_KNOWN = 3;

        public Header header;
        public NavSatStatus status;

        public double latitude;
        public double longitude;
        public double altitude;
        public double[] position_covariance;
        public uint position_covariance_type;
    }

    [MessageType("sensor_msgs/NavSatStatus")]
    public struct NavSatStatus
    {
        public const int STATUS_NO_FIX = -1;
        public const int STATUS_FIX = 0;
        public const int STATUS_SBAS_FIX = 1;
        public const int STATUS_GBAS_FIX = 2;
        public const uint SERVICE_GPS = 1;
        public const uint SERVICE_GLONASS = 2;
        public const uint SERVICE_COMPASS = 4;
        public const uint SERVICE_GALILEO = 8;
        public int status;
        public uint service;
    }
}