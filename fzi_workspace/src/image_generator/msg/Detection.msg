# Center of segmentation
float32 cx
float32 cy

# Bounding box corners
float32 x1
float32 x2
float32 y1
float32 y2

# The classification confidences (probabilities)
float32[] scores

# Enum for the obstacle classification result
int16   ClassUnclassified = 0 
int16   ClassUnknownSmall = 1
int16   ClassUnknownBig = 2
int16   ClassPedestrian = 3 
int16   ClassMotorbike = 4
int16   ClassCar = 5
int16   ClassTruck = 6
int16   ClassStructure_Pylon = 7
int16   ClassStructure_Beacon = 8
int16   ClassStructure_GuardRail = 9
int16   ClassStructure_ConcreteBarrier = 10
int16   ClassUnknown = 15
int16   ClassBus = 16
int16   ClassBicycle = 17
int16   ClassTrafficLight = 18
int16   ClassTrain = 19

# The obstacle classification with the highest probability.
#
int16   classification