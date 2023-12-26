using Assets.Scripts.Agent;
using Assets.Scripts.Api.Helpers;
using GrpcApi;
using System;
using System.Linq;

namespace Assets.Scripts.Api.Commands
{
    public struct GpsData
    {
        public double Latitude;
        public double Longitude;
        public double Northing;
        public double Easting;
        public double Altitude;
        public double Orientation;
    }

    public class SensorGpsData
    {
        public static SensorGpsDataResponse Execute(SensorGpsDataRequest request)
        {
            var uid = Guid.Parse(request.Uid);

            var sensor = FindSensorById(uid);
            if (sensor != null)
            {
                var data = sensor.GetData();

                return new SensorGpsDataResponse
                {
                    Gps = new Gps
                    {
                        Latitude = data.Latitude,
                        Longitude = data.Longitude,
                        Northing = data.Northing,
                        Easting = data.Easting,
                        Altitude = data.Altitude,
                        Orientation = data.Orientation
                    }
                };
            }

            return new SensorGpsDataResponse
            {
                Error = ErrorBuilder.WithMessage($"Sensor '{uid}' not found")
            };
        }

        private static Agent.Sensors.GPSSensor.GPSSensorDevice FindSensorById(Guid id)
        {
            return AgentsFacade.Instance.Agents.SelectMany(a => a.Sensors.GPSSensorsList).FirstOrDefault(s => s.Sensor.Id == id);
        }
    }
}
