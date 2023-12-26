using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.TargetEnvironmentSelection;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Assets.Scripts.Agent.Sensors.AltimeterSensor
{
    public class AltimeterSensorDevices : IConfigurableEntity<List<AltimeterSensorConfiguration>>, IDisposable
    {
        public List<AltimeterSensorConfiguration> Configuration
        {
            get => SensorsList.Select(s => s.Settings.Configuration).ToList();
            set => ConfigurationHelper.MapByName(value, SensorsList.Select(s => s.Settings));
        }

        public readonly AltimeterSensorDevice[] SensorsList;

        public AltimeterSensorDevices(
        IBridgeProvider bridgeProvider,
        ITargetEnvironmentProvider targetEnvironmentProvider,
        IAgentGameObject agentGameObject,
        PeriodicPublishingEventProviders eventProviders)
        {
            var views = agentGameObject.Transform.GetComponentsInChildren<AltimeterSensorDeviceView>();
            SensorsList = new AltimeterSensorDevice[views.Length];
            for (var i = 0; i < views.Length; i++)
            {
                SensorsList[i] = new AltimeterSensorDevice(
                    new Sensor(views[i], eventProviders),
                    bridgeProvider,
                    targetEnvironmentProvider,
                    views[i]);
            }
        }

        public void Dispose()
        {
            foreach (var sensor in SensorsList)
            {
                sensor.Dispose();
            }
        }
    }
}