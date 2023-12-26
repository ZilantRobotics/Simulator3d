using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations
{
    [Serializable]
    public class ImuSensorConfiguration : INamedConfiguration
    {
        public string Name { get; set; }

        public Vector3 LocalPosition { get; set; }

        public Quaternion LocalRotation { get; set; }

        public string TopicName { get; set; }
        public string CorrectedImuTopic { get; set; }
        public string FrameId { get; set; }
        public float Frequency { get; set; }
        public string SensorName { get; set; }
    }
}
