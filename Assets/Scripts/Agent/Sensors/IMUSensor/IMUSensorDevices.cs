using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.TargetEnvironmentSelection;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Assets.Scripts.Agent.Sensors.IMUSensor
{
    public class IMUSensorDevices : IConfigurableEntity<List<ImuSensorConfiguration>>, IDisposable
    {
        public List<ImuSensorConfiguration> Configuration
        {
            get => SensorsList.Select(s => s.Settings.Configuration).ToList();
            set => ConfigurationHelper.MapByName(value, SensorsList.Select(s => s.Settings));
        }

        public readonly IMUSensorDevice[] SensorsList;

        public IMUSensorDevices(
            IBridgeProvider bridgeProvider,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            IAgentGameObject agentGameObject,
            PeriodicPublishingEventProviders eventProviders)
        {
            var views = agentGameObject.Transform.GetComponentsInChildren<IMUSensorDeviceView>();
            SensorsList = new IMUSensorDevice[views.Length];
            for (var i = 0; i < views.Length; i++)
            {
                SensorsList[i] = new IMUSensorDevice(
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
