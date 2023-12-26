using Assets.Scripts.Constants;
using Assets.Scripts.Util;
using UnityEngine;

namespace Assets.Scripts.Agent.Selection
{
    public class AgentsSelectionManager : ISelectedAgentsProvider
    {
        public int[] GetSelectedAgentIndices()
        {         
            return JsonHelper.FromJson<int>(PlayerPrefs.GetString(PlayerPrefKeys.AgentIndices)); 
        }

        public int[] GetSelectedSpawnIndex()
        {
            return JsonHelper.FromJson<int>(PlayerPrefs.GetString(PlayerPrefKeys.SpawnSpotIndex));
        }
    }
}
