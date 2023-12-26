using System;

namespace Assets.Scripts.Agent.UI
{
    public interface IAgentUI : IDisposable
    {
        public AgentUIView View { get; }
    }
}
