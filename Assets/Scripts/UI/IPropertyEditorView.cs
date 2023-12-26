using System;

namespace Assets.Scripts.UI
{
    public interface IPropertyEditorView<T>
    {
        public bool IsActive { get; set; }

        public string Name { get; set; }

        public T Value { get; set; }

        public event EventHandler OnValueChanged;
    }
}
