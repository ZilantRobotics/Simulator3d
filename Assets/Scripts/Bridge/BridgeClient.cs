using UnityEngine;
using System.Collections.Generic;

namespace Comm
{
    public interface BridgeClient
    {
        void GetSensors(List<Component> sensors);
        void OnBridgeAvailable(Bridge bridge);
    }
}
