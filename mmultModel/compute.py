from utils import *
from memory import Memory
class Compute:
    def __init__(self,a,b,c,tmadd):
        self.a = a
        self.b = b
        self.c = c
        self.tmadd = tmadd

    def getComputeTime(self, BSIZE, DT):
        BSIZE_bits = toBits(BSIZE, DT) 
        tra = self.a.getAccessTime(BSIZE_bits)
        trb = self.b.getAccessTime(BSIZE_bits)
        trc = self.c.getAccessTime(BSIZE_bits)
        twc = trc
        tmadd = self.tmadd

        computeTime = BSIZE * (tra + trc + twc + BSIZE * (trb + tmadd))
        return computeTime
