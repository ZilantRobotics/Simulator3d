using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors.LidarSensor.PointCloudRetrievers
{
    public class PointCloudRetriever : IDisposable
    {
        public Vector4[] PointCloud { get; }

        public ComputeBuffer PointCloudBuffer { get; }

        private readonly ComputeShader _shader;

        private readonly Transform _transform;

        private readonly int _size;

        private readonly ComputeBuffer _bottomLefts;

        private readonly ComputeBuffer _deltaXs;

        private readonly ComputeBuffer _deltaYs;

        private readonly int _kernelIndex;

        private RenderTextureCombiner _combiner;

        public PointCloudRetriever(
            Transform transform,
            ComputeShader shader,
            RenderTextureCombiner combiner)
        {
            _transform = transform;
            _shader = UnityEngine.Object.Instantiate(shader);
            _combiner = combiner;
            _kernelIndex = _shader.FindKernel("CSMain");
            _shader.SetTexture(_kernelIndex, "Data", _combiner.Texture);
            _shader.SetInt("Width", _combiner.Texture.width);
            _shader.SetInt("SegmentWidth", _combiner.SegmentWidth);
            _shader.SetInt("Height", _combiner.Texture.height);
            _size = _combiner.Texture.width * _combiner.Texture.height;

            PointCloudBuffer = new ComputeBuffer(_size, 16);
            _shader.SetBuffer(_kernelIndex, "PointCloud", PointCloudBuffer);

            _bottomLefts = new ComputeBuffer(combiner.BottomLefts.Length, 12);
            _shader.SetBuffer(_kernelIndex, "BottomLefts", _bottomLefts);

            _deltaXs = new ComputeBuffer(combiner.DeltaXs.Length, 12);
            _shader.SetBuffer(_kernelIndex, "DeltaXs", _deltaXs);

            _deltaYs = new ComputeBuffer(combiner.DeltaYs.Length, 12);
            _shader.SetBuffer(_kernelIndex, "DeltaYs", _deltaYs);

            PointCloud = new Vector4[_size];
        }

        public void Dispose()
        {
            PointCloudBuffer?.Release();
            _bottomLefts?.Release();
            _deltaXs?.Release();
            _deltaYs?.Release();
        }

        public void Retrieve()
        {
            if (_combiner.Texture == null)
            {
                return;
            }

            _shader.SetVector("Origin", _transform.position);
            _bottomLefts.SetData(_combiner.BottomLefts);
            _deltaXs.SetData(_combiner.DeltaXs);
            _deltaYs.SetData(_combiner.DeltaYs);

            _shader.Dispatch(_kernelIndex, _combiner.Texture.width / 8, _combiner.Texture.height / 8, 1);
            PointCloudBuffer.GetData(PointCloud);
        }
    }
}
