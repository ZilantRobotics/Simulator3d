using Assets.Scripts.Agent.Sensors;

namespace Assets.Scripts.Agent.UI.TweakingUIInitializers
{
    public class SensorsTweakingUIInitializer
    {
        public SensorsTweakingUIInitializer(
            IAgentTweakingUI ui,
            ISensorEffectProvider sensorEffectProvider,
            ISensors sensors)
        {
            var sensorEffectCheckbox = ui.AddCheckbox("Effects", "Effects", sensorEffectProvider.IsSensorEffect);
            sensorEffectCheckbox.onValueChanged.AddListener(isActive =>
            {
                sensorEffectProvider.IsSensorEffect = isActive;
            });

            foreach (var sensor in sensors.SensorsList)
            {
                var checkbox = ui.AddCheckbox(sensor.Settings.Name, sensor.Settings.Name, sensor.IsActive.Value);
                checkbox.onValueChanged.AddListener(isActive =>
                {
                    sensor.IsActive.Value = isActive;
                });
                
                sensor.IsActive.Change += (sender, isActive) =>
                {
                    checkbox.isOn = isActive;
                };
            }

            foreach (var visualizable in sensors.VisualizablesList)
            {
                var name = "Visualize " + visualizable.Sensor.Settings.Name;
                var checkbox = ui.AddCheckbox(name, name, visualizable.IsVisualized.Value);
                checkbox.onValueChanged.AddListener(isActive =>
                {
                    visualizable.IsVisualized.Value = isActive;
                });

                visualizable.IsVisualized.Change += (sender, isActive) =>
                {
                    checkbox.isOn = isActive;
                };
            }
        }
    }
}
