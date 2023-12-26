namespace Assets.Scripts.Agent.Selection
{
    public class AgentListProvider : IAgentListProvider
    {
        private readonly AgentList _agentList;

        public AgentListProvider(AgentList agentList)
        {
            _agentList = agentList;
        }

        public AgentList GetAgentList()
        {
            return _agentList;
        }
    }
}
