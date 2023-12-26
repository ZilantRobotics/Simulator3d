using System;
using System.Linq;
using Assets.Scripts.Agent;
using Assets.Scripts.Agent.Sensors;
using Assets.Scripts.Agent.Sensors.VideoSensor;
using Assets.Scripts.Api.Helpers;
using GrpcApi;
using VideoSensor = GrpcApi.VideoSensor;

namespace Assets.Scripts.Api.Commands
{
    public class AgentGetSensors
    {
        public static AgentGetSensorsResponse Execute(AgentGetSensorsRequest request)
        {
            var uid = Guid.Parse(request.Uid);

            var agent = AgentsFacade.Instance.Agents.FirstOrDefault(a => a.Id == uid);
            if (agent != null)
            {
                var sensors = agent.Sensors;
                var result = new AgentGetSensorsResponse();
                foreach (var videoSensor in sensors.VideoSensorsList)
                {
                    var fx = videoSensor.Camera.pixelWidth * 
                        (videoSensor.Camera.focalLength / 
                        videoSensor.Camera.sensorSize.x);
                    var fy = videoSensor.Camera.pixelHeight * 
                        (videoSensor.Camera.focalLength / 
                        videoSensor.Camera.sensorSize.y);
                    var cx = videoSensor.Camera.pixelWidth / 2;
                    var cy = videoSensor.Camera.pixelHeight / 2;

                    var intrinsicsMatrix = new float[9]
                    {
                        fx, 0, cx, 
                        0, fy, cy,
                        0, 0, 1
                    };

                    var distortion = new float[5]
                    {
                        0, 0, 0, 0, 0   
                    };
                    
                    var grpcVideoSensor = new VideoSensor()
                    {
                        Common = GetCommonSensorProperties(videoSensor.Sensor),
                        Width = videoSensor.Camera.pixelWidth,
                        Height = videoSensor.Camera.pixelHeight,
                        FieldOfView = videoSensor.Camera.fieldOfView,
                        NearClipPlane = videoSensor.Camera.nearClipPlane,
                        FarClipPane = videoSensor.Camera.farClipPlane,
                        Format = videoSensor.FormatType.ToString(),
                        LinkedVideoSensorUID = videoSensor.Camera.GetInstanceID().ToString(),

                        Type = videoSensor.CaptureType switch
                        {
                            CaptureType.Capture => VideoSensor.Types.Type.Rgb,
                            CaptureType.Segmentation => VideoSensor.Types.Type.Semantic,
                            CaptureType.Depth => VideoSensor.Types.Type.Depth,
                            CaptureType.Infrared => VideoSensor.Types.Type.Infrared,
                            _ => throw new ArgumentOutOfRangeException()
                        },
                    };
                    grpcVideoSensor.IntrinsicsMatrix.AddRange(intrinsicsMatrix);
                    grpcVideoSensor.Distortion.AddRange(distortion);
                    
                    result.VideoSensors.Add(grpcVideoSensor);                   
                }

                foreach (var lidarSensor in sensors.LidarSensorsList)
                {
                    result.LidarSensors.Add(new LidarSensor
                    {
                        Common = GetCommonSensorProperties(lidarSensor.Sensor),
                        Compensated = lidarSensor.Settings.Compensated,
                        FieldOfView = lidarSensor.Settings.FieldOfView.x,
                        MaxDistance = lidarSensor.Settings.MaxDistance,
                        MinDistance = lidarSensor.Settings.MinDistance,
                    });
                }

                foreach (var sensor in sensors.GPSSensorsList)
                {
                    result.GpsSensors.Add(new GPSSensor
                    {
                        Common = GetCommonSensorProperties(sensor.Sensor)
                    });
                }

                foreach (var sensor in sensors.IMUSensorsList)
                {
                    result.ImuSensors.Add(new IMUSensor
                    {
                        Common = GetCommonSensorProperties(sensor.Sensor)
                    });
                }

                return result;
            }

            return new AgentGetSensorsResponse
            {
                Error = ErrorBuilder.WithMessage($"Agent '{uid}' not found")
            };
        }

        private static CommonSensorProperties GetCommonSensorProperties(Sensor sensor)
        {
            return new CommonSensorProperties
            {
                Id = sensor.Id.ToString(),
                Name = sensor.Settings.Name,
                PublishRate = sensor.Settings.PublishRate
            };
        }
    }
}
