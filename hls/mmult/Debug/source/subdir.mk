################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../mmult_top.cpp 

OBJS += \
./source/mmult_top.o 

CPP_DEPS += \
./source/mmult_top.d 


# Each subdirectory must supply rules for building sources it contributes
source/mmult_top.o: /home/raghu/work/projects/matrixMultiply/hls/mmult/mmult_top.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/raghu/work/tools/xilinx/Vivado_HLS/2013.3/include -I/home/raghu/work/tools/xilinx/Vivado_HLS/2013.3/include/etc -I/home/raghu/work/tools/xilinx/Vivado_HLS/2013.3/lnx64/tools/systemc/include -I/home/raghu/work/projects/matrixMultiply/hls -I/home/raghu/work/tools/xilinx/Vivado_HLS/2013.3/lnx64/tools/auto_cc/include -I/home/raghu/work/tools/xilinx/Vivado_HLS/2013.3/include/ap_sysc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


