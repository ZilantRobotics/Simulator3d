using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.LidarSensor
{
    public class RenderTextureCombiner : IDisposable
    {
        public RenderTexture Texture { get; }

        public readonly Vector3[] BottomLefts;

        public readonly Vector3[] DeltaXs;

        public readonly Vector3[] DeltaYs;

        public readonly int SegmentWidth;

        public readonly double[] PartsTimestamps;

        private readonly Camera _camera;

        private readonly Vector2 _fov;

        private readonly int _segmentsCount;

        private readonly float _partFov;

        private readonly RenderTexture[] _parts;


        private static readonly DateTime _unixepoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);

        public RenderTextureCombiner(
            Camera camera,
            int width,
            int height,
            int partsCount,
            Vector2 fov)
        {
            _camera = camera;
            _fov = fov;
            _segmentsCount = partsCount;

            Texture = CreateRenderTexture(width, height);
            Texture.Create();

            SegmentWidth = width / _segmentsCount;
            _partFov = _fov.x / _segmentsCount;
            _parts = new RenderTexture[_segmentsCount];
            PartsTimestamps = new double[_segmentsCount];
            for (var i = 0; i < _parts.Length; i++)
            {
                _parts[i] = CreateRenderTexture(SegmentWidth, height);
            }

            _camera.aspect = _partFov / _fov.y;
            _camera.fieldOfView = _fov.y;

            BottomLefts = new Vector3[_segmentsCount];
            DeltaXs = new Vector3[_segmentsCount];
            DeltaYs = new Vector3[_segmentsCount];
        }

        public void Dispose()
        {
            Texture?.Release();
            foreach (var part in _parts)
            {
                part.Release();
            }
        }

        private static RenderTexture CreateRenderTexture(int width, int height)
        {
            var texture = new RenderTexture(
                width,
                height,
                24,
                RenderTextureFormat.ARGBFloat,
                RenderTextureReadWrite.Linear)
            {
                enableRandomWrite = true
            };
            texture.Create();
            return texture;
        }

        public void Render()
        {
            var deltaAngle = _fov.x / _parts.Length;
            var startingAngle = -_fov.x / 2;

            for (var i = 0; i < _parts.Length; i++)
            {
                var texture = _parts[i];
                _camera.transform.localRotation = Quaternion.Euler(0, startingAngle + deltaAngle * i + deltaAngle / 2, 0);
                _camera.targetTexture = texture;
                _camera.Render();
                Graphics.CopyTexture(_parts[i], 0, 0, 0, 0, texture.width, texture.height, Texture, 0, 0, SegmentWidth * i, 0);

                var bottomLeft = _camera.ViewportPointToRay(new Vector2(0, 0)).direction;
                var bottomRight = _camera.ViewportPointToRay(new Vector2(1, 0)).direction;
                var topRight = _camera.ViewportPointToRay(new Vector2(1, 1)).direction;
                var deltaX = (bottomRight - bottomLeft) / texture.width;
                var deltaY = (topRight - bottomRight) / texture.height;
                BottomLefts[i] = bottomLeft;
                DeltaXs[i] = deltaX;
                DeltaYs[i] = deltaY;
                PartsTimestamps[i] = (DateTime.UtcNow - _unixepoch).TotalSeconds;
            }
        }
    }
}
