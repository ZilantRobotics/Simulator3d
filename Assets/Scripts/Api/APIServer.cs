using Grpc.Core;
using GrpcApi;
using System.Collections.Concurrent;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.Scripts.Api
{
    public class APIServer : API.APIBase
    {
        public ConcurrentQueue<Task> RequestsQueue { get; }

        public ConcurrentQueue<Task> SubscriptionTasks { get; }

        public ConcurrentBag<IServerStreamWriter<CollisionEvent>> CollisionCallbacks { get; private set; }
        public ConcurrentBag<IServerStreamWriter<OnMinDistanceEvent>> MinDistanceCallbacks { get; private set; }


        public APIServer()
        {
            RequestsQueue = new ConcurrentQueue<Task>();

            SubscriptionTasks = new ConcurrentQueue<Task>();

            InitializeCallbacks();
        }

        private void InitializeCallbacks()
        {
            CollisionCallbacks = new ConcurrentBag<IServerStreamWriter<CollisionEvent>>();
            MinDistanceCallbacks = new ConcurrentBag<IServerStreamWriter<OnMinDistanceEvent>>();
        }

        public override Task<UnsubscribeAllResponse> UnsubscribeAll(UnsubscribeAllRequest request, ServerCallContext context)
        {
            var task = new Task<UnsubscribeAllResponse>(() =>
            {
                while (!SubscriptionTasks.IsEmpty)
                {
                    if (SubscriptionTasks.TryDequeue(out var t))
                    {
                        t.RunSynchronously();
                    }
                }
                InitializeCallbacks();
                return new UnsubscribeAllResponse();
            });

            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task SubscribeOnCollisionEvent(CollisionEventRequest request, 
            IServerStreamWriter<CollisionEvent> responseStream,
            ServerCallContext context)
        {
            var task = new Task(() => { });
            SubscriptionTasks.Enqueue(task);
            CollisionCallbacks.Add(responseStream);
            return task;
        }      
        
        public override Task SubscribeOnMinDistanceEvent(OnMinDistanceEventRequest request, 
            IServerStreamWriter<OnMinDistanceEvent> responseStream,
            ServerCallContext context)
        {
            var task = new Task(() => { });
            SubscriptionTasks.Enqueue(task);
            MinDistanceCallbacks.Add(responseStream);
            return task;
        }

        public override Task<RunResponse> Run(RunRequest request, ServerCallContext context)
        {
            var task = new Task<RunResponse>(() => Commands.Run.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<GetSpawnResponse> GetSpawn(GetSpawnRequest request, ServerCallContext context)
        {
            var task = new Task<GetSpawnResponse>(() => Commands.GetSpawn.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<TimeOfDaySetResponse> TimeOfDaySet(TimeOfDaySetRequest request, ServerCallContext context)
        {
            var task = new Task<TimeOfDaySetResponse>(() => Commands.TimeOfDaySet.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<LoadSceneResponse> LoadScene(LoadSceneRequest request, ServerCallContext context)
        {
            var task = new Task<LoadSceneResponse>(() => Commands.LoadScene.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<MapFromGpsResponse> MapFromGps(MapFromGpsRequest request, ServerCallContext context)
        {
            var task = new Task<MapFromGpsResponse>(() => Commands.MapFromGps.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<MapToGpsResponse> MapToGps(MapToGpsRequest request, ServerCallContext context)
        {
            var task = new Task<MapToGpsResponse>(() => Commands.MapToGps.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<ResetResponse> Reset(ResetRequest request, ServerCallContext context)
        {
            Task<ResetResponse> task = new Task<ResetResponse>(() => Commands.Reset.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<RaycastResponse> Raycast(RaycastRequest request, ServerCallContext context)
        {
            var task = new Task<RaycastResponse>(() => Commands.Raycast.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<AgentGetSensorsResponse> AgentGetSensors(AgentGetSensorsRequest request, ServerCallContext context)
        {
            var task = new Task<AgentGetSensorsResponse>(() => Commands.AgentGetSensors.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<SensorSetStateResponse> SensorSetState(SensorSetStateRequest request, ServerCallContext context)
        {
            var task = new Task<SensorSetStateResponse>(() => Commands.SensorSetState.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<SensorGetTransformResponse> SensorGetTransform(SensorGetTransformRequest request, ServerCallContext context)
        {
            var task = new Task<SensorGetTransformResponse>(() => Commands.SensorGetTransform.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<SensorGetStateResponse> SensorGetState(SensorGetStateRequest request, ServerCallContext context)
        {
            var task = new Task<SensorGetStateResponse>(() => Commands.SensorGetState.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<GetCurrentSceneResponse> GetCurrentScene(GetCurrentSceneRequest request, ServerCallContext context)
        {
            var task = new Task<GetCurrentSceneResponse>(() => Commands.GetCurrentScene.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<SensorGpsDataResponse> SensorGpsData(SensorGpsDataRequest request, ServerCallContext context)
        {
            var task = new Task<SensorGpsDataResponse>(() => Commands.SensorGpsData.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<WeatherSetResponse> WeatherSet(WeatherSetRequest request, ServerCallContext context)
        {
            var task = new Task<WeatherSetResponse>(() => Commands.WeatherSet.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<WeatherGetResponse> WeatherGet(WeatherGetRequest request, ServerCallContext context)
        {
            var task = new Task<WeatherGetResponse>(() => Commands.WeatherGet.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<TimeOfDayGetResponse> TimeOfDayGet(TimeOfDayGetRequest request, ServerCallContext context)
        {
            var task = new Task<TimeOfDayGetResponse>(() => Commands.TimeOfDayGet.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<LandingPlatformControlResponse> LandingPlatformControl(LandingPlatformControlRequest request, ServerCallContext context)
        {
            var task = new Task<LandingPlatformControlResponse>(() => Commands.LandingPlatformControl.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }        
        
        public override Task<EmitFailureResponse> EmitFailure(EmitFailureRequest request, ServerCallContext context)
        {
            var task = new Task<EmitFailureResponse>(() => Commands.EmitFailure.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<SpawnAgentResponse> SpawnAgent(SpawnAgentRequest request, ServerCallContext context)
        {
            var task = new Task<SpawnAgentResponse>(() => Commands.SpawnAgent.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<SpawnObstacleResponse> SpawnObstacle(SpawnObstacleRequest request, ServerCallContext context)
        {
            var task = new Task<SpawnObstacleResponse>(() => Commands.SpawnObstacle.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }


        public override Task<AgentOnCollisionResponse> AgentOnCollision(AgentOnCollisionRequest request, ServerCallContext context)
        {
            var task = new Task<AgentOnCollisionResponse>(() => Commands.AgentOnCollision.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<AgentOnMinDistanceResponse> AgentOnMinDistance(AgentOnMinDistanceRequest request, ServerCallContext context)
        {
            var task = new Task<AgentOnMinDistanceResponse>(() => Commands.AgentOnMinDistance.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<AgentGetBBoxResponse> AgentGetBBox(AgentGetBBoxRequest request, ServerCallContext context)
        {
            var task = new Task<AgentGetBBoxResponse>(() => Commands.AgentGetBBox.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }

        public override Task<RemoveAgentResponse> RemoveAgent(RemoveAgentRequest request, ServerCallContext context)
        {
            var task = new Task<RemoveAgentResponse>(() => Commands.RemoveAgent.Execute(request));
            RequestsQueue.Enqueue(task);
            return task;
        }
    }
}
