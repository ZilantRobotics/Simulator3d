using Assets.Scripts.Api.Helpers;
using GrpcApi;
using System;

namespace Assets.Scripts.Api.Commands
{
    public class EmitFailure
    {
        public static EmitFailureResponse Execute(EmitFailureRequest request)
        {

            return new EmitFailureResponse
            {
                Error = ErrorBuilder.WithMessage("Not implemented")
            };
        }
    }
}