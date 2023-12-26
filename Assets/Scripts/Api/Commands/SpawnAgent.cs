using Assets.Scripts.Agent;
using Assets.Scripts.Api.Helpers;
using GrpcApi;
using UnityEngine;
using Vector3 = UnityEngine.Vector3;
using System.Collections.Generic;
using System;

namespace Assets.Scripts.Api.Commands
{
    public class SpawnAgent
    {
        public static SpawnAgentResponse Execute(SpawnAgentRequest request)
        {
            var name = request.Name;
            var type = request.Type;
            var position = request.State.Transform.Position.ToUnityVector3();
            var rotation = request.State.Transform.Rotation.ToUnityVector3();
            var velocity = request.State.Velocity.ToUnityVector3();
            var angularVelocity = request.State.AngularVelocity.ToUnityVector3();

            switch (request.Type)
            {
                case SpawnAgentRequest.Types.Type.Agent:
                {
                    var agent = AgentsFacade.Instance.AddAgentByName(name);
                    if (agent == null)
                    {
                        return new SpawnAgentResponse
                        {
                            Error = ErrorBuilder.WithMessage($"Unknown '{name}' agent name")
                        };
                    }

                    var agentGameObject = agent.GameObject;
                    agentGameObject.transform.position = position;
                    agentGameObject.transform.rotation = Quaternion.Euler(rotation);

                    return new SpawnAgentResponse
                    {
                        Uid = agent.Id.ToString()
                    };
                }

                default:
                    return new SpawnAgentResponse
                    {
                        Error = ErrorBuilder.WithMessage($"Unsupported '{type}' type")
                    };
            }
        }
    }
}