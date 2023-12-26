using System;
using Assets.Scripts.Agent.Configuration.AgentConfigurations;

namespace Assets.Scripts.Agent.Configuration
{
    [Serializable]
    public class AgentConfiguration
    {
        public string Name { get; set; }

        public SensorsConfiguration SensorsConfiguration { get; set; }
    }
}
