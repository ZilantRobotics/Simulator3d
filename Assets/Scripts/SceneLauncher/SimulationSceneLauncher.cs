using Assets.Scripts.Agent.Selection;
using Assets.Scripts.Constants;
using Assets.Scripts.LaunchEventProvider;
using Assets.Scripts.MainMenu.SceneSelection;
using Assets.Scripts.Util;
using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace Assets.Scripts.SimulationSceneLaunching
{
    public class SimulationSceneLauncher
    {
        private readonly ISelectedAgentsProvider _agentsProvider;
        private readonly ISelectedSceneProvider _sceneProvider;
        private Coroutines.Coroutines _coroutines;
        private Text _loadingText;

        public SimulationSceneLauncher(
            ISelectedAgentsProvider agentsProvider,
            ISelectedSceneProvider sceneProvider,
            ILaunchEventProvider launchEventProvider,
            Coroutines.Coroutines coroutine,
            Text loadingText)
        {
            _agentsProvider = agentsProvider;
            _sceneProvider = sceneProvider;
            _coroutines = coroutine;
            _loadingText = loadingText;           

            launchEventProvider.GetLaunchEvent().AddListener(OnLaunchEvent);
        }

        private void OnLaunchEvent()
        {
            PlayerPrefs.SetString(PlayerPrefKeys.AgentIndices, JsonHelper.ToJson(_agentsProvider.GetSelectedAgentIndices()));
            PlayerPrefs.SetString(PlayerPrefKeys.SpawnSpotIndex, JsonHelper.ToJson(_agentsProvider.GetSelectedSpawnIndex()));
            PlayerPrefs.Save();
            Time.timeScale = 1;

            _coroutines.StartCoroutine(LoadSceneAsync(_sceneProvider.GetSelectedSceneIndex()));
        }

        IEnumerator LoadSceneAsync(int sceneID)
        {
            float progress = 0f;

            AsyncOperation asyncOperation = SceneManager.LoadSceneAsync(sceneID);
            asyncOperation.allowSceneActivation = false;
            
            while (progress <= 1f)
            {
                _loadingText.text = Mathf.Round(progress * 100f).ToString("0");

                progress += .01f;

                yield return new WaitForSeconds(.01f);
            }

            while (!asyncOperation.isDone && progress >= 1f)
            {
                asyncOperation.allowSceneActivation = true;

                yield return null;
            }
        }
    }
}
