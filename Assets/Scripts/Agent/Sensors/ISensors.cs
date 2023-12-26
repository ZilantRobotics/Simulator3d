using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations;
using Assets.Scripts.Agent.Sensors.LidarSensor;
using System;

namespace Assets.Scripts.Agent.Sensors
{
    public interface ISensors : IConfigurableEntity<SensorsConfiguration>
    {
        public event EventHandler OnConfigurationChange;

        public Sensor[] SensorsList { get; }

        public IVisualizableSensor[] VisualizablesList { get; }

        public ISensorSettings[] SensorsSettingsList { get; }

        public ISensorWithCamera[] SensorsWithCameraList { get; }

        public LidarSensor.LidarSensorDevice[] LidarSensorsList { get; }

        public VideoSensor.VideoSensorDevice[] VideoSensorsList { get; }

        public GPSSensor.GPSSensorDevice[] GPSSensorsList { get; }

        public IMUSensor.IMUSensorDevice[] IMUSensorsList { get; }

        public AltimeterSensor.AltimeterSensorDevice[] AltimeterSensorsList { get; }
    }
}
