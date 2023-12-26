using System.Collections.Generic;
using UnityEngine.UI;

namespace Assets.Scripts.Agent.UI
{
    public interface IAgentTweakingUI
    {
        public Slider AddSlider(string name, string label, float min, float max, float init);

        public InputField AddTextbox(string name, string label, string initial);

        public Toggle AddCheckbox(string name, string label, bool init);

        public Dropdown AddDropdown(string name, string label, List<string> types);
    }
}
