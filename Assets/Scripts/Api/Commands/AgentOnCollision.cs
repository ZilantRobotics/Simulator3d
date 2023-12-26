using Assets.Scripts.Api.Helpers;
using GrpcApi;
using System;

namespace Assets.Scripts.Api.Commands
{
    public class AgentOnCollision
    {
        public static AgentOnCollisionResponse Execute(AgentOnCollisionRequest request)
        {
            var api = ApiManager.Instance;
            var uid = Guid.Parse(request.Uid);

            if (api.TryGetGameObjectById(uid, out var obj))
            {
                api.Collisions.Add(obj);

                return new AgentOnCollisionResponse();
            }

            return new AgentOnCollisionResponse
            {
                Error = ErrorBuilder.WithMessage($"Agent '{uid}' not found")
            };
        }
    }
}
