using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.VideoSensor
{
    [System.Serializable]
    [CreateAssetMenu(fileName = "CameraSettings", menuName = "Settings/CameraSettings", order = 1)]
    public class CameraSettings : ScriptableObject
    {
        [SerializeField]
        public Color BackgroundColor;

        [SerializeField]
        public CameraClearFlags ClearFlags;

        [SerializeField]
        public RenderingPath RenderingPath;
    }
}
