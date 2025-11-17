set moduleName shake_extensible_Pipeline_VITIS_LOOP_776_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 41
set C_modelName {shake_extensible_Pipeline_VITIS_LOOP_776_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ stateArray_16_0 int 64 regular  }
	{ stateArray_15_0 int 64 regular  }
	{ stateArray_14_0 int 64 regular  }
	{ stateArray_13_0 int 64 regular  }
	{ stateArray_12_0 int 64 regular  }
	{ stateArray_11_0 int 64 regular  }
	{ stateArray_10_0 int 64 regular  }
	{ stateArray_9_0 int 64 regular  }
	{ stateArray_8_0 int 64 regular  }
	{ stateArray_7_0 int 64 regular  }
	{ stateArray_6_0 int 64 regular  }
	{ stateArray_5_0 int 64 regular  }
	{ stateArray_4_0 int 64 regular  }
	{ stateArray_3_0 int 64 regular  }
	{ stateArray_2_0 int 64 regular  }
	{ stateArray_1_0 int 64 regular  }
	{ stateArray_0 int 64 regular  }
	{ msgStrm int 64 regular {fifo 0 volatile }  }
	{ stateArray_16_1_out int 64 regular {pointer 1}  }
	{ stateArray_15_1_out int 64 regular {pointer 1}  }
	{ stateArray_14_1_out int 64 regular {pointer 1}  }
	{ stateArray_13_1_out int 64 regular {pointer 1}  }
	{ stateArray_12_1_out int 64 regular {pointer 1}  }
	{ stateArray_11_1_out int 64 regular {pointer 1}  }
	{ stateArray_10_1_out int 64 regular {pointer 1}  }
	{ stateArray_9_1_out int 64 regular {pointer 1}  }
	{ stateArray_8_1_out int 64 regular {pointer 1}  }
	{ stateArray_7_1_out int 64 regular {pointer 1}  }
	{ stateArray_6_1_out int 64 regular {pointer 1}  }
	{ stateArray_5_1_out int 64 regular {pointer 1}  }
	{ stateArray_4_1_out int 64 regular {pointer 1}  }
	{ stateArray_3_1_out int 64 regular {pointer 1}  }
	{ stateArray_2_1_out int 64 regular {pointer 1}  }
	{ stateArray_1_1_out int 64 regular {pointer 1}  }
	{ stateArray_1213_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "stateArray_16_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_15_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_14_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_13_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_12_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_11_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_10_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_9_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_8_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_7_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_6_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_5_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_4_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_3_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_2_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_1_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "msgStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_16_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_15_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_14_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_13_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_12_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_11_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_10_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_9_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_8_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_7_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_6_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_5_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_4_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_3_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_2_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_1_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stateArray_1213_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ msgStrm_dout sc_in sc_lv 64 signal 17 } 
	{ msgStrm_empty_n sc_in sc_logic 1 signal 17 } 
	{ msgStrm_read sc_out sc_logic 1 signal 17 } 
	{ stateArray_16_0 sc_in sc_lv 64 signal 0 } 
	{ stateArray_15_0 sc_in sc_lv 64 signal 1 } 
	{ stateArray_14_0 sc_in sc_lv 64 signal 2 } 
	{ stateArray_13_0 sc_in sc_lv 64 signal 3 } 
	{ stateArray_12_0 sc_in sc_lv 64 signal 4 } 
	{ stateArray_11_0 sc_in sc_lv 64 signal 5 } 
	{ stateArray_10_0 sc_in sc_lv 64 signal 6 } 
	{ stateArray_9_0 sc_in sc_lv 64 signal 7 } 
	{ stateArray_8_0 sc_in sc_lv 64 signal 8 } 
	{ stateArray_7_0 sc_in sc_lv 64 signal 9 } 
	{ stateArray_6_0 sc_in sc_lv 64 signal 10 } 
	{ stateArray_5_0 sc_in sc_lv 64 signal 11 } 
	{ stateArray_4_0 sc_in sc_lv 64 signal 12 } 
	{ stateArray_3_0 sc_in sc_lv 64 signal 13 } 
	{ stateArray_2_0 sc_in sc_lv 64 signal 14 } 
	{ stateArray_1_0 sc_in sc_lv 64 signal 15 } 
	{ stateArray_0 sc_in sc_lv 64 signal 16 } 
	{ stateArray_16_1_out sc_out sc_lv 64 signal 18 } 
	{ stateArray_16_1_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ stateArray_15_1_out sc_out sc_lv 64 signal 19 } 
	{ stateArray_15_1_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ stateArray_14_1_out sc_out sc_lv 64 signal 20 } 
	{ stateArray_14_1_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ stateArray_13_1_out sc_out sc_lv 64 signal 21 } 
	{ stateArray_13_1_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ stateArray_12_1_out sc_out sc_lv 64 signal 22 } 
	{ stateArray_12_1_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ stateArray_11_1_out sc_out sc_lv 64 signal 23 } 
	{ stateArray_11_1_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ stateArray_10_1_out sc_out sc_lv 64 signal 24 } 
	{ stateArray_10_1_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ stateArray_9_1_out sc_out sc_lv 64 signal 25 } 
	{ stateArray_9_1_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ stateArray_8_1_out sc_out sc_lv 64 signal 26 } 
	{ stateArray_8_1_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ stateArray_7_1_out sc_out sc_lv 64 signal 27 } 
	{ stateArray_7_1_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ stateArray_6_1_out sc_out sc_lv 64 signal 28 } 
	{ stateArray_6_1_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ stateArray_5_1_out sc_out sc_lv 64 signal 29 } 
	{ stateArray_5_1_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ stateArray_4_1_out sc_out sc_lv 64 signal 30 } 
	{ stateArray_4_1_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ stateArray_3_1_out sc_out sc_lv 64 signal 31 } 
	{ stateArray_3_1_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ stateArray_2_1_out sc_out sc_lv 64 signal 32 } 
	{ stateArray_2_1_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ stateArray_1_1_out sc_out sc_lv 64 signal 33 } 
	{ stateArray_1_1_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ stateArray_1213_out sc_out sc_lv 64 signal 34 } 
	{ stateArray_1213_out_ap_vld sc_out sc_logic 1 outvld 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "msgStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msgStrm", "role": "dout" }} , 
 	{ "name": "msgStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "empty_n" }} , 
 	{ "name": "msgStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "read" }} , 
 	{ "name": "stateArray_16_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_16_0", "role": "default" }} , 
 	{ "name": "stateArray_15_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_15_0", "role": "default" }} , 
 	{ "name": "stateArray_14_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_14_0", "role": "default" }} , 
 	{ "name": "stateArray_13_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_13_0", "role": "default" }} , 
 	{ "name": "stateArray_12_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_12_0", "role": "default" }} , 
 	{ "name": "stateArray_11_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_11_0", "role": "default" }} , 
 	{ "name": "stateArray_10_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_10_0", "role": "default" }} , 
 	{ "name": "stateArray_9_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_9_0", "role": "default" }} , 
 	{ "name": "stateArray_8_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_8_0", "role": "default" }} , 
 	{ "name": "stateArray_7_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_7_0", "role": "default" }} , 
 	{ "name": "stateArray_6_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_6_0", "role": "default" }} , 
 	{ "name": "stateArray_5_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_5_0", "role": "default" }} , 
 	{ "name": "stateArray_4_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_4_0", "role": "default" }} , 
 	{ "name": "stateArray_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_3_0", "role": "default" }} , 
 	{ "name": "stateArray_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_2_0", "role": "default" }} , 
 	{ "name": "stateArray_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_1_0", "role": "default" }} , 
 	{ "name": "stateArray_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_0", "role": "default" }} , 
 	{ "name": "stateArray_16_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_16_1_out", "role": "default" }} , 
 	{ "name": "stateArray_16_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_16_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_15_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_15_1_out", "role": "default" }} , 
 	{ "name": "stateArray_15_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_15_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_14_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_14_1_out", "role": "default" }} , 
 	{ "name": "stateArray_14_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_14_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_13_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_13_1_out", "role": "default" }} , 
 	{ "name": "stateArray_13_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_13_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_12_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_12_1_out", "role": "default" }} , 
 	{ "name": "stateArray_12_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_12_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_11_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_11_1_out", "role": "default" }} , 
 	{ "name": "stateArray_11_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_11_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_10_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_10_1_out", "role": "default" }} , 
 	{ "name": "stateArray_10_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_10_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_9_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_9_1_out", "role": "default" }} , 
 	{ "name": "stateArray_9_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_9_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_8_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_8_1_out", "role": "default" }} , 
 	{ "name": "stateArray_8_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_8_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_7_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_7_1_out", "role": "default" }} , 
 	{ "name": "stateArray_7_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_7_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_6_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_6_1_out", "role": "default" }} , 
 	{ "name": "stateArray_6_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_6_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_5_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_5_1_out", "role": "default" }} , 
 	{ "name": "stateArray_5_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_5_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_4_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_4_1_out", "role": "default" }} , 
 	{ "name": "stateArray_4_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_4_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_3_1_out", "role": "default" }} , 
 	{ "name": "stateArray_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_2_1_out", "role": "default" }} , 
 	{ "name": "stateArray_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_1_1_out", "role": "default" }} , 
 	{ "name": "stateArray_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "stateArray_1213_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_1213_out", "role": "default" }} , 
 	{ "name": "stateArray_1213_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stateArray_1213_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	shake_extensible_Pipeline_VITIS_LOOP_776_3 {
		stateArray_16_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_15_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_14_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_13_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_12_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_11_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_10_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_9_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_8_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_7_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_6_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_5_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_4_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_3_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_2_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_1_0 {Type I LastRead 0 FirstWrite -1}
		stateArray_0 {Type I LastRead 0 FirstWrite -1}
		msgStrm {Type I LastRead 1 FirstWrite -1}
		stateArray_16_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_15_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_14_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_13_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_12_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_11_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_10_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_9_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_8_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_7_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_6_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_5_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_4_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_3_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_2_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_1_1_out {Type O LastRead -1 FirstWrite 0}
		stateArray_1213_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	stateArray_16_0 { ap_none {  { stateArray_16_0 in_data 0 64 } } }
	stateArray_15_0 { ap_none {  { stateArray_15_0 in_data 0 64 } } }
	stateArray_14_0 { ap_none {  { stateArray_14_0 in_data 0 64 } } }
	stateArray_13_0 { ap_none {  { stateArray_13_0 in_data 0 64 } } }
	stateArray_12_0 { ap_none {  { stateArray_12_0 in_data 0 64 } } }
	stateArray_11_0 { ap_none {  { stateArray_11_0 in_data 0 64 } } }
	stateArray_10_0 { ap_none {  { stateArray_10_0 in_data 0 64 } } }
	stateArray_9_0 { ap_none {  { stateArray_9_0 in_data 0 64 } } }
	stateArray_8_0 { ap_none {  { stateArray_8_0 in_data 0 64 } } }
	stateArray_7_0 { ap_none {  { stateArray_7_0 in_data 0 64 } } }
	stateArray_6_0 { ap_none {  { stateArray_6_0 in_data 0 64 } } }
	stateArray_5_0 { ap_none {  { stateArray_5_0 in_data 0 64 } } }
	stateArray_4_0 { ap_none {  { stateArray_4_0 in_data 0 64 } } }
	stateArray_3_0 { ap_none {  { stateArray_3_0 in_data 0 64 } } }
	stateArray_2_0 { ap_none {  { stateArray_2_0 in_data 0 64 } } }
	stateArray_1_0 { ap_none {  { stateArray_1_0 in_data 0 64 } } }
	stateArray_0 { ap_none {  { stateArray_0 in_data 0 64 } } }
	msgStrm { ap_fifo {  { msgStrm_dout fifo_data_in 0 64 }  { msgStrm_empty_n fifo_status 0 1 }  { msgStrm_read fifo_port_we 1 1 } } }
	stateArray_16_1_out { ap_vld {  { stateArray_16_1_out out_data 1 64 }  { stateArray_16_1_out_ap_vld out_vld 1 1 } } }
	stateArray_15_1_out { ap_vld {  { stateArray_15_1_out out_data 1 64 }  { stateArray_15_1_out_ap_vld out_vld 1 1 } } }
	stateArray_14_1_out { ap_vld {  { stateArray_14_1_out out_data 1 64 }  { stateArray_14_1_out_ap_vld out_vld 1 1 } } }
	stateArray_13_1_out { ap_vld {  { stateArray_13_1_out out_data 1 64 }  { stateArray_13_1_out_ap_vld out_vld 1 1 } } }
	stateArray_12_1_out { ap_vld {  { stateArray_12_1_out out_data 1 64 }  { stateArray_12_1_out_ap_vld out_vld 1 1 } } }
	stateArray_11_1_out { ap_vld {  { stateArray_11_1_out out_data 1 64 }  { stateArray_11_1_out_ap_vld out_vld 1 1 } } }
	stateArray_10_1_out { ap_vld {  { stateArray_10_1_out out_data 1 64 }  { stateArray_10_1_out_ap_vld out_vld 1 1 } } }
	stateArray_9_1_out { ap_vld {  { stateArray_9_1_out out_data 1 64 }  { stateArray_9_1_out_ap_vld out_vld 1 1 } } }
	stateArray_8_1_out { ap_vld {  { stateArray_8_1_out out_data 1 64 }  { stateArray_8_1_out_ap_vld out_vld 1 1 } } }
	stateArray_7_1_out { ap_vld {  { stateArray_7_1_out out_data 1 64 }  { stateArray_7_1_out_ap_vld out_vld 1 1 } } }
	stateArray_6_1_out { ap_vld {  { stateArray_6_1_out out_data 1 64 }  { stateArray_6_1_out_ap_vld out_vld 1 1 } } }
	stateArray_5_1_out { ap_vld {  { stateArray_5_1_out out_data 1 64 }  { stateArray_5_1_out_ap_vld out_vld 1 1 } } }
	stateArray_4_1_out { ap_vld {  { stateArray_4_1_out out_data 1 64 }  { stateArray_4_1_out_ap_vld out_vld 1 1 } } }
	stateArray_3_1_out { ap_vld {  { stateArray_3_1_out out_data 1 64 }  { stateArray_3_1_out_ap_vld out_vld 1 1 } } }
	stateArray_2_1_out { ap_vld {  { stateArray_2_1_out out_data 1 64 }  { stateArray_2_1_out_ap_vld out_vld 1 1 } } }
	stateArray_1_1_out { ap_vld {  { stateArray_1_1_out out_data 1 64 }  { stateArray_1_1_out_ap_vld out_vld 1 1 } } }
	stateArray_1213_out { ap_vld {  { stateArray_1213_out out_data 1 64 }  { stateArray_1213_out_ap_vld out_vld 1 1 } } }
}
