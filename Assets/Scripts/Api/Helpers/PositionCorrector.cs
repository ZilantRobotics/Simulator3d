using GrpcApi;
using UnityEngine;
using Vector3 = UnityEngine.Vector3;

namespace Assets.Scripts.Api.Helpers
{
    public static class CommandPositionCorrector
    {
        public static Vector3 CorrectWorldPos(Vector3 pos)
        {
            if (Physics.Raycast(new Vector3(pos.x, pos.y + 1000, pos.z), Vector3.down, out var hit, 5000, 1 << LayerMask.NameToLayer("Ground And Road")))
            {
                pos = hit.point;
            }

            return pos;
        }
    }
}
