// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmult.h"

extern XMult_Config XMult_ConfigTable[];

XMult_Config *XMult_LookupConfig(u16 DeviceId) {
	XMult_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMULT_NUM_INSTANCES; Index++) {
		if (XMult_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMult_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMult_Initialize(XMult *InstancePtr, u16 DeviceId) {
	XMult_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMult_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMult_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
