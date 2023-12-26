using UnityEngine;

namespace Assets.Scripts.Agent.SpawnControl
{
    public interface ISpawnPoints
    {
        public Transform[] SpawnPoints { get; }
    }
}
