using System;
using UnityEngine;

namespace Assets.Scripts.Coroutines
{
    public static class WaitHelper
    {
        public static WaitUntil WaitForNextPublish(float publishRate)
        {
            var nextSend = DateTime.UtcNow + GetInterval(publishRate);
            return new WaitUntil(() => DateTime.UtcNow > nextSend);
        }

        private static TimeSpan GetInterval(float publishRate)
        {
            return new TimeSpan(0, 0, 0, 0, Mathf.RoundToInt(1000 / publishRate));
        }
    }
}
