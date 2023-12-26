using GrpcApi;

namespace Assets.Scripts.Api.Commands
{
    public class WeatherSet
    {
        public static WeatherSetResponse Execute(WeatherSetRequest request)
        {
            WeatherSetResponse weatherSetResponse = new WeatherSetResponse();
            weatherSetResponse.Error = Helpers.ErrorBuilder.WithMessage("Not implemented");

            return weatherSetResponse;
        } 
    }
}
