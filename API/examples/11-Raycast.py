import grpc
from time import sleep

from zlrsimapi import api_pb2 
from zlrsimapi import api_pb2_grpc

channel = grpc.insecure_channel('localhost:3258')
stub = api_pb2_grpc.APIStub(channel)

# Raycast
OriginFrom = api_pb2.Vector3(x = -1273.733, y = 918.700012, z = 650)
DirectionTo = api_pb2.Vector3(x = 0, y = 0, z = -1) # Z - Vertical axis
RaycastRequest = api_pb2.RaycastRequest(layerMask = 961, # Ground layer 
                                   origin = OriginFrom, 
                                   direction = DirectionTo,
                                   maxDistance = 50000)
RaycastResponse = stub.Raycast(RaycastRequest)
print('RaycastResponse: ', RaycastResponse)
