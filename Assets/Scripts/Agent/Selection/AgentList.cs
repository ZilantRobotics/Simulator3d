using UnityEngine;

namespace Assets.Scripts.Agent.Selection
{
    [CreateAssetMenu(fileName = "AgentList", menuName = "Agent/Agent List", order = 1)]
    public class AgentList : ScriptableObject
    {
        public Agent[] Agents;
    }
}
