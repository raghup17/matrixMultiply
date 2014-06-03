from matrixParams import *

class Dma:
    def __init__(self, width, burstLength, burstOverhead):
        self.width = width
        self.burstLength = burstLength
        self.burstOverhead = burstOverhead

    def calcNumBursts(self, transferSizeBits):
        return float(transferSizeBits) / (self.width * self.burstLength)

    def calcBurstTime(self, numBursts):
        wholeBursts = int(numBursts)
        burstTime = wholeBursts  * (self.burstOverhead + self.burstLength)
        if ((numBursts - wholeBursts) > 0):
            fraction = numBursts - wholeBursts 
            burstTime += self.burstOverhead + self.burstLength * fraction

        return burstTime

    def getDmaTime(self, sizeInBits):
        numBursts = self.calcNumBursts(sizeInBits)
        burstTime = self.calcBurstTime(numBursts)
        print "Required %f number of bursts to transfer %d bits" %(numBursts, sizeInBits)
        return burstTime

