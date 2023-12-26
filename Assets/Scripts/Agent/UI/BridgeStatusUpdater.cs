using Assets.Scripts.BridgeManagement;
using Assets.Scripts.Injection;
using System;
using UnityEngine.UI;

namespace Assets.Scripts.Agent.UI
{
    public class BridgeStatusUpdater : IDisposable
    {
        private readonly Text _text;

        private readonly IBridgeProvider _bridgeProvider;

        private readonly IUnityCallbacks _callbacks;

        public BridgeStatusUpdater(IUnityCallbacks callbacks, Text text, IBridgeProvider bridgeProvider)
        {
            _text = text;
            _bridgeProvider = bridgeProvider;
            _callbacks = callbacks;
            _callbacks.OnUpdate += OnUpdate;
        }

        public void Dispose()
        {
            _callbacks.OnUpdate -= OnUpdate;
        }

        private void OnUpdate(object sender, EventArgs args)
        {
            _text.text = _bridgeProvider.Bridge.Status.ToString();
        }
    }
}
