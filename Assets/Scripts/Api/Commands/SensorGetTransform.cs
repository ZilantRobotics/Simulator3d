using Assets.Scripts.Agent;
using Assets.Scripts.Agent.Sensors;
using Assets.Scripts.Api.Helpers;
using GrpcApi;
using System;
using System.Linq;

namespace Assets.Scripts.Api.Commands
{
    public class SensorGetTransform
    {
        public static SensorGetTransformResponse Execute(SensorGetTransformRequest request)
        {
            var uid = Guid.Parse(request.Uid);

            var sensor = FindSensorById(uid);
            if (sensor != null)
            {
                var tr = sensor.Settings.Transform;

                return new SensorGetTransformResponse
                {
                    Transform = new Transform
                    {
                        Position = tr.localPosition.ToGrpcVector3(),
                        Rotation = tr.localRotation.eulerAngles.ToGrpcVector3()
                    }
                };
            }

            return new SensorGetTransformResponse
            {
                Error = ErrorBuilder.WithMessage($"Sensor '{uid}' not found")
            };
        }

        private static Sensor FindSensorById(Guid id)
        {
            return AgentsFacade.Instance.Agents.SelectMany(a => a.Sensors.SensorsList).FirstOrDefault(s => s.Id == id);
        }
    }
}
