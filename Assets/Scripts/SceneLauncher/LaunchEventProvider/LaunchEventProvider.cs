using UnityEngine.Events;
using UnityEngine.UI;

namespace Assets.Scripts.LaunchEventProvider
{
    public class LaunchEventProvider : ILaunchEventProvider
    {
        private readonly UnityEvent _onLaunch;

        public LaunchEventProvider(Button launchButton)
        {
            _onLaunch = new UnityEvent();
            launchButton.onClick.AddListener(OnClick);
        }

        public UnityEvent GetLaunchEvent()
        {
            return _onLaunch;
        }

        private void OnClick()
        {
            _onLaunch.Invoke();
        }
    }
}
