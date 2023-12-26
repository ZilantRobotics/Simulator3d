using Assets.Scripts.Util.LandingPlatformController;
using GrpcApi;

namespace Assets.Scripts.Api.Commands
{
    public class LandingPlatformControl
    {
        public static LandingPlatformControlResponse Execute(LandingPlatformControlRequest request)
        {
            var platformIndex = request.PlatformIndex;
            var platformState = request.PlatformState;

            LandingPlatformController.Instance.HandleLandingPlatform(platformIndex, platformState);

            return new LandingPlatformControlResponse();
        }
    }
}