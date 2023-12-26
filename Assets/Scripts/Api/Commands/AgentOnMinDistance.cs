using Assets.Scripts.Api.Helpers;
using GrpcApi;
using System;

namespace Assets.Scripts.Api.Commands
{
    public class AgentOnMinDistance 
    {
        public static AgentOnMinDistanceResponse Execute(AgentOnMinDistanceRequest request)
        {
            var api = ApiManager.Instance;
            var uid = Guid.Parse(request.Uid);

            if (api.TryGetGameObjectById(uid, out var obj))
            {
                return new AgentOnMinDistanceResponse();
            }

            return new AgentOnMinDistanceResponse
            {
                Error = ErrorBuilder.WithMessage($"Agent '{uid}' not found")
            };
        }
    }
}