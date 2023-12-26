using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using System;
using System.Collections.Generic;

namespace Assets.Scripts.Agent.Configuration.AgentConfigurations
{
    [Serializable]
    public class SensorsConfiguration
    {        
        public List<GpsSensorConfiguration> GpsSensorConfigurations { get; set; }

        public List<ImuSensorConfiguration> ImuSensorConfigurations { get; set; }

        public List<LidarSensorConfiguration> LidarSensorConfigurations { get; set; }

        public List<VideoSensorConfiguration> VideoSensorConfigurations { get; set; }

        public List<AltimeterSensorConfiguration> AltimeterSensorConfigurations { get; set; }

        public SensorsConfiguration()
        {
            GpsSensorConfigurations = new List<GpsSensorConfiguration>();
            ImuSensorConfigurations = new List<ImuSensorConfiguration>();
            LidarSensorConfigurations = new List<LidarSensorConfiguration>();
            VideoSensorConfigurations = new List<VideoSensorConfiguration>();
            AltimeterSensorConfigurations = new List<AltimeterSensorConfiguration>();
        }
    }
}
