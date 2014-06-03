from utils import *
from memory import Memory
class Compute:
    def __init__(self,a,b,c,tmadd, maddUnits):
        self.a = a
        self.b = b
        self.c = c
        self.tmadd = tmadd
        self.maddUnits = maddUnits

    def getComputeTime(self, BSIZE, DT):
        BSIZE_bits = toBits(BSIZE, DT)
        unpackLogic = BSIZE_bits/DT 
        tra = self.a.getAccessTime(BSIZE_bits) + unpackLogic 
        trb = self.b.getAccessTime(BSIZE_bits) + unpackLogic
        trc = self.c.getAccessTime(BSIZE_bits) + unpackLogic
        twc = trc
        tmadd = self.tmadd * BSIZE / self.maddUnits

        computeTime = BSIZE * (tra + trc + twc + BSIZE * (trb + tmadd))
        return computeTime

    def getArea(self):
        return self.maddUnits
        
