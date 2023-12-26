using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Object = UnityEngine.Object;

namespace Assets.Scripts.Agent.UI
{
    public class AgentTweakingUI : IAgentTweakingUI
    {
        private readonly IAgentUI _agentUI;

        private readonly Settings _settings;

        public AgentTweakingUI(
            IAgentUI agentUI,
            Settings settings)
        {
            _agentUI = agentUI;
            _settings = settings;
        }

        public Slider AddSlider(string name, string label, float min, float max, float init)
        {
            var ui = Object.Instantiate(_settings.Slider, _agentUI.View.TweakingUIContainer);
            ui.name = name;
            var text = ui.transform.Find("Text").GetComponent<Text>();
            var slider = ui.transform.Find("Slider").GetComponent<Slider>();
            var value = slider.transform.Find("Value").GetComponent<Text>();

            text.text = label;
            slider.minValue = min;
            slider.maxValue = max;

            slider.onValueChanged.AddListener(x =>
            {
                value.text = $"{x:F1}";
            });

            slider.value = init;
            slider.onValueChanged.Invoke(init);

            return slider;
        }

        public InputField AddTextbox(string name, string label, string initial)
        {
            var ui = Object.Instantiate(_settings.Textbox, _agentUI.View.TweakingUIContainer);
            ui.name = name;
            var text = ui.transform.Find("Label").GetComponent<Text>();
            var input = ui.transform.Find("Input").GetComponent<InputField>();
            text.text = label;
            return input;
        }

        public Toggle AddCheckbox(string name, string label, bool init)
        {
            var ui = Object.Instantiate(_settings.Checkbox, _agentUI.View.TweakingUIContainer);
            ui.name = name;
            var text = ui.transform.Find("Label").GetComponent<Text>();
            var toggle = ui.GetComponent<Toggle>();
            text.text = label;
            toggle.isOn = init;
            return toggle;
        }

        public Dropdown AddDropdown(string name, string label, List<string> types)
        {
            var dropdown = Object.Instantiate(_settings.Dropdown).GetComponent<Dropdown>();
            dropdown.name = name;
            dropdown.captionText.text = label;
            dropdown.AddOptions(types);
            return dropdown;
        }

        [Serializable]
        public class Settings
        {
            [SerializeField]
            public GameObject Slider;

            [SerializeField]
            public GameObject Textbox;

            [SerializeField]
            public GameObject Checkbox;

            [SerializeField]
            public GameObject Dropdown;
        }
    }
}
