using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.TargetEnvironmentSelection;
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.LidarSensor
{
    public class LidarSensorDevices : IConfigurableEntity<List<LidarSensorConfiguration>>, IDisposable
    {
        public List<LidarSensorConfiguration> Configuration
        {
            get
            {
                return SensorsList.Select(s => s.Settings.Configuration).ToList();
            }
            set
            {
                ConfigurationHelper.MapByName(value, SensorsList.Select(s => s.Settings));
            }
        }

        public readonly LidarSensorDevice[] SensorsList;

        public LidarSensorDevices(
            IBridgeProvider bridgeProvider,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            IAgentGameObject agentGameObject,
            ISensorEffectProvider sensorEffectProvider,
            ComputeShader shader,
            PeriodicPublishingEventProviders eventProviders)
        {

            var views = agentGameObject.Transform.GetComponentsInChildren<LidarSensorDeviceView>();
            SensorsList = new LidarSensorDevice[views.Length];
            for (var i = 0; i < views.Length; i++)
            {
                SensorsList[i] = new LidarSensorDevice(
                    new Sensor(views[i], eventProviders),
                    views[i],
                    shader,
                    targetEnvironmentProvider,
                    bridgeProvider,
                    sensorEffectProvider);
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
