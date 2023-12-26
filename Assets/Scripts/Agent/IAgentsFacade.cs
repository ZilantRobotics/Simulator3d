using System;

namespace Assets.Scripts.Agent
{
    public interface IAgentsFacade : IDisposable
    {
        public event EventHandler<IAgentFacade> AgentSpawned;
        public IAgentFacade[] Agents { get; }

        public void RemoveAgentByIndex(int index);

        public void RemoveAgentById(Guid id);

        public IAgentFacade GetActiveAgent();

        public void Save();
    }
}
