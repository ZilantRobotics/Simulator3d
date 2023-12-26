namespace Assets.Scripts.Agent.Configuration
{
    public interface IConfigurationManager
    {
        public void Save();

        public void Save(IAgentFacade agent);

        public void Load();

        public void Load(IAgentFacade agent);
    }
}
