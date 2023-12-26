using GrpcApi;

namespace Assets.Scripts.Api.Commands
{
    public class GetCurrentScene
    {
        public static GetCurrentSceneResponse Execute(GetCurrentSceneRequest request)
        {
            var scene = ApiManager.Instance.CurrentScene;
            if (string.IsNullOrEmpty(scene))
            {
                return new GetCurrentSceneResponse();
            }

            return new GetCurrentSceneResponse
            {
                Scene = scene
            };
        }
    }
}
