using Assets.Scripts.Api.Helpers;
using GrpcApi;
using UnityEngine;
using Assets.Scripts.Util.Spawner;

namespace Assets.Scripts.Api.Commands
{
    public class SpawnObstacle
    {
        public static SpawnObstacleResponse Execute(SpawnObstacleRequest request)
        {
            var name = request.Name;

            var position = request.Transform.Position.ToUnityVector3();
            var rotation = request.Transform.Rotation.ToUnityVector3();

            var go = ObjectSpawner.Instance.SpawnObject(name, position, rotation);
            SpawnObstacleResponse addObstacleResponse = GetResponse(name, go);

            return addObstacleResponse;
        }

        private static SpawnObstacleResponse GetResponse(string name, GameObject go)
        {
            SpawnObstacleResponse addObstacleResponse = new();

            if (go == null)
            {
                string errorMsg = $"Unknown '{name}' obstacle name";

                addObstacleResponse = new SpawnObstacleResponse
                {
                    Error = ErrorBuilder.WithMessage(errorMsg)
                };
            }

            if (go != null)
            {
                addObstacleResponse = new SpawnObstacleResponse
                {
                    Uid = ApiManager.Instance.ObstaclesUID[go].ToString()
                };
            }

            return addObstacleResponse;
        }
    }
}