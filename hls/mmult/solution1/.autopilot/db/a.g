#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/raghu/work/projects/matrixMultiply/hls/mmult/solution1/.autopilot/db/a.g.bc ${1+"$@"}
