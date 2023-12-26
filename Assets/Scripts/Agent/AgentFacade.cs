using Assets.Scripts.Agent.Configuration;
using Assets.Scripts.Agent.Sensors;
using Assets.Scripts.Agent.Sensors.VideoSensor;
using Assets.Scripts.Agent.SpawnControl;
using Assets.Scripts.Agent.UI;
using Assets.Scripts.Agent.UI.TweakingUIInitializers;
using Assets.Scripts.BridgeAddressSelection;
using Assets.Scripts.BridgeManagement;
using Assets.Scripts.Injection;
using Assets.Scripts.Mapping;
using Assets.Scripts.TargetEnvironmentSelection;
using Assets.Scripts.Agent.Controllers.BehaviorController;
using Microsoft.Extensions.DependencyInjection;
using System;
using UnityEngine;

namespace Assets.Scripts.Agent
{
    public class AgentFacade : IAgentFacade
    {
        public Guid Id { get; }

        public string Name { get; }

        public AgentConfiguration Configuration
        {
            get
            {
                var configuration = new AgentConfiguration
                {
                    Name = Name,
                    SensorsConfiguration = Sensors.Configuration
                };
                return configuration;
            }
            set => Sensors.Configuration = value.SensorsConfiguration;
        }

        public ISensors Sensors { get; }

        public IBridgeProvider BridgeProvider { get; }

        public ITargetEnvironmentProvider TargetEnvironmentProvider { get; }

        public GameObject GameObject => _agentGameObject.Transform.gameObject;

        public Vector3 Position => _agentGameObject.Transform.position;

        public IAgentTweakingUI AgentTweakingUI { get; }

        public IAgentUI AgentUI { get; }

        public BridgeAddressProvider BridgeAddressProvider { get; }

        private readonly IAgentGameObject _agentGameObject;

        private readonly ServiceProvider _provider;

        public AgentFacade(
            IUnityCallbacks callbacks,
            Selection.Agent agent,
            ISpawnPoints spawnPoints,
            IConfigurationManager configurationManager,
            MapOrigin mapOrigin,
            Settings settings,
            Coroutines.Coroutines coroutines, 
            int spawnIndex = 0)
        {
            Id = Guid.NewGuid();
            Name = agent.Name;

            var services = new ServiceCollection();

            services.AddSingleton(callbacks);

            services.AddSingleton<ITargetEnvironmentProvider, SavedTargetEnvironmentProvider>();
            services.AddSingleton<BridgeAddressProvider>();
            services.AddSingleton<IBridgeProvider, BridgeManager>();
            services.AddSingleton(spawnPoints);
            services.AddSingleton(configurationManager);
            services.AddSingleton<IAgentGameObject>(s => new AgentGameObject(
                agent.Prefab,
                settings.Managers));
            services.AddSingleton<ISpawnController>(s => new SpawnController(
                spawnPoints, 
                _agentGameObject, 
                spawnIndex));
            services.AddSingleton<IAgentUI>(s => new AgentUI(
                callbacks,
                settings.AgentUIPrefab,
                s.GetRequiredService<ISensors>(),
                s.GetRequiredService<IBridgeProvider>(),
                configurationManager,
                s.GetRequiredService<BridgeAddressProvider>()));
            services.AddSingleton<IAgentTweakingUI>(s => new AgentTweakingUI(
                s.GetRequiredService<IAgentUI>(),
                settings.AgentTweakingUISettings));
            services.AddSingleton<ISensorEffectProvider, SensorEffectProvider>();
            services.AddSingleton<ISensors>(s => new Sensors.Sensors(
                callbacks,
                s.GetRequiredService<IBridgeProvider>(),
                s.GetRequiredService<ITargetEnvironmentProvider>(),
                s.GetRequiredService<IAgentGameObject>(),
                s.GetRequiredService<ISensorEffectProvider>(),
                settings.CameraSettingsProviderSettings,
                mapOrigin,
                settings.LidarShader));
            services.AddSingleton(s => new SensorsTweakingUIInitializer(
                s.GetRequiredService<IAgentTweakingUI>(), 
                s.GetRequiredService<ISensorEffectProvider>(), 
                s.GetRequiredService<ISensors>()));

            services.AddSingleton<ICameraPreview>(s => new CameraPreview(
                s.GetRequiredService<IAgentUI>(),
                settings.CameraPreviewPrefab));

            services.AddSingleton<SensorsCameraPreviewInitializer>();
            services.AddSingleton(s => new AgentViewsBinder(
                s.GetRequiredService<IAgentGameObject>(),
                s.GetRequiredService<IAgentTweakingUI>(),
                s.GetRequiredService<ICameraPreview>()));
            services.AddSingleton(s => new BehaviorController(
                s.GetRequiredService<IAgentGameObject>().GetComponent<BehaviorControllerView>(),
                s.GetRequiredService<ITargetEnvironmentProvider>(),
                s.GetRequiredService<IBridgeProvider>(), 
                mapOrigin));
                    
            _provider = services.BuildServiceProvider();

            Sensors = _provider.GetRequiredService<ISensors>();
            BridgeProvider = _provider.GetRequiredService<IBridgeProvider>();
            _agentGameObject = _provider.GetRequiredService<IAgentGameObject>();
            AgentTweakingUI = _provider.GetRequiredService<IAgentTweakingUI>();
            TargetEnvironmentProvider = _provider.GetRequiredService<ITargetEnvironmentProvider>();
            BridgeAddressProvider = _provider.GetRequiredService<BridgeAddressProvider>();
            AgentUI = _provider.GetRequiredService<IAgentUI>();

            _provider.GetRequiredService<ISpawnController>();
            _provider.GetRequiredService<SensorsTweakingUIInitializer>();

            _provider.GetRequiredService<AgentViewsBinder>();
            _provider.GetRequiredService<SensorsCameraPreviewInitializer>();

            _provider.GetRequiredService<BehaviorController>();
        }

        [Serializable]
        public class Settings
        {
            [SerializeField]
            public GameObject AgentUIPrefab;

            [SerializeField]
            public AgentTweakingUI.Settings AgentTweakingUISettings;

            [SerializeField]
            public GameObject CameraPreviewPrefab;

            [SerializeField]
            public GameObject[] Managers;

            [SerializeField]
            public CameraSettingsProvider.Settings CameraSettingsProviderSettings;

            [SerializeField]
            public ComputeShader LidarShader;
        }

        public void Dispose()
        {
            _provider.Dispose();
        }
    }
}
