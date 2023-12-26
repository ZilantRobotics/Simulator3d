using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.VideoSensor
{
    public class CameraSettingsProvider : ICameraSettingsProvider
    {
        public RenderTextureFormat RenderTextureFormat { get; }
        public RenderTextureReadWrite RenderTextureReadWrite { get; }
        public TextureFormat TextureFormat { get; }
        public int RenderTextureDepth { get; }
        public Color BackgroundColor => _settings.BackgroundColor;
        public CameraClearFlags ClearFlags => _settings.ClearFlags;
        public RenderingPath RenderingPath => _settings.RenderingPath;

        private readonly CameraSettings _settings;

        public CameraSettingsProvider(
            CaptureType captureType,
            Settings settings)
        {
            switch (captureType)
            {
                case CaptureType.Capture:
                    _settings = settings.CaptureCameraSettings;
                    RenderTextureFormat = RenderTextureFormat.ARGB32;
                    RenderTextureReadWrite = RenderTextureReadWrite.sRGB;
                    TextureFormat = TextureFormat.RGB24;
                    RenderTextureDepth = 24;
                    break;
                case CaptureType.Segmentation:
                    _settings = settings.SegmentationCameraSettings;
                    RenderTextureFormat = RenderTextureFormat.ARGB32;
                    RenderTextureReadWrite = RenderTextureReadWrite.sRGB;
                    TextureFormat = TextureFormat.RGB24;
                    RenderTextureDepth = 24;
                    break;
                case CaptureType.Depth:
                    _settings = settings.DepthCameraSettings;
                    RenderTextureFormat = RenderTextureFormat.ARGB32;
                    RenderTextureReadWrite = RenderTextureReadWrite.Linear;
                    TextureFormat = TextureFormat.RGB24;
                    RenderTextureDepth = 24;
                    break;
                case CaptureType.Infrared:
                    _settings = settings.InfraredCameraSettings;
                    RenderTextureFormat = RenderTextureFormat.ARGB32;
                    RenderTextureReadWrite = RenderTextureReadWrite.sRGB;
                    TextureFormat = TextureFormat.RGB24;
                    RenderTextureDepth = 24;
                    break;
            }
        }

        [Serializable]
        public class Settings
        {
            [SerializeField]
            public CameraSettings CaptureCameraSettings;

            [SerializeField]
            public CameraSettings SegmentationCameraSettings;

            [SerializeField]
            public CameraSettings DepthCameraSettings;

            [SerializeField]
            public CameraSettings InfraredCameraSettings;
        }

        public static Point2D GetSize(ResolutionType resolutionType)
        {
            return resolutionType switch
            {
                ResolutionType.SD => new Point2D(640, 480),
                ResolutionType.HD => new Point2D(1920, 1080),
                ResolutionType.Leopard => new Point2D(2880, 1860),
                _ => new Point2D()
            };
        }
    }
}
