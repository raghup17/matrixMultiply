############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
open_project mmult
set_top mmult_top
add_files mmult/mmult_top.cpp
open_solution "solution1"
set_part {xc7z045ffg900-1}
create_clock -period 10 -name default
source "./mmult/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design -trace_level none
export_design -format ip_catalog -description "An IP generated by Vivado HLS" -vendor "xilinx.com" -library "hls" -version "1.0"
