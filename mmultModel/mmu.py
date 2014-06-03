from compute import Compute
from memory import Memory
from dma import Dma
from utils import *
# Matrix parameters
SIZE = 512
BSIZE = 64
DT = 32


# Compute parameters
NUM_COMPUTE_UNITS = 8  # Number of matrix multiplier compute units
TMADD = 3

# Memory parameters
A_PORTS = 2
A_PORT_WIDTH = 256
A_SHARING = NUM_COMPUTE_UNITS

B_PORTS = 1
B_PORT_WIDTH = 256
B_SHARING = 1 

C_PORTS = 1
C_PORT_WIDTH = 256
C_SHARING = 1

# DMA parameters
DMA_WIDTH = 256
DMA_BURST_LENGTH = 8
DMA_BURST_OVERHEAD = 10


# --- Inferred parameters ---
# Each compute unit requires one each of A, B and C - required for area estimation and DMA
NUM_A_REQD = NUM_COMPUTE_UNITS / A_SHARING
NUM_B_REQD = NUM_COMPUTE_UNITS / B_SHARING
NUM_C_REQD = NUM_COMPUTE_UNITS / C_SHARING
SIZE_IN_BITS = toBits(BSIZE*BSIZE, DT)

NUM_BLOCKS = (SIZE/BSIZE) * (SIZE/BSIZE)
NUM_BLOCK_MULTIPLIES_TOTAL = NUM_BLOCKS * (SIZE/BSIZE)
NUM_BLOCK_MULTIPLIES_COMPUTE_UNIT = float(NUM_BLOCK_MULTIPLIES_TOTAL) / NUM_COMPUTE_UNITS



# --- Design instantiations ---
# Instantiate memory units to interface with compute unit
memA = Memory(SIZE_IN_BITS, A_SHARING, A_PORTS, A_PORT_WIDTH)
memB = Memory(SIZE_IN_BITS, B_SHARING, B_PORTS, C_PORT_WIDTH)
memC = Memory(SIZE_IN_BITS, C_SHARING, C_PORTS, C_PORT_WIDTH)

# Instantiate compute unit, calculate total compute time
computeUnit = Compute(memA, memB, memC, TMADD)
computeTime = computeUnit.getComputeTime(BSIZE, DT)
totalComputeTime = computeTime * NUM_BLOCK_MULTIPLIES_COMPUTE_UNIT

# Instantiate and compute DMA unit time
dmaUnit = Dma(DMA_WIDTH, DMA_BURST_LENGTH, DMA_BURST_OVERHEAD)
dmaCostPerBlock = BSIZE * dmaUnit.getDmaTime(toBits(BSIZE, DT))
numDmaPerBlockA = NUM_A_REQD # to and fro
numDmaPerBlockB = (SIZE/BSIZE) 
numDmaPerBlockC = (SIZE/BSIZE) * 2
totalNumDma = (NUM_BLOCKS) * (numDmaPerBlockA + numDmaPerBlockB + numDmaPerBlockC)
totalDmaTime = totalNumDma * dmaCostPerBlock

print "DMA cost per block: %d" %(dmaCostPerBlock)
print "Total number of DMA: %d" %(totalNumDma)

totalTime = totalComputeTime + totalDmaTime
computePercent = float(totalComputeTime) * 100 / totalTime
dmaPercent = float(totalDmaTime) * 100 / totalTime

print "Total compute time: %d (%f %%)" %(totalComputeTime, computePercent)
print "Total DMA time: %d (%f %%)" %(totalDmaTime, dmaPercent)
