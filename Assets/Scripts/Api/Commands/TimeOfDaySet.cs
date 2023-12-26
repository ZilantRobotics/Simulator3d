using GrpcApi;

namespace Assets.Scripts.Api.Commands
{
    public class TimeOfDaySet
    {
        public static TimeOfDaySetResponse Execute(TimeOfDaySetRequest request)
        {
            TimeOfDaySetResponse response = new TimeOfDaySetResponse();
            response.Error = Helpers.ErrorBuilder.WithMessage("Not implemented");

            return response;
        }
    }
}
