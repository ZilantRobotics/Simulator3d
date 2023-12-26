namespace Assets.Scripts.Api.Helpers
{
    public static class AxesConverter
    {
        public static UnityEngine.Vector3 ToUnityVector3(this GrpcApi.Vector3 vector3)
        {
            return new UnityEngine.Vector3(vector3.Y, vector3.Z, vector3.X);
        }

        public static GrpcApi.Vector3 ToGrpcVector3(this UnityEngine.Vector3 vector3)
        {
            //Converting to ZXY (ISO8855) as this function called when get data requests are received
            return new GrpcApi.Vector3 { X = vector3.z, Y = vector3.x, Z = vector3.y };
        }
    }
}
