using Assets.Scripts.Agent;
using Assets.Scripts.Agent.Sensors;
using Assets.Scripts.Api.Helpers;
using GrpcApi;
using System;
using System.Linq;

namespace Assets.Scripts.Api.Commands
{
    public class SensorSetState
    {
        public static SensorSetStateResponse Execute(SensorSetStateRequest request)
        {
            var uid = Guid.Parse(request.Uid);

            var sensor = FindSensorById(uid);
            if (sensor != null)
            {
                sensor.IsActive.Value = request.Enabled;
                return new SensorSetStateResponse();
            }

            return new SensorSetStateResponse
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
