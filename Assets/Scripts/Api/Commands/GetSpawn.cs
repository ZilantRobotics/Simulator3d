using Assets.Scripts.Api.Helpers;
using Assets.Scripts.Installers;
using GrpcApi;

namespace Assets.Scripts.Api.Commands
{
    public class GetSpawn
    {
        public static GetSpawnResponse Execute(GetSpawnRequest request)
        {
            var result = new GetSpawnResponse();
            foreach (var spawn in SceneConfigurator.Instance.SpawnPoints.SpawnPoints)
            {
                var position = spawn.position;
                var rotation = spawn.rotation.eulerAngles;

                result.Spawns.Add(new Transform
                {
                    Position = position.ToGrpcVector3(),
                    Rotation = rotation.ToGrpcVector3()
                });
            }

            return result;
        }
    }
}
