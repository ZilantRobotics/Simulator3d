using UnityEngine.Events;

namespace Assets.Scripts.Selection
{
    public interface ISelectionItemView<in T>
    {
        public void SetItem(T item);

        public UnityEvent GetOnClickEvent();

        public void Select();
    }
}
