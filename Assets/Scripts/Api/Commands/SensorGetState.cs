using Assets.Scripts.Agent;
using Assets.Scripts.Agent.Sensors;
using Assets.Scripts.Api.Helpers;
using GrpcApi;
using System;
using System.Linq;

namespace Assets.Scripts.Api.Commands
{
    public class SensorGetState
    {
        public static SensorGetStateResponse Execute(SensorGetStateRequest request)
        {
            var uid = Guid.Parse(request.Uid);

            var sensor = FindSensorById(uid);
            if (sensor != null)
            {
                return new SensorGetStateResponse
                {
                    IsEnabled = sensor.IsActive.Value
                };
            }

            return new SensorGetStateResponse
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
