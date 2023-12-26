using Assets.Scripts.Agent.Configuration.Converters;
using System.IO;
using YamlDotNet.Serialization;
using YamlDotNet.Serialization.NamingConventions;

namespace Assets.Scripts.Agent.Configuration
{
    public class ConfigurationManager : IConfigurationManager
    {
        private const string ConfigurationDirectory = "Configuration";

        private readonly IAgentsFacade _agentsFacade;

        public ConfigurationManager(IAgentsFacade agentsFacade)
        {
            _agentsFacade = agentsFacade;
        }

        public void Save()
        {
            foreach (var agent in _agentsFacade.Agents)
            {
                Save(agent);
            }
        }

        public void Save(IAgentFacade agent)
        {
            if (!Directory.Exists(ConfigurationDirectory))
            {
                Directory.CreateDirectory(ConfigurationDirectory);
            }

            var serializerBuilder = new SerializerBuilder();
            serializerBuilder.WithTypeConverter(new Vector3Converter());
            serializerBuilder.WithTypeConverter(new QuaternionConverter());
            serializerBuilder.WithNamingConvention(new UnderscoredNamingConvention());
            var serializer = serializerBuilder.Build();
            var result = serializer.Serialize(agent.Configuration);
            using var writer = new StreamWriter(GetPathToAgentConfigurationFile(agent));
            writer.Write(result);
        }

        public void Load()
        {
            foreach (var agent in _agentsFacade.Agents)
            {
                Load(agent);
            }
        }

        public void Load(IAgentFacade agentFacade)
        {
            if (!Directory.Exists(ConfigurationDirectory))
            {
                return;
            }

            if (!File.Exists(GetPathToAgentConfigurationFile(agentFacade)))
            {
                return;
            }

            string configurationFile;
            using (var reader = new StreamReader(GetPathToAgentConfigurationFile(agentFacade)))
            {
                configurationFile = reader.ReadToEnd();
            }

            var deserializerBuilder = new DeserializerBuilder();
            deserializerBuilder.WithTypeConverter(new Vector3Converter());
            deserializerBuilder.WithTypeConverter(new QuaternionConverter());
            deserializerBuilder.WithNamingConvention(new UnderscoredNamingConvention());
            var deserializer = deserializerBuilder.Build();

            AgentConfiguration configuration;
            try
            {
                configuration = deserializer.Deserialize<AgentConfiguration>(configurationFile);
            }
            catch
            {
                return;
            }

            if (configuration == null)
            {
                return;
            }

            agentFacade.Configuration = configuration;
        }

        private string GetPathToAgentConfigurationFile(IAgentFacade agent)
        {
            return Path.Combine(ConfigurationDirectory, agent.Name + ".yaml");
        }
    }
}
