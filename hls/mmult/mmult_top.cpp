#include "ap_cint.h"
#include "ap_int.h"

#define BRAM_DT int256
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

    int i = 0,j = 0,k = 0;
    int arow[BDIM], brow[BDIM], crow[BDIM];
#pragma HLS ARRAY_PARTITION variable=arow complete dim=1
#pragma HLS ARRAY_PARTITION variable=brow complete dim=1
#pragma HLS ARRAY_PARTITION variable=crow complete dim=1

    int numRows = BDIM;
    int rowSize = BDIM/ELEMS_PER_BUS;
    int rowIdx = 0;
    for (rowIdx = 0; rowIdx < numRows; rowIdx++) {
    	int rowBaseIdx = rowIdx * rowSize;
    	k = 0;
    	for (j=0; j<rowSize; j++) {
    		int curIdx = rowBaseIdx + j;
    		BRAM_DT curElemA = a[curIdx];
    		BRAM_DT curElemB = b[curIdx];

    		for (int t2=0; t2<ELEMS_PER_BUS; t2++, k++) {
    			arow[k] = apint_get_range(curElemA, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS);
    			brow[k] = apint_get_range(curElemB, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS);
    		}
    	}

    	for (int t1=0; t1<BDIM; t1++) {
#pragma HLS UNROLL skip_exit_check
#pragma HLS PIPELINE
    		crow[t1] = arow[t1] * brow[t1];
    	}

    	k=0;
    	for (j=0; j<rowSize; j++) {
    		int curIdx = rowBaseIdx+j;
    		BRAM_DT curElemC = 0;
    		for (int t2=0; t2<ELEMS_PER_BUS; t2++, k++) {
    			curElemC = apint_set_range(curElemC, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS, crow[k]);
    		}
    		c[curIdx] = curElemC;
    	}
    }
}
