using Assets.Scripts.Agent;
using Assets.Scripts.Api.Helpers;
using GrpcApi;
using System;
using System.Linq;

namespace Assets.Scripts.Api.Commands
{
    public class RemoveAgent
    {
        public static RemoveAgentResponse Execute(RemoveAgentRequest request)
        {
            var uid = Guid.Parse(request.Uid);

            var agent = AgentsFacade.Instance.Agents.FirstOrDefault(a => a.Id == uid);
            if (agent != null)
            {
                AgentsFacade.Instance.RemoveAgentById(uid);

                return new RemoveAgentResponse();
            }

            return new RemoveAgentResponse
            {
                Error = ErrorBuilder.WithMessage($"Agent '{uid}' not found")
            };
        }
    }
}
