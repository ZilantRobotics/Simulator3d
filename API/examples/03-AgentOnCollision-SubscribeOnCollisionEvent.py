import grpc

from zlrsimapi import api_pb2 
from zlrsimapi import api_pb2_grpc

channel = grpc.insecure_channel('localhost:3258')
stub = api_pb2_grpc.APIStub(channel)

if stub.GetCurrentScene(api_pb2.GetCurrentSceneRequest()).scene == 'MainScene':
    stub.Reset(api_pb2.ResetRequest())
    print("Reset scene")
else:
    stub.LoadScene(api_pb2.LoadSceneRequest(scene = 'MainScene'))
    print("Scene loading...")
    
getSpawnResponse = stub.GetSpawn(api_pb2.GetSpawnRequest())

AgentUid = stub.SpawnAgent(api_pb2.SpawnAgentRequest(state = api_pb2.State(
    transform = getSpawnResponse.spawns[4],
    velocity = api_pb2.Vector3(x = 0, y = 0, z = 0),
    angularVelocity = api_pb2.Vector3(x = 0, y = 0, z = 0)),
    type = 1,
    name = 'Quadcopter-M690')).uid

# Subscribe on collision event
print('Subscribed on collision')
stub.AgentOnCollision(api_pb2.AgentOnCollisionRequest(uid = AgentUid))

stub.Run(api_pb2.RunRequest(timeLimit = 0))
iterator = stub.SubscribeOnCollisionEvent(api_pb2.CollisionEventRequest())
while True:
    print(next(iterator))

