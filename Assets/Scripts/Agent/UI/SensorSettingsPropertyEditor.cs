using System.Reflection;
using Assets.Scripts.Agent.Sensors;
using Assets.Scripts.UI;

namespace Assets.Scripts.Agent.UI
{
    public class SensorSettingsPropertyEditor<T> : ISensorSettingsPropertyEditor<T>
    {
        public bool IsActive
        {
            get => _view.IsActive;
            set => _view.IsActive = value;
        }

        public T Value => (T)_propertyInfo.GetValue(_sensorSettings);

        private readonly IPropertyEditorView<T> _view;

        private readonly ISensorSettings _sensorSettings;

        private readonly PropertyInfo _propertyInfo;

        public SensorSettingsPropertyEditor(IPropertyEditorView<T> view, ISensorSettings sensorSettings, PropertyInfo propertyInfo)
        {
            _view = view;
            _sensorSettings = sensorSettings;
            _propertyInfo = propertyInfo;
            view.Value = Value;
            view.Name = propertyInfo.Name;
            view.OnValueChanged += View_OnValueChanged;
        }

        public void Update()
        {
            _view.Value = Value;
        }

        private void View_OnValueChanged(object sender, System.EventArgs e)
        {
            _propertyInfo.SetValue(_sensorSettings, _view.Value);
        }
    }
}
