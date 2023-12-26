using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.VideoSensor
{
    public interface ICameraSettingsProvider
    {
        public RenderTextureFormat RenderTextureFormat { get; }

        public RenderTextureReadWrite RenderTextureReadWrite { get; }

        public TextureFormat TextureFormat { get; }

        public int RenderTextureDepth { get; }

        public Color BackgroundColor { get; }

        public CameraClearFlags ClearFlags { get; }

        public RenderingPath RenderingPath { get; }
    }
}
