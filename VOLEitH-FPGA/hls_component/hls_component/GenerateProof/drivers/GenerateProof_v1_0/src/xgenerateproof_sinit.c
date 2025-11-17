// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xgenerateproof.h"

extern XGenerateproof_Config XGenerateproof_ConfigTable[];

#ifdef SDT
XGenerateproof_Config *XGenerateproof_LookupConfig(UINTPTR BaseAddress) {
	XGenerateproof_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XGenerateproof_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XGenerateproof_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XGenerateproof_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGenerateproof_Initialize(XGenerateproof *InstancePtr, UINTPTR BaseAddress) {
	XGenerateproof_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGenerateproof_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGenerateproof_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XGenerateproof_Config *XGenerateproof_LookupConfig(u16 DeviceId) {
	XGenerateproof_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGENERATEPROOF_NUM_INSTANCES; Index++) {
		if (XGenerateproof_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGenerateproof_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGenerateproof_Initialize(XGenerateproof *InstancePtr, u16 DeviceId) {
	XGenerateproof_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGenerateproof_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGenerateproof_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

