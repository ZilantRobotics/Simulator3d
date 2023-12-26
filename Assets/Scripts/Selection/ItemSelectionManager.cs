using UnityEngine;
using UnityEngine.Events;

namespace Assets.Scripts.Selection
{
    /// <summary>
    /// Use this class performs selection from the list of items on the screen.
    /// </summary>
    /// <typeparam name="T">Item type</typeparam>
    /// <typeparam name="TM">Item view type</typeparam>
    public sealed class ItemSelectionManager<T, TM> where TM : MonoBehaviour, ISelectionItemView<T>
    {
        public T SelectedItem { get; private set; }

        public int SelectedIndex { get; private set; }

        public ItemSelectionEvent OnItemSelected { get; }

        private readonly GameObject _itemViewHolder;

        private readonly TM _itemViewPrefab;

        public ItemSelectionManager(
            GameObject itemViewHolder,
            TM itemViewPrefab)
        {
            _itemViewHolder = itemViewHolder;
            _itemViewPrefab = itemViewPrefab;

            OnItemSelected = new ItemSelectionEvent();
        }

        public void SetItems(T[] items)
        {
            while (_itemViewHolder.transform.childCount > 0)
            {
                Object.Destroy(_itemViewHolder.transform.GetChild(0));
            }

            TM firstItemViewScript = null;

            for (var i = 0; i < items.Length; i++)
            {
                var item = items[i];
                var k = i;

                var itemView = Object.Instantiate(_itemViewPrefab.gameObject, _itemViewHolder.transform);
                itemView.transform.localScale = Vector3.one;

                var itemViewScript = itemView.GetComponent<TM>();
                itemViewScript.SetItem(item);
                itemViewScript.GetOnClickEvent().AddListener(() =>
                {
                    SelectedItem = item;
                    SelectedIndex = k;
                    OnItemSelected.Invoke(item);
                });

                if (firstItemViewScript == null)
                {
                    firstItemViewScript = itemViewScript;
                }
            }

            firstItemViewScript?.Select();
        }

        public void SetSelectedItem(int id, T[] items)
        {
            SelectedItem = items[id];
            SelectedIndex = id;
            OnItemSelected.Invoke(items[id]);
        }

        public class ItemSelectionEvent : UnityEvent<T> { }
    }
}
