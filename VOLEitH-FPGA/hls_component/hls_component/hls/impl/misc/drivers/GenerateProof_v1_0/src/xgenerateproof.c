// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xgenerateproof.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGenerateproof_CfgInitialize(XGenerateproof *InstancePtr, XGenerateproof_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGenerateproof_Start(XGenerateproof *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerateproof_ReadReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGenerateproof_WriteReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGenerateproof_IsDone(XGenerateproof *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerateproof_ReadReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGenerateproof_IsIdle(XGenerateproof *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerateproof_ReadReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGenerateproof_IsReady(XGenerateproof *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerateproof_ReadReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGenerateproof_EnableAutoRestart(XGenerateproof *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerateproof_WriteReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGenerateproof_DisableAutoRestart(XGenerateproof *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerateproof_WriteReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_AP_CTRL, 0);
}

void XGenerateproof_InterruptGlobalEnable(XGenerateproof *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerateproof_WriteReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_GIE, 1);
}

void XGenerateproof_InterruptGlobalDisable(XGenerateproof *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerateproof_WriteReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_GIE, 0);
}

void XGenerateproof_InterruptEnable(XGenerateproof *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGenerateproof_ReadReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_IER);
    XGenerateproof_WriteReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_IER, Register | Mask);
}

void XGenerateproof_InterruptDisable(XGenerateproof *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGenerateproof_ReadReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_IER);
    XGenerateproof_WriteReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGenerateproof_InterruptClear(XGenerateproof *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerateproof_WriteReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_ISR, Mask);
}

u32 XGenerateproof_InterruptGetEnabled(XGenerateproof *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGenerateproof_ReadReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_IER);
}

u32 XGenerateproof_InterruptGetStatus(XGenerateproof *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGenerateproof_ReadReg(InstancePtr->Control_BaseAddress, XGENERATEPROOF_CONTROL_ADDR_ISR);
}

