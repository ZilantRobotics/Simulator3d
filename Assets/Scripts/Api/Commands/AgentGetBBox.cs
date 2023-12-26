using Assets.Scripts.Api.Helpers;
using GrpcApi;
using System;
using System.Collections.Generic;
using UnityEngine;
using Vector3 = UnityEngine.Vector3;

namespace Assets.Scripts.Api.Commands
{
    public class AgentGetBBox
    {
        public static AgentGetBBoxResponse Execute(AgentGetBBoxRequest request)
        {
            var uid = Guid.Parse(request.Uid);

            if (ApiManager.Instance.TryGetGameObjectById(uid, out var obj))
            {
                var collider = obj.GetComponentInChildren<BoxCollider>();
                
                if (collider != null )
                {
                    return new AgentGetBBoxResponse
                    {
                        Box = new BoundingBox
                        {
                            Max = collider.bounds.max.ToGrpcVector3(),
                            Min = collider.bounds.min.ToGrpcVector3()
                        }
                    };
                }
            }

            return new AgentGetBBoxResponse
            {
                Error = ErrorBuilder.WithMessage($"Agent '{uid}' not found")
            };
        }
    }
}
