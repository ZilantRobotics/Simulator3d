using Assets.Scripts.Agent;
using GrpcApi;

namespace Assets.Scripts.Api.Commands
{
    public class Reset
    {
        public static ResetResponse Execute(ResetRequest request)
        {
            AgentsFacade.Instance.Dispose();
            ApiManager.Instance.DespawnObstacles();
            ApiManager.Instance.Reset();

            return new ResetResponse();
        }
    }
}
