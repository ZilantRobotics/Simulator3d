using Assets.Scripts.Selection;
using Assets.Scripts.UI;
using UnityEngine.UI;

namespace Assets.Scripts.Agent.Selection
{
    public class MenuAgentsSelectionManager : ISelectedAgentsProvider
    {
        private readonly Text _selectedItemText;
        private readonly Dropdown _selectedSpawnDrop;

        private readonly ItemSelectionManager<Agent, AgentView> _agentSelectionManager;
        private readonly ItemSelectionManager<Agent, AgentView> _spawnSelectionManager;

        public MenuAgentsSelectionManager(
            ItemSelectionManager<Agent, AgentView> selectionManager,
            Text selectedItemText,
            Agent[] items,
            Dropdown spawnSpotsDrop)
        {
            _agentSelectionManager = selectionManager;
            _selectedItemText = selectedItemText;
            _selectedSpawnDrop = spawnSpotsDrop;

            _agentSelectionManager.OnItemSelected.AddListener(OnAgentSelected);
            _agentSelectionManager.SetItems(items);
        }

        public int[] GetSelectedAgentIndices()
        {
            return new[] { _agentSelectionManager.SelectedIndex };
        }

        public int[] GetSelectedSpawnIndex()
        {
            return new[] { _selectedSpawnDrop.value };
        }

        private void OnAgentSelected(Agent item)
        {
            _selectedItemText.text = item.Name;
        }
    }
}
