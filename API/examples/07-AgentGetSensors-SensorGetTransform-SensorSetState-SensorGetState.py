import grpc
from time import sleep

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

AgentUid = stub.SpawnAgent(api_pb2.SpawnAgentRequest(state = api_pb2.State(
    transform = getSpawnResponse.spawns[4],
    velocity = api_pb2.Vector3(x = 0, y = 0, z = 0),
    angularVelocity = api_pb2.Vector3(x = 0, y = 0, z = 0)),
    type = 1,
    name = 'Octocopter-Amazon')).uid

# Get all sensors
AgentGetSensorsRequest = api_pb2.AgentGetSensorsRequest(uid = AgentUid) 
AgentGetSensorsResponse = stub.AgentGetSensors(AgentGetSensorsRequest)

print('AgentGetSensorsResponse: ', AgentGetSensorsResponse)

# Get sensors' extrinsics. In this example video sensors only.
for sensor in AgentGetSensorsResponse.videoSensors:
    sensorTf = stub.SensorGetTransform(api_pb2.SensorGetTransformRequest(uid = sensor.common.id))
    print("Video Sensor={}".format(sensorTf))

# Set sensors' state (on/off)
for sensor in AgentGetSensorsResponse.imuSensors:
   stub.SensorSetState(api_pb2.SensorSetStateRequest(uid=sensor.common.id, enabled = True))

for sensor in AgentGetSensorsResponse.lidarSensors:
   stub.SensorSetState(api_pb2.SensorSetStateRequest(uid=sensor.common.id, enabled = True))

# Get sensors' state (on/off)
for sensor in [AgentGetSensorsResponse.videoSensors, AgentGetSensorsResponse.lidarSensors]:
    print(sensor[0].common.name, ' ', sensor[0].common.id)
    SensorGetStateRequest = api_pb2.SensorGetStateRequest(uid = sensor[0].common.id) 
    SensorGetStateResponse = stub.SensorGetState(SensorGetStateRequest)
    print('SensorGetStateResponse: ', SensorGetStateResponse)    