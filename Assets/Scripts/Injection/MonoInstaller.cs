using System;
using UnityEngine;

namespace Assets.Scripts.Injection
{
    public abstract class MonoInstaller : MonoBehaviour, IUnityCallbacks
    {
        public event EventHandler OnStart;

        public event EventHandler OnUpdate;
        
        public event EventHandler OnFixedUpdate;
        
        public event EventHandler OnEnabled;
        
        public event EventHandler OnDisabled;


        private void Start()
        {
            Install();
            OnStart?.Invoke(this, EventArgs.Empty);
        }

        private void Update()
        {
            OnUpdate?.Invoke(this, EventArgs.Empty);
        }

        private void FixedUpdate()
        {
            OnFixedUpdate?.Invoke(this, EventArgs.Empty);
        }

        private void OnEnable()
        {
            OnEnabled?.Invoke(this, EventArgs.Empty);
        }

        private void OnDisable()
        {
            OnDisabled?.Invoke(this, EventArgs.Empty);
        }

        protected abstract void Install();
    }
}
