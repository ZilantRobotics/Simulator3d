using UnityEngine.Events;

namespace Assets.Scripts.Agent.UI
{
    public interface ISensorsEditorItemView
    {
        public string Name { get; set; }

        public UnityEvent OnSelected { get; }
    }
}
