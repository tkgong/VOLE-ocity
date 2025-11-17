# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
# Tool Version Limit: 2025.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

__USE_VCXX_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../tb_e2e.cpp ../../../../endtoend.cpp ../../../../fiat_shamir.cpp ../../../../gatebygate.cpp ../../../../commit.cpp ../../../../vole.cpp ../../../../shake.cpp ../../../../ggm_tree.cpp ../../../../PRG.cpp ../../../../encrypt.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /opt/Xillinx/2025.1/Vitis
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /opt/Xillinx/2025.1/Vitis/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${XILINX_VCXX}/libexec
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
AP_ENABLE_OPTIMIZED := 1
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
CCFLAG += -fdebug-default-version=4
CCFLAG += --gcc-toolchain=/opt/Xillinx/2025.1/Vitis/tps/lnx64/gcc-8.3.0
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized
LFLAG += --gcc-toolchain=/opt/Xillinx/2025.1/Vitis/tps/lnx64/gcc-8.3.0



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/tb_e2e.o: ../../../../tb_e2e.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../tb_e2e.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/tb_e2e.d

$(ObjDir)/endtoend.o: ../../../../endtoend.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../endtoend.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/endtoend.d

$(ObjDir)/fiat_shamir.o: ../../../../fiat_shamir.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../fiat_shamir.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/fiat_shamir.d

$(ObjDir)/gatebygate.o: ../../../../gatebygate.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../gatebygate.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/gatebygate.d

$(ObjDir)/commit.o: ../../../../commit.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../commit.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/commit.d

$(ObjDir)/vole.o: ../../../../vole.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../vole.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/vole.d

$(ObjDir)/shake.o: ../../../../shake.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../shake.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/shake.d

$(ObjDir)/ggm_tree.o: ../../../../ggm_tree.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../ggm_tree.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/ggm_tree.d

$(ObjDir)/PRG.o: ../../../../PRG.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../PRG.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/PRG.d

$(ObjDir)/encrypt.o: ../../../../encrypt.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../encrypt.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/encrypt.d
