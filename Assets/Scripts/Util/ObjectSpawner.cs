using Assets.Scripts.Api;
using System;
using UnityEngine;

namespace Assets.Scripts.Util.Spawner
{
    public class ObjectSpawner
    {
        public static ObjectSpawner Instance { get; private set; }

        private GameObject _obstaclesHolder;
        private GameObject[] _obstacles;

        public ObjectSpawner(GameObject obstaclesHolder, GameObject[] obstaclesList)
        {
            Instance = this;

            _obstaclesHolder = obstaclesHolder;
            _obstacles = obstaclesList;
        }

        public GameObject SpawnObject(string name, Vector3 position, Vector3 rotation)
        {
            var objPrefab = GetPrefabByName(name);

            if (objPrefab == null)
            {
                return null;
            }

            var obj = GameObject.Instantiate(objPrefab.gameObject, position, Quaternion.Euler(rotation));
            obj.transform.parent = _obstaclesHolder.transform;

            var id = Guid.NewGuid();
            var genId = id.ToString();

            obj.name = $"{name}-{genId}";

            ApiManager.Instance?.Obstacles.Add(id, obj);
            ApiManager.Instance?.ObstaclesUID.Add(obj, id);

            return obj;
        }

        public void DespawnObject(GameObject obj)
        {
            if (ApiManager.Instance)
            {
                if (ApiManager.Instance.ObstaclesUID.ContainsKey(obj))
                {
                    var uid = ApiManager.Instance.ObstaclesUID[obj];
                    ApiManager.Instance.Obstacles.Remove(uid);
                    ApiManager.Instance.ObstaclesUID.Remove(obj);
                }
            }

            UnityEngine.Object.Destroy(obj);
        }

        private GameObject GetPrefabByName(string name)
        {
            foreach (var obj in _obstacles)
            {
                if (obj.name == name) return obj;
            }

            return null;
        }
    }
}