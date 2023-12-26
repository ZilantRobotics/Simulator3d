namespace Ros
{
    [MessageType("std_msgs/Time", "builtin_interfaces/Time")]
    public struct Time
    {
        public long secs;
        public uint nsecs;

        private static System.DateTime OriginTime = new System.DateTime(1970, 1, 1, 0, 0, 0, System.DateTimeKind.Utc);

        public static Time Now()
        {
            long nanosec = (long) (1000000 * (System.DateTime.UtcNow - OriginTime).TotalMilliseconds);
            long sec = nanosec / 1000000000;
            long nsec = nanosec % 1000000000;

            return new Time()
            {
                secs = sec,
                nsecs = (uint)nsec,
            };
        }
    }
}
