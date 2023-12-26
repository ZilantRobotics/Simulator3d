using Assets.Scripts.Api.Helpers;
using Assets.Scripts.Mapping;
using GrpcApi;
using Vector3 = UnityEngine.Vector3;

namespace Assets.Scripts.Api.Commands
{
    public class MapFromGps
    {
        public static MapFromGpsResponse Execute(MapFromGpsRequest request)
        {
            var map = MapOrigin.Instance;

            Vector3 position;
            
            if (request.HasNorthing && request.HasEasting)
            {
                position = map.FromNorthingEasting(request.Northing, request.Easting);
                position = new Vector3(position.x - 500000, position.y, position.z); //FIX IT Temp solution make the same template for the shole project
            }
            else if (request.HasLatitude && request.HasLongitude)
            {
                map.FromLatitudeLongitude(request.Latitude, request.Longitude, out var northing, out var easting);

                position = map.FromNorthingEasting(northing, easting);
                position = new Vector3(position.x - 500000, position.y, position.z);
            }
            else
            {
                return new MapFromGpsResponse
                {
                    Error = ErrorBuilder.WithMessage("Either norting and _easting or latitude and longitude have to be specified")
                };
            }

            if (request.HasAltitude)
            {
                position.y = request.Altitude - map.AltitudeOffset;
            }

            var rotation = Vector3.zero;
            if (request.HasOrientation)
            {
                rotation.y = -request.Orientation - map.Angle;
            }

            return new MapFromGpsResponse
            {
                Transform = new Transform
                {
                    Position = position.ToGrpcVector3(),
                    Rotation = rotation.ToGrpcVector3()
                }
            };
        }
    }
}
