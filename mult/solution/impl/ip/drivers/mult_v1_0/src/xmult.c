// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xmult.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMult_CfgInitialize(XMult *InstancePtr, XMult_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMult_Start(XMult *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMult_ReadReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_AP_CTRL) & 0x80;
    XMult_WriteReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMult_IsDone(XMult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMult_ReadReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMult_IsIdle(XMult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMult_ReadReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMult_IsReady(XMult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMult_ReadReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMult_EnableAutoRestart(XMult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_WriteReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XMult_DisableAutoRestart(XMult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_WriteReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_AP_CTRL, 0);
}

u32 XMult_Get_return(XMult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMult_ReadReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_AP_RETURN);
    return Data;
}
void XMult_InterruptGlobalEnable(XMult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_WriteReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_GIE, 1);
}

void XMult_InterruptGlobalDisable(XMult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_WriteReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_GIE, 0);
}

void XMult_InterruptEnable(XMult *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMult_ReadReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_IER);
    XMult_WriteReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_IER, Register | Mask);
}

void XMult_InterruptDisable(XMult *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMult_ReadReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_IER);
    XMult_WriteReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_IER, Register & (~Mask));
}

void XMult_InterruptClear(XMult *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_WriteReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_ISR, Mask);
}

u32 XMult_InterruptGetEnabled(XMult *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMult_ReadReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_IER);
}

u32 XMult_InterruptGetStatus(XMult *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMult_ReadReg(InstancePtr->Axilites_BaseAddress, XMULT_AXILITES_ADDR_ISR);
}
