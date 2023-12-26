using Assets.Scripts.Agent;
using Assets.Scripts.Agent.Selection;
using Assets.Scripts.Agent.SpawnControl;
using Assets.Scripts.BridgeAddressSelection;
using Assets.Scripts.Injection;
using Assets.Scripts.Mapping;
using Assets.Scripts.Util.Spawner;
using Assets.Scripts.TargetEnvironmentSelection;
using Microsoft.Extensions.DependencyInjection;
using UnityEngine;
using Assets.Scripts.Api.Commands;
using Assets.Scripts.Util.LandingPlatformController;

namespace Assets.Scripts.Installers
{
    [RequireComponent(typeof(Coroutines.Coroutines))]
    public class SceneConfigurator : MonoInstaller
    {
        public static SceneConfigurator Instance { get; private set; }

        public ISpawnPoints SpawnPoints { get; private set; }

        [SerializeField] private AgentList _agentList;

        [SerializeField] private Transform[] _spawnPoints;

        [Header("Agents Settings")]
        [SerializeField] private AgentsFacade.Settings _agentsFacadeSettings;

        [Header("Map Origin")]
        [SerializeField] private MapOriginSettings _mapOriginSettings;

        [Header("Obstacles")]
        [SerializeField] private GameObject _obstaclesHolder;
        [SerializeField] private GameObject[] _obstaclesList;

        [Header("Landing platforms")]
        [SerializeField] private Animator[] _landingPlatformsList;

        private ServiceProvider _provider;

        private void Awake()
        {
            Instance = this;
        }

        protected override void Install()
        {
            var services = new ServiceCollection();

            services.AddSingleton<IUnityCallbacks>(this);
            services.AddSingleton(GetComponent<Coroutines.Coroutines>());
            services.AddSingleton<ISelectedAgentsProvider, AgentsSelectionManager>();
            services.AddSingleton<IAgentListProvider>(new AgentListProvider(_agentList));
            services.AddSingleton<ISpawnPoints, SpawnPointsProvider>(s =>
                new SpawnPointsProvider(_spawnPoints));
            services.AddSingleton(s => new ObjectSpawner(_obstaclesHolder, _obstaclesList));
            services.AddSingleton(s => new LandingPlatformController(_landingPlatformsList));
            services.AddSingleton<BridgeAddressProvider>();
            services.AddSingleton<ITargetEnvironmentProvider,
                    SavedTargetEnvironmentProvider>();
            services.AddSingleton<IAgentsFacade>(s =>
                new AgentsFacade(
                    s.GetRequiredService<IUnityCallbacks>(),
                    s.GetRequiredService<ISelectedAgentsProvider>(),
                    s.GetRequiredService<IAgentListProvider>(),
                    s.GetRequiredService<ISpawnPoints>(),
                    s.GetRequiredService<MapOrigin>(),
                    _agentsFacadeSettings,
                    s.GetRequiredService<Coroutines.Coroutines>()));

            services.AddSingleton(_mapOriginSettings);
            services.AddSingleton<MapOrigin>(s => new MapOrigin(_mapOriginSettings));

            _provider = services.BuildServiceProvider();
            _provider.GetRequiredService<IAgentsFacade>();
            _provider.GetRequiredService<MapOrigin>();
            _provider.GetRequiredService<ObjectSpawner>();
            _provider.GetRequiredService<LandingPlatformController>();

            SpawnPoints = _provider.GetRequiredService<ISpawnPoints>();
        }

        [ContextMenu("Editor Install")]
        public void EditorInstall()
        {
            SceneConfigurator.Instance = this;
            var services = new ServiceCollection();
            services.AddSingleton(_mapOriginSettings);
            services.AddSingleton<MapOrigin>();
            var provider = services.BuildServiceProvider();
        }

        private void OnApplicationQuit()
        {
            _provider?.Dispose();
        }

        private void OnDestroy()
        {
            _provider?.Dispose();
        }
    }
}