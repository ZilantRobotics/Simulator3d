using Assets.Scripts.Api.Helpers;
using Assets.Scripts.Constants;
using Assets.Scripts.Util;
using GrpcApi;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace Assets.Scripts.Api.Commands
{
    public class LoadScene
    {
        public static LoadSceneResponse Execute(LoadSceneRequest request)
        {
            try
            {
                ApiManager.Instance.DespawnObstacles();
                ApiManager.Instance.Reset();
         
                SceneManager.LoadScene(request.Scene);
                PlayerPrefs.SetString(PlayerPrefKeys.AgentIndices, JsonHelper.ToJson(new int[] { }));

                PlayerPrefs.Save();

                return new LoadSceneResponse();
            }
            catch
            {
                return new LoadSceneResponse
                {
                    Error = ErrorBuilder.WithMessage($"Scene {request.Scene} does not exist")
                };
            }
        }
    }
}
