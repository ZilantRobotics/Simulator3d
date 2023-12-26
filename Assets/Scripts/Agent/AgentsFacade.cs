using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Selection;
using Assets.Scripts.Agent.SpawnControl;
using Assets.Scripts.BridgeAddressSelection;
using Assets.Scripts.Injection;
using Assets.Scripts.Mapping;
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Assets.Scripts.Agent
{
    public class AgentsFacade : IAgentsFacade
    {
        public static AgentsFacade Instance { get; private set; }

        public IAgentFacade[] Agents => _agents.ToArray();

        public event EventHandler<IAgentFacade> AgentSpawned;

        private readonly IUnityCallbacks _callbacks;
        private readonly IAgentListProvider _agentListProvider;
        private readonly ISpawnPoints _spawnPoints;
        private readonly MapOrigin _mapOrigin;
        private readonly Settings _settings;
        private readonly List<IAgentFacade> _agents;
        private readonly IConfigurationManager _configurationManager;
        private readonly Coroutines.Coroutines _coroutines;
        private readonly int[] _spawnIndex;

        public AgentsFacade(
            IUnityCallbacks callbacks,
            ISelectedAgentsProvider agentsProvider,
            IAgentListProvider agentListProvider,
            ISpawnPoints spawnPoints,
            MapOrigin mapOrigin,
            Settings settings,
            Coroutines.Coroutines coroutines)
        {
            Instance = this;

            _callbacks = callbacks;
            _agentListProvider = agentListProvider;
            _spawnPoints = spawnPoints;
            _mapOrigin = mapOrigin;
            _settings = settings;
            _configurationManager = new ConfigurationManager(this);
            _coroutines = coroutines;

            int[] selectedAgentIndices = agentsProvider.GetSelectedAgentIndices() ?? new int[] { 0 };

            _spawnIndex = agentsProvider.GetSelectedSpawnIndex() ?? new int[] { 0 };

            _agents = new List<IAgentFacade>(selectedAgentIndices.Length);

            foreach (var index in selectedAgentIndices)
            {
                AddAgent(agentListProvider.GetAgentList().Agents[index]);
            }

            _configurationManager.Load();
        }

        public void RemoveAgentByIndex(int index)
        {
            _agents.RemoveAt(index);
        }

        public void RemoveAgentById(Guid id)
        {
            var agent = Agents.FirstOrDefault(a => a.Id == id);
            if (agent != null)
            {
                agent.Dispose();
                _agents.Remove(agent);
            }
        }

        public IAgentFacade GetActiveAgent()
        {
            if (_agents.Count == 0)
                return null;
            return Agents[0];
        }

        public void Dispose()
        {
            foreach (var agent in _agents)
            {
                agent.Dispose();
            }
            _agents.Clear();
        }

        public void Save()
        {
            _configurationManager.Save();
        }

        public IAgentFacade AddAgentByName(string name)
        {
            var agent = _agentListProvider.GetAgentList().Agents.FirstOrDefault(a => a.Name == name);
            return agent == null ? null : AddAgent(agent);
        }

        private IAgentFacade AddAgent(Selection.Agent agent)
        {
            var agentFacade = new AgentFacade(
                _callbacks,
                agent,
                _spawnPoints,
                _configurationManager,
                _mapOrigin,
                _settings.AgentFacadeSettings,
                _coroutines,
                _spawnIndex[0]);
            AgentSpawned?.Invoke(this, agentFacade);
            _agents.Add(agentFacade);
            _configurationManager.Load(agentFacade);
            return agentFacade;
        }

        [Serializable]
        public class Settings
        {
            [SerializeField]
            public AgentFacade.Settings AgentFacadeSettings;
        }
    }
}
