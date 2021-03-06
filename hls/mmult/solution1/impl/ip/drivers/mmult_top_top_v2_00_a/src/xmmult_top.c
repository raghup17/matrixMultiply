// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.3
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xmmult_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMmult_top_CfgInitialize(XMmult_top *InstancePtr, XMmult_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMmult_top_Start(XMmult_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMmult_top_ReadReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMmult_top_WriteReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMmult_top_IsDone(XMmult_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMmult_top_ReadReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMmult_top_IsIdle(XMmult_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMmult_top_ReadReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMmult_top_IsReady(XMmult_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMmult_top_ReadReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMmult_top_EnableAutoRestart(XMmult_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMmult_top_WriteReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMmult_top_DisableAutoRestart(XMmult_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMmult_top_WriteReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XMmult_top_InterruptGlobalEnable(XMmult_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMmult_top_WriteReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_GIE, 1);
}

void XMmult_top_InterruptGlobalDisable(XMmult_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMmult_top_WriteReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_GIE, 0);
}

void XMmult_top_InterruptEnable(XMmult_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMmult_top_ReadReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_IER);
    XMmult_top_WriteReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XMmult_top_InterruptDisable(XMmult_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMmult_top_ReadReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_IER);
    XMmult_top_WriteReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMmult_top_InterruptClear(XMmult_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMmult_top_WriteReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XMmult_top_InterruptGetEnabled(XMmult_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMmult_top_ReadReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_IER);
}

u32 XMmult_top_InterruptGetStatus(XMmult_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMmult_top_ReadReg(InstancePtr->Control_BaseAddress, XMMULT_TOP_CONTROL_ADDR_ISR);
}

