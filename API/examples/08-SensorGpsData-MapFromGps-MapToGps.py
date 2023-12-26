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
    name = 'Quadcopter-M690')).uid

# Get all sensors
AgentGetSensorsRequest = api_pb2.AgentGetSensorsRequest(uid = AgentUid) 
AgentGetSensorsResponse = stub.AgentGetSensors(AgentGetSensorsRequest)

# Get GPS data
for sensor in [AgentGetSensorsResponse.gpsSensors]:
    SensorGpsDataRequest = api_pb2.SensorGpsDataRequest(uid = sensor[0].common.id) 
    SensorGpsDataResponse = stub.SensorGpsData(SensorGpsDataRequest)
    print('GpsData: ', SensorGpsDataResponse)
    # Convert global coords to the simulator's internal coord system
    MapFromGpsRequest = api_pb2.MapFromGpsRequest(northing = SensorGpsDataResponse.gps.northing,                                                
                                                  easting = SensorGpsDataResponse.gps.easting,
                                                  latitude = SensorGpsDataResponse.gps.latitude,
                                                  longitude = SensorGpsDataResponse.gps.longitude,
                                                  altitude = SensorGpsDataResponse.gps.altitude,
                                                  orientation = SensorGpsDataResponse.gps.orientation)
    
    MapFromGpsResponse = stub.MapFromGps(MapFromGpsRequest)
    print('MapFromGpsResponse: ', MapFromGpsResponse)

# Forming MapToGpsRequest. Covert local internal coords to global
UnityPosition = api_pb2.Vector3(x = -891, y = 190.61937, z = -12.2681971)
UnityRotation = api_pb2.Vector3(x = 0.0, y = 0.0, z = 0.0)
UnityTransform = api_pb2.Transform(position = UnityPosition, rotation = UnityRotation)
MapToGpsRequest = api_pb2.MapToGpsRequest(transform = UnityTransform)
# Get coverted result in global coords
MapToGpsResponse = stub.MapToGps(MapToGpsRequest)
print('MapToGpsResponse: ', MapToGpsResponse)