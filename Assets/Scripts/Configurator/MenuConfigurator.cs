using Assets.Scripts.Agent.Selection;
using Assets.Scripts.LaunchEventProvider;
using Assets.Scripts.MainMenu.SceneSelection;
using Assets.Scripts.SceneSelection;
using Assets.Scripts.Selection;
using Assets.Scripts.SimulationSceneLaunching;
using Microsoft.Extensions.DependencyInjection;
using UnityEngine;
using UnityEngine.UI;

namespace Assets.Scripts.Installers
{
    [RequireComponent(typeof(Coroutines.Coroutines))]
    public class MenuConfigurator : MonoBehaviour
    {
        [Header("Scene selection")]

        [SerializeField] private Image _scenePreviewImage;

        [SerializeField] private GameObject _sceneItemsListHolder;

        [SerializeField] private SceneView _scenePrefab;

        [SerializeField] private Scene[] _scenes;

        [Header("Agent selection")]

        [SerializeField] private Text _selectedAgentText;

        [SerializeField] private GameObject _agentItemsListHolder;

        [SerializeField] private AgentView _agentPrefab;

        [SerializeField] private AgentList _agentList;

        [SerializeField] private ScrollRect _sceneSelectionScroll;

        [SerializeField] private ScrollRect _vehicleSelectionScroll;

        [SerializeField] private Dropdown _spawnSelectionDrop;

        [Header("Launch")] 
        
        [SerializeField] private Button _launchButton;

        [SerializeField] private Text _loadingText;       

        private void Start()
        {
            var services = new ServiceCollection();

            services.AddSingleton(GetComponent<Coroutines.Coroutines>());
            services.AddSingleton<ISelectedSceneProvider>(
                new SceneSelectionManager(
                    new ItemSelectionManager<Scene, SceneView>(
                        _sceneItemsListHolder, 
                        _scenePrefab),
                    _scenePreviewImage,
                    _scenes,
                    _sceneSelectionScroll));
            services.AddSingleton<ISelectedAgentsProvider>(
                new MenuAgentsSelectionManager(
                    new ItemSelectionManager<Agent.Selection.Agent, AgentView>(
                        _agentItemsListHolder,
                        _agentPrefab),
                    _selectedAgentText,
                    _agentList.Agents,
                    _spawnSelectionDrop));
            services.AddSingleton<ILaunchEventProvider>(new LaunchEventProvider.LaunchEventProvider(_launchButton));
            services.AddSingleton(s => new SimulationSceneLauncher(s.GetService<ISelectedAgentsProvider>(),
                                                                   s.GetService<ISelectedSceneProvider>(), 
                                                                   s.GetService<ILaunchEventProvider>(), 
                                                                   s.GetRequiredService<Coroutines.Coroutines>(),
                                                                   _loadingText));

            var serviceProvider = services.BuildServiceProvider();
            serviceProvider.GetRequiredService<ISelectedSceneProvider>();
            serviceProvider.GetRequiredService<ISelectedAgentsProvider>();
            serviceProvider.GetRequiredService<SimulationSceneLauncher>();           
        }
    }
}
