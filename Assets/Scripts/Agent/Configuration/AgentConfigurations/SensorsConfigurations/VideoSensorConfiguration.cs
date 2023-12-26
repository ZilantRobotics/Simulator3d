using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations
{
    [Serializable]
    public class VideoSensorConfiguration : INamedConfiguration
    {
        public string Name { get; set; }
        public Vector3 LocalPosition { get; set; }
        public Quaternion LocalRotation { get; set; }
        public string TopicName { get; set; }
        public float Frequency { get; set; }
        public int JpegQuality { get; set; }
        public string SensorName { get; set; }
        public float FocalLength { get; set; }
        public float SensorSizeX { get; set; }
        public float SensorSizeY { get; set; }
        public float LensShiftX { get; set; }
        public float LensShiftY { get; set; }
        public int FrameWidth { get; set; }
        public int FrameHeight { get; set; }
    }
}
