using Assets.Scripts.Com;
using System;

namespace Assets.Scripts.Agent.Sensors
{
    public class Sensor : IDisposable
    {
        public readonly Guid Id;

        public readonly ISensorSettings Settings;

        public readonly Variable<bool> IsActive;

        public PeriodicPublishingEventProvider PublishingEventProvider { get; private set; }

        public event EventHandler Publish;

        private readonly PeriodicPublishingEventProviders _eventProviders;

        public Sensor(ISensorSettings settings, PeriodicPublishingEventProviders eventProviders)
        {
            Id = Guid.NewGuid();
            IsActive = new Variable<bool>(false);
            Settings = settings;
            _eventProviders = eventProviders;

            OnPublishRateChange(this, Settings.PublishRate);

            Settings.PublishRateChange += OnPublishRateChange;
        }

        private void OnPublishRateChange(object sender, float publishRate)
        {
            if (PublishingEventProvider != null)
            {
                PublishingEventProvider.Publish -= OnPublish;
            }
            PublishingEventProvider = _eventProviders.GetEventProvider(publishRate);
            PublishingEventProvider.Publish += OnPublish;
        }

        private void OnPublish(object sender, EventArgs e)
        {
            if (!IsActive.Value)
            {
                return;
            }
            Publish?.Invoke(this, EventArgs.Empty);
        }

        public void Dispose()
        {
            if (PublishingEventProvider != null)
            {
                PublishingEventProvider.Publish -= OnPublish;
            }
            Settings.PublishRateChange -= OnPublishRateChange;
        }
    }
}
