import grpc
from time import sleep

from zlrsimapi import api_pb2 
from zlrsimapi import api_pb2_grpc

channel = grpc.insecure_channel('localhost:3258')
stub = api_pb2_grpc.APIStub(channel)

if stub.GetCurrentScene(api_pb2.GetCurrentSceneRequest()).scene == 'MainScene':
    stub.Reset(api_pb2.ResetRequest())
    print("Reset scene")
else:
    stub.LoadScene(api_pb2.LoadSceneRequest(scene='MainScene'))
    print("Scene loading...")
    
getSpawnResponse = stub.GetSpawn(api_pb2.GetSpawnRequest())

AgentUid = stub.SpawnAgent(api_pb2.SpawnAgentRequest(state = api_pb2.State(
    transform = getSpawnResponse.spawns[4],
    velocity = api_pb2.Vector3(x = 0, y = 0, z = 0),
    angularVelocity = api_pb2.Vector3(x = 0, y = 0, z = 0)),
    type = 1,
    name = 'Octocopter-Amazon')).uid

stub.Run(api_pb2.RunRequest(timeLimit = 0)) # timeLimit = 0 - set Simulator to work, 1 - set Simulator on pause

sleep(10) # Only for the example. Do not use in the real job.

# Remove agent by uid 
RemoveAgentRequest = api_pb2.RemoveAgentRequest(uid = AgentUid)
RemoveAgentResponse = stub.RemoveAgent(RemoveAgentRequest)


