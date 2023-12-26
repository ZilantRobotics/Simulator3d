using System;
using Assets.Scripts.Agent.Configuration.AgentConfigurations;
using Assets.Scripts.Agent.Sensors.GPSSensor;
using Assets.Scripts.Agent.Sensors.IMUSensor;
using Assets.Scripts.Agent.Sensors.LidarSensor;
using Assets.Scripts.Agent.Sensors.VideoSensor;
using Assets.Scripts.Agent.Sensors.AltimeterSensor;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.Injection;
using Assets.Scripts.TargetEnvironmentSelection;
using System.Collections.Generic;
using System.Linq;
using Assets.Scripts.Mapping;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors
{
    public sealed class Sensors : ISensors, IDisposable
    {
        public SensorsConfiguration Configuration
        {
            get =>
                new SensorsConfiguration
                {
                    GpsSensorConfigurations = _gpsSensors.Configuration,
                    ImuSensorConfigurations = _imuSensors.Configuration,
                    LidarSensorConfigurations = _lidarSensors.Configuration,
                    VideoSensorConfigurations = _videoSensors.Configuration,
                    AltimeterSensorConfigurations = _altimeterSensors.Configuration
                };
            set
            {
                _gpsSensors.Configuration = value.GpsSensorConfigurations;
                _imuSensors.Configuration = value.ImuSensorConfigurations;
                _lidarSensors.Configuration = value.LidarSensorConfigurations;
                _videoSensors.Configuration = value.VideoSensorConfigurations;
                _altimeterSensors.Configuration = value.AltimeterSensorConfigurations;
                OnConfigurationChange?.Invoke(this, EventArgs.Empty);
            }
        }

        public event EventHandler OnConfigurationChange;

        public Sensor[] SensorsList => _sensorsList.ToArray();

        public IVisualizableSensor[] VisualizablesList => _visualizablesList.ToArray();

        public ISensorSettings[] SensorsSettingsList => _sensorsSettingsList.ToArray();

        public ISensorWithCamera[] SensorsWithCameraList => _sensorsWithCameraList.ToArray();
        public LidarSensor.LidarSensorDevice[] LidarSensorsList => _lidarSensors.SensorsList;
        public VideoSensor.VideoSensorDevice[] VideoSensorsList => _videoSensors.SensorsList;
        public GPSSensor.GPSSensorDevice[] GPSSensorsList => _gpsSensors.SensorsList;
        public IMUSensor.IMUSensorDevice[] IMUSensorsList => _imuSensors.SensorsList;
        public AltimeterSensor.AltimeterSensorDevice[] AltimeterSensorsList => _altimeterSensors.SensorsList;


        private readonly List<Sensor> _sensorsList;

        private readonly List<IVisualizableSensor> _visualizablesList;

        private readonly List<ISensorSettings> _sensorsSettingsList;

        private readonly List<ISensorWithCamera> _sensorsWithCameraList;

        private readonly LidarSensorDevices _lidarSensors;

        private readonly VideoSensorDevices _videoSensors;

        private readonly GPSSensorsDevices _gpsSensors;

        private readonly IMUSensorDevices _imuSensors;

        private readonly AltimeterSensorDevices _altimeterSensors;

        public Sensors(
            IUnityCallbacks callbacks,
            IBridgeProvider bridgeProvider,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            IAgentGameObject agentGameObject,
            ISensorEffectProvider sensorEffectProvider,
            CameraSettingsProvider.Settings cameraSettings,
            MapOrigin mapOrigin,
            ComputeShader lidarShader)
        {
            var eventProviders = new PeriodicPublishingEventProviders(callbacks);

            _lidarSensors = new LidarSensorDevices(
                bridgeProvider,
                targetEnvironmentProvider,
                agentGameObject,
                sensorEffectProvider,
                lidarShader,
                eventProviders);
            _videoSensors = new VideoSensorDevices(
                callbacks,
                bridgeProvider,
                targetEnvironmentProvider,
                agentGameObject,
                cameraSettings,
                eventProviders);
            _gpsSensors = new GPSSensorsDevices(
                bridgeProvider,
                targetEnvironmentProvider,
                agentGameObject,
                mapOrigin,
                eventProviders);
            _imuSensors = new IMUSensorDevices(
                bridgeProvider,
                targetEnvironmentProvider,
                agentGameObject,
                eventProviders);
            _altimeterSensors = new AltimeterSensorDevices(
                bridgeProvider,
                targetEnvironmentProvider,
                agentGameObject,
                eventProviders);


            _sensorsList = new List<Sensor>();
            _sensorsList.AddRange(_lidarSensors.SensorsList.Select(s => s.Sensor));
            _sensorsList.AddRange(_videoSensors.SensorsList.Select(s => s.Sensor));
            _sensorsList.AddRange(_gpsSensors.SensorsList.Select(s => s.Sensor));
            _sensorsList.AddRange(_imuSensors.SensorsList.Select(s => s.Sensor));
            _sensorsList.AddRange(_altimeterSensors.SensorsList.Select(s => s.Sensor));

            _visualizablesList = new List<IVisualizableSensor>();

            _sensorsSettingsList = new List<ISensorSettings>();
            _sensorsSettingsList.AddRange(_lidarSensors.SensorsList.Select(s => s.Settings));
            _sensorsSettingsList.AddRange(_videoSensors.SensorsList.Select(s => s.Settings));
            _sensorsSettingsList.AddRange(_gpsSensors.SensorsList.Select(s => s.Settings));
            _sensorsSettingsList.AddRange(_imuSensors.SensorsList.Select(s => s.Settings));
            _sensorsSettingsList.AddRange(_altimeterSensors.SensorsList.Select(s => s.Settings));

            _sensorsWithCameraList = new List<ISensorWithCamera>();
            _sensorsWithCameraList.AddRange(_videoSensors.SensorsList);
        }

        public void Dispose()
        {
            _gpsSensors.Dispose();
            _imuSensors.Dispose();
            _lidarSensors.Dispose();
            _videoSensors.Dispose();
            _altimeterSensors.Dispose();

            foreach (var sensor in SensorsList)
            {
                sensor.Dispose();
            }
        }
    }
}
