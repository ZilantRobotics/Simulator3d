using UnityEngine;

namespace Assets.Scripts.Agent.SpawnControl
{
    public class SpawnPointsProvider : ISpawnPoints
    {
        public Transform[] SpawnPoints { get; }

        public SpawnPointsProvider(Transform[] spawnPoints)
        {
            SpawnPoints = spawnPoints;
        }
    }
}
