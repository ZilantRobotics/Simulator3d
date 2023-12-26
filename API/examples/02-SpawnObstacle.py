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
    name = 'Vtol-T300')).uid

# Spawn obstacle by Name
SpawnObstacleRequest = api_pb2.SpawnObstacleRequest(transform = api_pb2.Transform(
    position = api_pb2.Vector3(x = -486.46, y = 548.4, z = -5.55), 
    rotation = api_pb2.Vector3(x = 0, y = 0, z = 0)),
    type = 2, # 2 - obstacles
    name='M300') # Helicopter

SpawnObstacleResponse = stub.SpawnObstacle(SpawnObstacleRequest)

print('SpawnObstacleResponse : ', SpawnObstacleResponse.uid)

SpawnObstacleRequestCar = api_pb2.SpawnObstacleRequest(transform = api_pb2.Transform(
    position = api_pb2.Vector3(x = -480.71, y = 535.62, z = -7.207), 
    rotation = api_pb2.Vector3(x = 0, y = 0, z = 0)),
    type = 2, # 2 - obstacles
    name='MiniCountryman') 

SpawnObstacleResponseCar = stub.SpawnObstacle(SpawnObstacleRequestCar)

print('SpawnObstacleResponseCar : ', SpawnObstacleResponseCar.uid)


stub.Run(api_pb2.RunRequest(timeLimit = 0)) # timeLimit = 0 - set Simulator to work, 1 - set Simulator on pause
