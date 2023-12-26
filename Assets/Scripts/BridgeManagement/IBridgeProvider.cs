using System;
using Comm;

namespace Assets.Scripts.BridgeManagement
{
    public interface IBridgeProvider : IDisposable
    {
        public Bridge Bridge { get; }

        public void Reconnect();
    }
}
