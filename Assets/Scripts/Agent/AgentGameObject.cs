using UnityEngine;

namespace Assets.Scripts.Agent
{
    public class AgentGameObject : IAgentGameObject
    {
        private readonly GameObject _instance;

        public AgentGameObject(GameObject prefab, GameObject[] managers)
        {
            foreach (var manager in managers)
            {
                Object.Instantiate(manager);
            }
            _instance = Object.Instantiate(prefab);
        }

        public T GetComponent<T>()
        {
            return _instance.GetComponent<T>();
        }

        public Transform Transform => _instance.transform;

        public void Dispose()
        {
            Object.Destroy(_instance);
        }
    }
}
