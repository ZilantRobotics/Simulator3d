using GrpcApi;

namespace Assets.Scripts.Api.Commands
{
    public class WeatherGet
    {
        public static WeatherGetResponse Execute(WeatherGetRequest request)
        {
            WeatherGetResponse weatherGetResponse = new WeatherGetResponse();
            weatherGetResponse.Error = Helpers.ErrorBuilder.WithMessage("Not implemented");

            return weatherGetResponse;
        }
    }
}
