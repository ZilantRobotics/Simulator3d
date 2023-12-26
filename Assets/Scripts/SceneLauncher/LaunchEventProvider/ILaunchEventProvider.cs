using UnityEngine.Events;

namespace Assets.Scripts.LaunchEventProvider
{
    public interface ILaunchEventProvider
    {
        public UnityEvent GetLaunchEvent();
    }
}
