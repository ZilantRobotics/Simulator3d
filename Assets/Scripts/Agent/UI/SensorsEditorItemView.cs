using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace Assets.Scripts.Agent.UI
{
    public class SensorsEditorItemView : MonoBehaviour, ISensorsEditorItemView
    {
        public string Name
        {
            get => _nameText.text;
            set => _nameText.text = value;
        }

        public UnityEvent OnSelected => _button.onClick;

        [SerializeField]
        private Text _nameText;

        [SerializeField]
        private Button _button;
    }
}
