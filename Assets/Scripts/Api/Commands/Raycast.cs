using Assets.Scripts.Api.Helpers;
using GrpcApi;
using UnityEngine;

namespace Assets.Scripts.Api.Commands
{
    public class Raycast
    {
        public static RaycastResponse Execute(RaycastRequest request)
        {
            var origin = request.Origin.ToUnityVector3();
            var direction = request.Direction.ToUnityVector3();
            var layerMask = request.LayerMask;
            var maxDistance = request.MaxDistance;

            if (Physics.Raycast(origin, direction, out var hit, maxDistance, layerMask))
            {
                return new RaycastResponse
                {
                    Distance = hit.distance,
                    Point = hit.point.ToGrpcVector3(),
                    Normal = hit.normal.ToGrpcVector3()
                };
            }

            return new RaycastResponse();
        }
    }
}
