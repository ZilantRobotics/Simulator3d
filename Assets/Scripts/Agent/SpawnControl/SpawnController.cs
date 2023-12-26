namespace Assets.Scripts.Agent.SpawnControl
{
    public class SpawnController : ISpawnController
    {
        private readonly ISpawnPoints _spawnPoints;

        private readonly IAgentGameObject _agentGameObject;

        public SpawnController(ISpawnPoints spawnPoints,
            IAgentGameObject agentGameObject, int spawnIndex)
        {
            _spawnPoints = spawnPoints;
            _agentGameObject = agentGameObject;

            if (spawnIndex > _spawnPoints.SpawnPoints.Length) 
            {
                spawnIndex = 0;
            }

            Spawn(spawnIndex);
        }

        public void Spawn(int spawnPointIndex)
        {
            var point = _spawnPoints.SpawnPoints[spawnPointIndex];
            var transform = _agentGameObject.Transform;
            transform.position = point.position;
            transform.rotation = point.rotation;
            var orbitCamera = transform.GetComponentInChildren<OrbitCamera>();
            if (orbitCamera != null)
            {
                orbitCamera.enabled = false;
                orbitCamera.enabled = true;
            }
        }
    }
}
