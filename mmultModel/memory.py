import math

class Memory:

    def __init__(self, sizeInBits, sharing, ports, portWidth):
        self.sizeInBits = sizeInBits
        self.sharing = sharing
        self.ports = ports
        self.portWidth = portWidth
        self.area = sizeInBits/(2^20)
        self.accessTime = max((float(self.sharing)/self.ports), 1)

    def getAccessTime(self, numBits):
        return math.ceil(float(numBits)/self.portWidth)*self.accessTime

    def getArea(self):
        return self.area
