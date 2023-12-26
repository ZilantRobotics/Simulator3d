using Assets.Scripts.Selection;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace Assets.Scripts.SceneSelection
{
    public class SceneView : MonoBehaviour, ISelectionItemView<Scene>
    {
        [SerializeField]
        private Text _nameText;

        [SerializeField]
        private Image _icon;

        [SerializeField]
        private Button _button;

        private UnityEvent _onClick = new UnityEvent();

        private void Start()
        {
            _button.onClick.AddListener(OnButtonClick);
        }

        public UnityEvent GetOnClickEvent()
        {
            return _onClick;
        }

        public void Select()
        {
            OnButtonClick();
        }

        public void SetItem(Scene item)
        {
            _nameText.text = item.SceneName;
            _icon.sprite = item.SceneIconSprite;
        }

        private void OnButtonClick()
        {
            _onClick.Invoke();
        }
    }
}
