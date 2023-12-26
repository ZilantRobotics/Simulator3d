using System;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Unity.Collections;
using UnityEngine;
using UnityEngine.Rendering;
using Assets.Scripts.BridgeManagement;
using Comm;
using Assets.Scripts.TargetEnvironmentSelection;

namespace Assets.Scripts.Agent.Sensors.VideoSensor
{
    public class VideoSensorDevice : ISensorWithCamera, ISensorWithSettings<VideoSensorDeviceView>, IDisposable
    {
        public Camera Camera => Settings.Camera;
        public CaptureType CaptureType => Settings.CameraCaptureType;
        public FormatType FormatType => Settings.CameraEncodingFormat;

        public VideoSensorDeviceView Settings { get; }
        public Sensor Sensor { get; }

        private uint _seqId = 0;
        private string _frameId = "Camera";

        private readonly ITargetEnvironmentProvider _targetEnvironmentProvider;
        private readonly IBridgeProvider _bridgeProvider;
        private readonly ICameraSettingsProvider _settings;

        private MessageWriter<Ros.CompressedImage> _writer;

        // Native readback
        private AsyncGPUReadbackRequest _readbackRequest;
        private NativeArray<byte> _readbackData;

        // Readback state
        // 0 - not ready
        // 1 - ready
        // 2 - readback requested
        private int _readbackState = 0;

        private double _lastTimestamp = 0.0;

        public VideoSensorDevice(
            Sensor sensor,
            IBridgeProvider bridgeProvider,
            ITargetEnvironmentProvider targetEnvironmentProvider,
            ICameraSettingsProvider settings,
            VideoSensorDeviceView view)
        {
            Sensor = sensor;

            _bridgeProvider = bridgeProvider;
            _settings = settings;
            Settings = view;
            _frameId = Sensor.Settings.Name;

            Settings.Camera.backgroundColor = _settings.BackgroundColor;
            Settings.Camera.clearFlags = _settings.ClearFlags;
            Settings.Camera.renderingPath = _settings.RenderingPath;
            _targetEnvironmentProvider = targetEnvironmentProvider;

            InitializeTextureReader(this, EventArgs.Empty);

            _bridgeProvider.Bridge.OnConnected += BridgeOnConnected;

            Settings.OnChange += InitializeTextureReader;
            Settings.OnFixedUpdate += OnFixedUpdate;

            Sensor.IsActive.Change += IsActiveChange;
            Sensor.Publish += SensorPublish;
        }

        private void SensorPublish(object sender, EventArgs args)
        {
            // If _readbackState is not 1 (ready), then do nothing.
            // Otherwise, set it to 0 (not ready)
            // and start encoding and sending the image.
            if (Interlocked.CompareExchange(ref _readbackState, 0, 1) != 1)
            {
                return;
            }

            // Cannot be accesed from a separate task
            var graphicsFormat = Settings.Camera.activeTexture.graphicsFormat;
            graphicsFormat = UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8_SRGB;

            Task.Run(() =>
            {
                var readbackBytes = _readbackData.ToArray();

                // Request next frame readback by setting
                // _readbackState to 2 (readback requested).
                Interlocked.Exchange(ref _readbackState, 2);

                byte[] encoded = new byte[0];

                switch (Settings.CameraEncodingFormat)
                {
                    case FormatType.JPG:
                        {
                            encoded = ImageConversion.EncodeArrayToJPG(
                                readbackBytes,
                                graphicsFormat,
                                (uint)Settings.Width, (uint)Settings.Height,
                                0, Settings.JpegQuality);
                        }
                        break;
                    case FormatType.PNG:
                        {
                            encoded = ImageConversion.EncodeArrayToPNG(
                                readbackBytes,
                                graphicsFormat,
                                (uint)Settings.Width, (uint)Settings.Height);
                        }
                        break;
                }

                if (encoded.Length > 0)
                {
                    SendImage(encoded, encoded.Length);
                }
            });
        }

        private void OnFixedUpdate(object sender, EventArgs args)
        {
            // When _readbackState is set to 2 (readback requested)
            // Initiate the frame readback
            // and set _readbackState to 0 (not ready)
            if (Interlocked.CompareExchange(ref _readbackState, 0, 2) == 2)
            {
                StartGpuReadback();
            }
        }

        private void IsActiveChange(object sender, bool isActive)
        {
            Settings.Camera.enabled = isActive;
            StartGpuReadback();
        }

        private void StartGpuReadback()
        {
            if (Settings.Camera.enabled)
            {
                _readbackRequest = AsyncGPUReadback.RequestIntoNativeArray(
                            ref _readbackData,
                            Settings.Camera.targetTexture,
                            0,
                            _settings.TextureFormat,
                            OnGpuReadbackComplete);
            }
        }

        private void OnGpuReadbackComplete(AsyncGPUReadbackRequest request)
        {
            if (request.hasError)
            {
                Debug.LogError($"[{Sensor.Settings.Name}] AsyncGPUReadbackRequest failed");
                return;
            }

            if (request.layerCount <= 0)
            {
                Debug.LogWarning($"[{Sensor.Settings.Name}] AsyncGPUReadbackRequest has no layers");
                return;
            }

            // Signal that the readback is complete
            // by setting the _readbackState to 1 (ready).
            Interlocked.Exchange(ref _readbackState, 1);
        }

        private void InitializeTextureReader(object sender, EventArgs args)
        {
            if (!_readbackRequest.done)
            {
                _readbackRequest.WaitForCompletion();
            }
            if (_readbackData.IsCreated)
            {
                _readbackData.Dispose();
            }

            Settings.Camera.targetTexture?.Release();
            var activeRenderTexture = new RenderTexture(
                Settings.Width, Settings.Height,
                _settings.RenderTextureDepth,
                _settings.RenderTextureFormat,
                _settings.RenderTextureReadWrite)
            {
                dimension = TextureDimension.Tex2D,
                antiAliasing = 1,
                useMipMap = false,
                useDynamicScale = false,
                wrapMode = TextureWrapMode.Clamp,
                filterMode = FilterMode.Bilinear,
                name = Settings.CameraCaptureType.ToString()
            };
            activeRenderTexture.Create();
            Settings.Camera.targetTexture = activeRenderTexture;

            int readbackLength = _settings.RenderTextureDepth / 8
                * activeRenderTexture.width * activeRenderTexture.height;
            _readbackData = new NativeArray<byte>(
                readbackLength,
                Allocator.Persistent,
                NativeArrayOptions.UninitializedMemory);
        }

        public bool Save(string path, int quality)
        {
            _readbackRequest.WaitForCompletion();
            var data = _readbackData.ToArray();
            byte[] encodedBytes;

            string ext = "." + Settings.CameraEncodingFormat.ToString().ToLower();
            path = Path.ChangeExtension(path, ext);

            var graphicsFormat = Settings.Camera.activeTexture.graphicsFormat;
            graphicsFormat = UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8_SRGB;
            switch (ext)
            {
                case ".png":
                    encodedBytes = ImageConversion.EncodeArrayToPNG(
                        data,
                        graphicsFormat,
                        (uint)Settings.Width, (uint)Settings.Height);
                    break;

                case ".jpeg":
                case ".jpg":
                    encodedBytes = ImageConversion.EncodeArrayToJPG(
                        data,
                        graphicsFormat,
                        (uint)Settings.Width, (uint)Settings.Height,
                        0, quality);
                    break;

                default:
                    return false;
            }

            if (encodedBytes.Length <= 0)
            {
                return false;
            }

            try
            {
                using var file = File.Create(path);
                file.Write(encodedBytes, 0, encodedBytes.Length);
                return true;
            }
            catch (Exception e)
            {
                Debug.LogException(e);
            }

            return false;
        }

        private void BridgeOnConnected()
        {
            _writer = new MessageWriter<Ros.CompressedImage>(
                Sensor,
                _bridgeProvider.Bridge.AddWriter<Ros.CompressedImage>(Settings.TopicName),
                (msg, timestamp) =>
                {
                    msg.header.stamp = Ros.Time.Now();//(ulong)Math.Round(timestamp * 1e6);
                    msg.header.frame_id = Settings.Name;
                });
        }

        private void SendImage(byte[] data, int length)
        {
            if (_bridgeProvider.Bridge == null
                || _bridgeProvider.Bridge.Status != BridgeStatus.Connected
                || !Sensor.IsActive.Value)
            {
                return;
            }

            string imageFormat = Settings.CameraEncodingFormat.ToString().ToLower();

            var msg = new Ros.CompressedImage
            {
                header = new Ros.Header
                {
                    frame_id = _frameId,
                    seq = _seqId++
                },

                format = imageFormat,

                data = new Ros.PartialByteArray()
                {
                    Array = data,
                    Length = length,
                }
            };

            while (Sensor.PublishingEventProvider.Timestamp == _lastTimestamp)
            {
                // wait
            }
            _lastTimestamp = Sensor.PublishingEventProvider.Timestamp;

            _writer.Publish(msg, _lastTimestamp);
        }

        public void Dispose()
        {
            Sensor.Publish -= SensorPublish;
            Settings.OnChange -= InitializeTextureReader;
            Settings.OnFixedUpdate -= OnFixedUpdate;
            _bridgeProvider.Bridge.OnConnected -= BridgeOnConnected;

            Sensor?.Dispose();
            _writer?.Dispose();
            _readbackRequest.WaitForCompletion();
            if (_readbackData.IsCreated) _readbackData.Dispose();
        }
    }
}
