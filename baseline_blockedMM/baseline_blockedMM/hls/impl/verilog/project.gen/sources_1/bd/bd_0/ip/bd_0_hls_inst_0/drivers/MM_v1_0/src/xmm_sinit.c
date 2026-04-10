// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmm.h"

extern XMm_Config XMm_ConfigTable[];

#ifdef SDT
XMm_Config *XMm_LookupConfig(UINTPTR BaseAddress) {
	XMm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMm_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMm_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMm_Initialize(XMm *InstancePtr, UINTPTR BaseAddress) {
	XMm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMm_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMm_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMm_Config *XMm_LookupConfig(u16 DeviceId) {
	XMm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMM_NUM_INSTANCES; Index++) {
		if (XMm_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMm_Initialize(XMm *InstancePtr, u16 DeviceId) {
	XMm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMm_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMm_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

