using GrpcApi;

namespace Assets.Scripts.Api.Commands
{
    public class TimeOfDayGet
    {
        public static TimeOfDayGetResponse Execute(TimeOfDayGetRequest request)
        {
            TimeOfDayGetResponse response = new TimeOfDayGetResponse();
            response.Error = Helpers.ErrorBuilder.WithMessage("Not implemented");

            return response;
        }
    }
}
