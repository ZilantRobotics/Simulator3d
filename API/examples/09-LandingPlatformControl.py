import grpc
from time import sleep

from zlrsimapi import api_pb2 
from zlrsimapi import api_pb2_grpc

channel = grpc.insecure_channel('localhost:3258')
stub = api_pb2_grpc.APIStub(channel)

# Forming LandingPlatformControl.
# Check platform index in "SceneConfigurator" landing platforms section 
# By default PlatformIndex is
# 0 - Landing platform on the roof, 1 - Landing platform in the construction area
# 2 - Ship Box in the residential area, 3 - Techno park
# PlatformState has two states 0 - Close, 1 - Open
LandingPlatformControlRequest = api_pb2.LandingPlatformControlRequest(platformIndex = 0, platformState = 1)
LandingPlatformControlResponse = stub.LandingPlatformControl(LandingPlatformControlRequest)

