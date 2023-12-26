using Assets.Scripts.Agent;
using Assets.Scripts.Api.Helpers;
using Assets.Scripts.Util.Spawner;
using Grpc.Core;
using GrpcApi;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace Assets.Scripts.Api
{
    public class ApiManager : MonoBehaviour
    {
        public static ApiManager Instance { get; private set; }

        public ushort Port = 3258;

        public string CurrentScene => SceneManager.GetActiveScene().name;

        [HideInInspector]
        public float CurrentTime;

        [HideInInspector]
        public int CurrentFrame;

        [HideInInspector]
        public float TimeLimit;

        [HideInInspector]
        public int FrameLimit;

        public Dictionary<Guid, GameObject> Obstacles = new();
        public Dictionary<GameObject, Guid> ObstaclesUID = new();

        public HashSet<GameObject> Collisions = new();

        private APIServer _apiServer;

        private Server _server;

        private int _groundLayer;

        private async void Awake()
        {
            ReadPort();

            if (Instance != null)
            {
                Destroy(gameObject);
                return;
            }

            Instance = this;
            DontDestroyOnLoad(gameObject);

            _groundLayer = LayerMask.NameToLayer("Ground And Road");
            _apiServer = new APIServer();
            _server = new Server
            {
                Services = { API.BindService(_apiServer) },
                Ports = { new ServerPort("0.0.0.0", Port, ServerCredentials.Insecure) },
            };
            _server.Start();
        }

        private void OnDestroy()
        {
            _server?.ShutdownAsync();
        }

        public void Reset()
        {
            Obstacles.Clear();
            ObstaclesUID.Clear();

            Collisions.Clear();

            TimeLimit = 0;
            FrameLimit = 0;
            Time.timeScale = 1;
            CurrentTime = 0;
            CurrentFrame = 0;
        }

        public void DespawnObstacles()
        {
            foreach (var gameObject in ApiManager.Instance.Obstacles.Values.ToList())
            {
                ObjectSpawner.Instance.DespawnObject(gameObject);
            }
        }

        public void AddCollision(GameObject obj, Collision collision)
        {
            if (!Collisions.Contains(obj) || collision.gameObject.layer == _groundLayer)
            {
                return;
            }

            if (!TryGetIdByGameObject(obj, out var agentUid))
                return;

            var collisionEvent = new CollisionEvent
            {
                Agent = agentUid.ToString(),
                Contact = collision.contacts[0].point.ToGrpcVector3()
            };

            if (TryGetIdByGameObject(collision.gameObject, out var otherUid))
            {
                collisionEvent.Other = otherUid.ToString();
            }

            Task.Run(() =>
            {
                foreach (var callback in _apiServer.CollisionCallbacks)
                {
                    callback.WriteAsync(collisionEvent).Wait();
                }
            });
        }

        public void AddMinDistance(GameObject obj, Collider collider)
        {
            if (collider.gameObject.layer == _groundLayer)
            {
                return;
            }

            if (!TryGetIdByGameObject(obj, out var agentUid))
                return;

            var minDistanceEvent = new OnMinDistanceEvent
            {
                Agent = agentUid.ToString(),
                Position = obj.transform.position.ToGrpcVector3(),             
            };

            if (TryGetIdByGameObject(collider.gameObject, out var otherUid))
            {
                minDistanceEvent.Other = otherUid.ToString();
            }

            Task.Run(() =>
            {
                foreach (var callback in _apiServer.MinDistanceCallbacks)
                {
                    callback.WriteAsync(minDistanceEvent).Wait();
                }
            });
        }

        public bool TryGetIdByGameObject(GameObject obj, out Guid result)
        {
            var agent = AgentsFacade.Instance.Agents.FirstOrDefault(a => a.GameObject == obj);
            if (agent != null)
            {
                result = agent.Id;
                return true;
            }

            if (ObstaclesUID.TryGetValue(obj, out var npcId))
            {
                result = npcId;
                return true;
            }

            result = Guid.Empty;
            return false;
        }

        public bool TryGetGameObjectById(Guid id, out GameObject result)
        {
            var agent = AgentsFacade.Instance.Agents.FirstOrDefault(a => a.Id == id);
            if (agent != null)
            {
                result = agent.GameObject;
                return true;
            }

            if (Obstacles.TryGetValue(id, out var npc))
            {
                result = npc;
                return true;
            }

            result = null;
            return false;
        }

        public bool TryRemoveGameObjectById(Guid id)
        {
            var agent = AgentsFacade.Instance.Agents.FirstOrDefault(a => a.Id == id);
            if (agent != null)
            {
                AgentsFacade.Instance.RemoveAgentById(agent.Id);
                return true;
            }

            if (Obstacles.TryGetValue(id, out var npc))
            {
                Obstacles.Remove(id);
                ObstaclesUID.Remove(npc);
                return true;
            }

            return false;
        }

        private void Update()
        {
            while (!_apiServer.RequestsQueue.IsEmpty)
            {
                if (_apiServer.RequestsQueue.TryDequeue(out Task task))
                {
                    task.RunSynchronously();
                }
            }

            if (!Mathf.Approximately(Time.timeScale, 0))
            {
                CurrentTime += Time.timeScale * Time.deltaTime;
                CurrentFrame += 1;

                if (!Mathf.Approximately(TimeLimit, 0) && CurrentTime >= TimeLimit ||
                    !Mathf.Approximately(FrameLimit, 0) && CurrentFrame >= FrameLimit)
                {
                    Time.timeScale = 0.0f;
                }
            }
        }

        private void ReadPort()
        {
            string[] args = Environment.GetCommandLineArgs();
            for (int i = 0; i < args.Length; i++)
            {
                if (args[i] == "--api_port")
                {
                    if (int.TryParse(args[i + 1], out int port))
                    {
                        Port = (ushort)port;
                        break;
                    }
                }
            }
        }
    }
}
