using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations
{
    [Serializable]
    public class LidarSensorConfiguration : INamedConfiguration
    {
        public string Name { get; set; }

        public Vector3 LocalPosition { get; set; }

        public Quaternion LocalRotation { get; set; }

        public float MinDistance { get; set; }
        public float MaxDistance { get; set; }
        public float Frequency { get; set; }
        public float Fov { get; set; }
        public string FrameId { get; set; }
        public string TopicName { get; set; }
    }
}
