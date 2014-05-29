#include "ap_cint.h"
#include "ap_int.h"

#define BRAM_DT uint256
#define BUS_WIDTH 256
#define ELEM_WIDTH_BYTES 4
#define ELEM_WIDTH_BITS (ELEM_WIDTH_BYTES*8)
#define ELEMS_PER_BUS (BUS_WIDTH/ELEM_WIDTH_BITS)
#define ELEM_WIDTH_MASK (ELEM_WIDTH_BITS-1)

// In ELEM_WIDTH_BYTES
#define BDIM 64
#define BSIZE (BDIM*BDIM)
#define RAM_WIDTH_BITS 256
#define RAM_DEPTH 8192


void mmult_top(BRAM_DT a[RAM_DEPTH], BRAM_DT b[RAM_DEPTH], BRAM_DT c[RAM_DEPTH])
{
#pragma HLS INTERFACE ap_bus port=a
#pragma HLS RESOURCE core=AXI4M variable=a
#pragma HLS INTERFACE ap_bus port=b
#pragma HLS RESOURCE core=AXI4M variable=b
#pragma HLS INTERFACE ap_bus port=c
#pragma HLS RESOURCE core=AXI4M variable=c
#pragma HLS RESOURCE core=AXI4LiteS variable=return metadata="-bus_bundle CONTROL"

    unsigned int i = 0,j = 0,k = 0;
    unsigned int arow[BDIM], brow[BDIM], crow[BDIM];
#pragma HLS ARRAY_PARTITION variable=arow complete dim=1
#pragma HLS ARRAY_PARTITION variable=brow complete dim=1
#pragma HLS ARRAY_PARTITION variable=crow complete dim=1

    unsigned int numRows = BDIM;
    unsigned int rowSize = BDIM/ELEMS_PER_BUS;   // number of entries per bus
    unsigned int rowIdx = 0;
    for (rowIdx = 0; rowIdx < numRows; rowIdx++) {      // rowIdx refers to the current block row in the logical view
    	unsigned int rowBaseIdx = rowIdx * rowSize;     // rowBaseIdx is the actual index that points to the first element of row number 'rowIdx' in BRAM
    	k = 0;
    	for (j=0; j<rowSize; j++) {                     // j iterates through all elements in that row, starting from rowIdx
    		unsigned int curIdx = rowBaseIdx + j;
    		BRAM_DT curElemA = a[curIdx];
    		BRAM_DT curElemC = c[curIdx];

    		for (unsigned int t2=0; t2<ELEMS_PER_BUS; t2++, k++) {  // Each entry has ELEMS_PER_BUS number of entries, split them and add them to arow and crow
    			arow[k] = apint_get_range(curElemA, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS);
    			crow[k] = apint_get_range(curElemC, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS);
    		}
    	}

        // Now, iterate through all rows in b. For each logical row:
        // 1. Store the whole logical row in brow
        // 2. Perform SIMD multiply-accumulate of arow and brow into crow
        for (int rowIdxB = 0; rowIdxB < numRows; rowIdxB++) {
            int rowBaseIdxB = rowIdxB * rowSize;
            
            // Fetch one logical row into brow
            k = 0;
            for (j=0; j<rowSize; j++) {
                int curIdx = rowBaseIdxB+j;
                BRAM_DT curElemB = b[curIdx];
                for (int t2=0; t2<ELEMS_PER_BUS; t2++, k++) {
    			    brow[k] = apint_get_range(curElemB, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS);
                }
            }

            // Perform SIMD multiply-accumulate
            for (unsigned int t1=0; t1<BDIM; t1++) {
#pragma HLS UNROLL skip_exit_check
#pragma HLS PIPELINE
    		    crow[t1] += arow[rowIdxB] * brow[t1];
    	    }
        }

        // Store crow back
    	k=0;
    	for (j=0; j<rowSize; j++) {
    		unsigned int curIdx = rowBaseIdx+j;
    		BRAM_DT curElemC = 0;
    		for (unsigned int t2=0; t2<ELEMS_PER_BUS; t2++, k++) {
    			curElemC = apint_set_range(curElemC, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS, crow[k]);
    		}
    		c[curIdx] = curElemC;
    	}
    }
}
