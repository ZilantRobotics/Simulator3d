using System;

namespace Assets.Scripts.Injection
{
    public interface IUnityCallbacks
    {
        public event EventHandler OnStart;

        public event EventHandler OnUpdate;

        public event EventHandler OnFixedUpdate;

        public event EventHandler OnEnabled;

        public event EventHandler OnDisabled;
    }
}
