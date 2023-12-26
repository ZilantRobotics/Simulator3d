using UnityEngine;

namespace Assets.Scripts.Mapping
{
    [System.Serializable]
    [CreateAssetMenu(fileName = "MapOrigin", menuName = "MapOrigin")]
    public class MapOriginSettings : ScriptableObject
    {
        public float OriginNorthing;
        public float OriginEasting;
        public float Angle;
        public int UTMZoneId;
        public float AltitudeOffset;
    }
}
