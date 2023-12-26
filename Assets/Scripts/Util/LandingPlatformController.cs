using UnityEngine;
using GrpcApi;

namespace Assets.Scripts.Util.LandingPlatformController
{
    public class LandingPlatformController
    {
        public static LandingPlatformController Instance { get; private set; }

        private Animator[] _landingPlatformAnimations;

        public LandingPlatformController(Animator[] landingPlatformAnimations)
        {
            Instance = this;
            _landingPlatformAnimations = landingPlatformAnimations;
        }

        public void HandleLandingPlatform(int platformIndex, LandingPlatformControlRequest.Types.State state)
        {
            if (platformIndex < _landingPlatformAnimations.Length)
            {
                var anim = _landingPlatformAnimations[platformIndex];

                if (state == LandingPlatformControlRequest.Types.State.Open)
                {
                    anim.Play("Open"); 
                }
                else 
                {
                    anim.Play("Close");
                }                               
            }
        }
    }
}