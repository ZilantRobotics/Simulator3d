using Assets.Scripts.Injection;
using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors
{
    public class PeriodicPublishingEventProvider : IDisposable
    {
        public event EventHandler Publish;

        public double Timestamp { get; private set; }

        private static readonly DateTime _unixepoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);

        private readonly IUnityCallbacks _callbacks;

        private readonly float _publishRate;

        private float _nextSendTime;

        public PeriodicPublishingEventProvider(
            IUnityCallbacks callbacks,
            float publishRate)
        {
            _callbacks = callbacks;
            _publishRate = publishRate;

            _callbacks.OnFixedUpdate += OnFixedUpdate;
            _nextSendTime = Time.unscaledTime; 
        }        

        public void Dispose()
        {
            _callbacks.OnFixedUpdate -= OnFixedUpdate;
        }

        private void OnFixedUpdate(object sender, EventArgs e)
        {
            if (Time.fixedUnscaledTime < _nextSendTime)
            {
                return;
            }

            _nextSendTime = Time.fixedUnscaledTime + 1f / _publishRate;
            Timestamp = (DateTime.UtcNow - _unixepoch).TotalSeconds;
            Publish?.Invoke(this, EventArgs.Empty);
        }
    }
}
