import grpc

from zlrsimapi import api_pb2 
from zlrsimapi import api_pb2_grpc

channel = grpc.insecure_channel('localhost:3258')
stub = api_pb2_grpc.APIStub(channel)

# Reset the scene without reloading if certain scene is already loaded, just clear the spawned objects.
if stub.GetCurrentScene(api_pb2.GetCurrentSceneRequest()).scene == 'MainScene':
    stub.Reset(api_pb2.ResetRequest())
    print("Reset scene")
else:
    stub.LoadScene(api_pb2.LoadSceneRequest(scene = 'MainScene'))
    print("Scene loading...")
    
getSpawnResponse = stub.GetSpawn(api_pb2.GetSpawnRequest())

# Get all available spawn spots
# print('List of spawn points:')
# for spawn in getSpawnResponse.spawns:
#     print(spawn)

# Spawn an agent. After the reset command, you must respawn agent again.
# If an agent will be spawned on the landing platform 
# Send LandingPlatformControl (check example 09-LandingPlatformControl) command to open the gates (gates closed by default)
AgentUid = stub.SpawnAgent(api_pb2.SpawnAgentRequest(state = api_pb2.State(
    transform = getSpawnResponse.spawns[4],
    velocity = api_pb2.Vector3(x = 0, y = 0, z = 0),
    angularVelocity = api_pb2.Vector3(x = 0, y = 0, z = 0)),
    type = 1,
    name = 'Quadcopter-M690')).uid

stub.Run(api_pb2.RunRequest(timeLimit = 0)) # timeLimit = 0 - set Simulator to work, 1 - set Simulator on pause
