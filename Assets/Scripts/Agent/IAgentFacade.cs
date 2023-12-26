using System;
using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Sensors;
using Assets.Scripts.Agent.UI;
using Assets.Scripts.BridgeAddressSelection;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.TargetEnvironmentSelection;
using UnityEngine;

namespace Assets.Scripts.Agent
{
    public interface IAgentFacade : IConfigurableEntity<AgentConfiguration>, IDisposable
    {
        public Guid Id { get; }

        public string Name { get; }

        public GameObject GameObject { get; }

        public IAgentUI AgentUI {get;}

        public Vector3 Position { get; }

        public IAgentTweakingUI AgentTweakingUI { get; }

        public ISensors Sensors { get; }

        public IBridgeProvider BridgeProvider { get; }

        public ITargetEnvironmentProvider TargetEnvironmentProvider { get; }

        public BridgeAddressProvider BridgeAddressProvider { get; }

    }
}
