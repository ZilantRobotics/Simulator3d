using GrpcApi;

namespace Assets.Scripts.Api.Helpers
{
    public static class ErrorBuilder
    {
        public static Error WithMessage(string message)
        {
            return new Error { Message = message };
        }
    }
}
