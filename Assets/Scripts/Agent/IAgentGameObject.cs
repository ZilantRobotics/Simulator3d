using System;
using UnityEngine;

namespace Assets.Scripts.Agent
{
    public interface IAgentGameObject : IDisposable

    {
        public T GetComponent<T>();

        public Transform Transform { get; }
    }
}
