using Assets.Scripts.Agent.Configuration;
using System;
using UnityEngine;

namespace Assets.Scripts.Agent.Sensors
{
    public interface ISensorSettings : INamedEntity
    {
        public float PublishRate { get; }

        public event EventHandler<float> PublishRateChange;

        public Transform Transform { get; }

        public Vector3 LocalPosition { get; set; }

        public Quaternion LocalRotation { get; set; }
    }
}
