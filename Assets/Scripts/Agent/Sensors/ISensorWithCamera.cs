using UnityEngine;

namespace Assets.Scripts.Agent.Sensors
{
    public interface ISensorWithCamera
    {
        public Sensor Sensor { get; }

        public Camera Camera { get; }
    }
}
