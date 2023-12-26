using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.TargetEnvironmentSelection;
using System.Collections.Generic;
using System.Linq;
using Assets.Scripts.Mapping;
using System;

namespace Assets.Scripts.Agent.Sensors.GPSSensor
{
    public class GPSSensorsDevices : IConfigurableEntity<List<GpsSensorConfiguration>>, IDisposable
    {
        public List<GpsSensorConfiguration> Configuration
        {
            get => SensorsList.Select(s => s.Settings.Configuration).ToList();
            set => ConfigurationHelper.MapByName(value, SensorsList.Select(s => s.Settings));
        }

        public readonly GPSSensorDevice[] SensorsList;

        public GPSSensorsDevices(
            IBridgeProvider bridgeProvider,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            IAgentGameObject agentGameObject,
            MapOrigin mapOrigin,
            PeriodicPublishingEventProviders eventProviders)
        {
            var views = agentGameObject.Transform.GetComponentsInChildren<GPSSensorDeviceView>();
            SensorsList = new GPSSensorDevice[views.Length];
            for (var i = 0; i < views.Length; i++)
            {
                SensorsList[i] = new GPSSensorDevice(
                    new Sensor(views[i], eventProviders),
                    bridgeProvider,
                    targetEnvironmentProvider,
                    views[i],
                    mapOrigin);
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
