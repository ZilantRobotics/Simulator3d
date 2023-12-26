﻿namespace Ros
{
    [MessageType("sensor_msgs/PointCloud2")]
    public struct PointCloud2
    {
        public Header header;
        public uint height;
        public uint width;
        public PointField[] fields;
        public bool is_bigendian;
        public uint point_step;
        public uint row_step;
        public PartialByteArray data;
        public bool is_dense;
    }
}