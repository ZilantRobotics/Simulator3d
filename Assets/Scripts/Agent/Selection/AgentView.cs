using Assets.Scripts.Selection;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace Assets.Scripts.Agent.Selection
{
    public class AgentView : MonoBehaviour, ISelectionItemView<Agent>
    {
        [SerializeField]
        private Image _icon;

        [SerializeField]
        private Button _button;

        private UnityEvent _onClick = new UnityEvent();

        private void Start()
        {
            _button.onClick.AddListener(OnButtonClick);
        }

        private void OnButtonClick()
        {
            _onClick.Invoke();
        }

        public void SetItem(Agent item)
        {
            _icon.sprite = item.Icon;
        }

        public UnityEvent GetOnClickEvent()
        {
            return _onClick;
        }

        public void Select()
        {
            OnButtonClick();
        }
    }
}
