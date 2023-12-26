using Assets.Scripts.Injection;
using System;
using System.Collections.Generic;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors
{
    public class PeriodicPublishingEventProviders : IDisposable
    {
        private readonly IUnityCallbacks _callbacks;

        private readonly Dictionary<int, PeriodicPublishingEventProvider> _providers = new Dictionary<int, PeriodicPublishingEventProvider>();

        public PeriodicPublishingEventProviders(IUnityCallbacks callbacks)
        {
            _callbacks = callbacks;
        }

        public void Dispose()
        {
            foreach (var provider in _providers.Values)
            {
                provider.Dispose();
            }
        }

        public PeriodicPublishingEventProvider GetEventProvider(float publishRate)
        {
            if (!_providers.ContainsKey(Mathf.RoundToInt(publishRate)))
            {
                _providers.Add(Mathf.RoundToInt(publishRate), new PeriodicPublishingEventProvider(_callbacks, publishRate));
            }
            return _providers[Mathf.RoundToInt(publishRate)];
        }
    }
}
