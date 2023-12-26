using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations
{
    [Serializable]
    public class GpsSensorConfiguration : INamedConfiguration
    {
        public string Name { get; set; }

        public Vector3 LocalPosition { get; set; }

        public Quaternion LocalRotation { get; set; }

        public string FrameId { get; set; }

        public string TopicName { get; set; }

        public string GpsOdomTopicName { get; set; }

        public float Frequency { get; set; }
    }
}
