using Assets.Scripts.Api.Helpers;
using Assets.Scripts.Mapping;
using GrpcApi;

namespace Assets.Scripts.Api.Commands
{
    public class MapToGps
    {
        public static MapToGpsResponse Execute(MapToGpsRequest request)
        {
            var map = MapOrigin.Instance;

            var position = request.Transform.Position.ToUnityVector3();
            var rotation = request.Transform.Rotation.ToUnityVector3();

            map.GetNorthingEasting(position, out var northing, out var easting);
            easting += 500000;
            map.GetLatitudeLongitude(northing, easting, out var latitude, out var longitude);

            return new MapToGpsResponse
            {
                Gps = new Gps
                {
                    Latitude = latitude,
                    Longitude = longitude,
                    Northing = northing,
                    Easting = easting,
                    Altitude = position.y + map.AltitudeOffset,
                    Orientation = -rotation.y - map.Angle
                }
            };
        }
    }
}
