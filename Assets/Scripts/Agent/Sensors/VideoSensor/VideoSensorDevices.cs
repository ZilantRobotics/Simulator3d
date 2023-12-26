using System;
using System.Collections.Generic;
using System.Linq;
using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Configuration.AgentConfigurations.SensorsConfigurations;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.Injection;
using Assets.Scripts.TargetEnvironmentSelection;
    
namespace Assets.Scripts.Agent.Sensors.VideoSensor
{
    public class VideoSensorDevices : IConfigurableEntity<List<VideoSensorConfiguration>>, IDisposable
    {
        public List<VideoSensorConfiguration> Configuration
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

        public readonly VideoSensorDevice[] SensorsList;

        public VideoSensorDevices(
            IUnityCallbacks callbacks,
            IBridgeProvider bridgeProvider,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            IAgentGameObject agentGameObject,
            CameraSettingsProvider.Settings cameraSettings,
            PeriodicPublishingEventProviders eventProviders)
        {
            var views = agentGameObject.Transform.GetComponentsInChildren<VideoSensorDeviceView>();
            SensorsList = new VideoSensorDevice[views.Length];
            for (var i = 0; i < views.Length; i++)
            {
                var view = views[i];
                SensorsList[i] = new VideoSensorDevice(
                    new Sensor(view, eventProviders),
                    bridgeProvider,
                    targetEnvironmentProvider,
                    new CameraSettingsProvider(
                        view.CameraCaptureType, 
                        cameraSettings),
                    view);
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
