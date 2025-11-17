set moduleName KECCAK_f
set isTopModule 0
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type function
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
set C_modelName {KECCAK_f}
set C_modelType { int 1600 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ stateArray_0_read int 64 regular  }
	{ stateArray_1_read int 64 regular  }
	{ stateArray_2_read int 64 regular  }
	{ stateArray_3_read int 64 regular  }
	{ stateArray_4_read int 64 regular  }
	{ stateArray_5_read int 64 regular  }
	{ stateArray_6_read int 64 regular  }
	{ stateArray_7_read int 64 regular  }
	{ stateArray_8_read int 64 regular  }
	{ stateArray_9_read int 64 regular  }
	{ stateArray_10_read int 64 regular  }
	{ stateArray_11_read int 64 regular  }
	{ stateArray_1213_read int 64 regular  }
	{ stateArray_13_read int 64 regular  }
	{ stateArray_14_read int 64 regular  }
	{ stateArray_15_read int 64 regular  }
	{ stateArray_16_read int 64 regular  }
	{ stateArray_17_read int 64 regular  }
	{ stateArray_18_read int 64 regular  }
	{ stateArray_19_read int 64 regular  }
	{ stateArray_20_read int 64 regular  }
	{ stateArray_21_read int 64 regular  }
	{ stateArray_22_read int 64 regular  }
	{ stateArray_2325_read int 64 regular  }
	{ stateArray_24_read int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "stateArray_0_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_1_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_2_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_3_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_4_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_5_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_6_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_7_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_8_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_9_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_10_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_11_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_1213_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_13_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_14_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_15_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_16_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_17_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_18_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_19_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_20_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_21_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_22_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_2325_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "stateArray_24_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1600} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ stateArray_0_read sc_in sc_lv 64 signal 0 } 
	{ stateArray_1_read sc_in sc_lv 64 signal 1 } 
	{ stateArray_2_read sc_in sc_lv 64 signal 2 } 
	{ stateArray_3_read sc_in sc_lv 64 signal 3 } 
	{ stateArray_4_read sc_in sc_lv 64 signal 4 } 
	{ stateArray_5_read sc_in sc_lv 64 signal 5 } 
	{ stateArray_6_read sc_in sc_lv 64 signal 6 } 
	{ stateArray_7_read sc_in sc_lv 64 signal 7 } 
	{ stateArray_8_read sc_in sc_lv 64 signal 8 } 
	{ stateArray_9_read sc_in sc_lv 64 signal 9 } 
	{ stateArray_10_read sc_in sc_lv 64 signal 10 } 
	{ stateArray_11_read sc_in sc_lv 64 signal 11 } 
	{ stateArray_1213_read sc_in sc_lv 64 signal 12 } 
	{ stateArray_13_read sc_in sc_lv 64 signal 13 } 
	{ stateArray_14_read sc_in sc_lv 64 signal 14 } 
	{ stateArray_15_read sc_in sc_lv 64 signal 15 } 
	{ stateArray_16_read sc_in sc_lv 64 signal 16 } 
	{ stateArray_17_read sc_in sc_lv 64 signal 17 } 
	{ stateArray_18_read sc_in sc_lv 64 signal 18 } 
	{ stateArray_19_read sc_in sc_lv 64 signal 19 } 
	{ stateArray_20_read sc_in sc_lv 64 signal 20 } 
	{ stateArray_21_read sc_in sc_lv 64 signal 21 } 
	{ stateArray_22_read sc_in sc_lv 64 signal 22 } 
	{ stateArray_2325_read sc_in sc_lv 64 signal 23 } 
	{ stateArray_24_read sc_in sc_lv 64 signal 24 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
	{ ap_return_2 sc_out sc_lv 64 signal -1 } 
	{ ap_return_3 sc_out sc_lv 64 signal -1 } 
	{ ap_return_4 sc_out sc_lv 64 signal -1 } 
	{ ap_return_5 sc_out sc_lv 64 signal -1 } 
	{ ap_return_6 sc_out sc_lv 64 signal -1 } 
	{ ap_return_7 sc_out sc_lv 64 signal -1 } 
	{ ap_return_8 sc_out sc_lv 64 signal -1 } 
	{ ap_return_9 sc_out sc_lv 64 signal -1 } 
	{ ap_return_10 sc_out sc_lv 64 signal -1 } 
	{ ap_return_11 sc_out sc_lv 64 signal -1 } 
	{ ap_return_12 sc_out sc_lv 64 signal -1 } 
	{ ap_return_13 sc_out sc_lv 64 signal -1 } 
	{ ap_return_14 sc_out sc_lv 64 signal -1 } 
	{ ap_return_15 sc_out sc_lv 64 signal -1 } 
	{ ap_return_16 sc_out sc_lv 64 signal -1 } 
	{ ap_return_17 sc_out sc_lv 64 signal -1 } 
	{ ap_return_18 sc_out sc_lv 64 signal -1 } 
	{ ap_return_19 sc_out sc_lv 64 signal -1 } 
	{ ap_return_20 sc_out sc_lv 64 signal -1 } 
	{ ap_return_21 sc_out sc_lv 64 signal -1 } 
	{ ap_return_22 sc_out sc_lv 64 signal -1 } 
	{ ap_return_23 sc_out sc_lv 64 signal -1 } 
	{ ap_return_24 sc_out sc_lv 64 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "stateArray_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_0_read", "role": "default" }} , 
 	{ "name": "stateArray_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_1_read", "role": "default" }} , 
 	{ "name": "stateArray_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_2_read", "role": "default" }} , 
 	{ "name": "stateArray_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_3_read", "role": "default" }} , 
 	{ "name": "stateArray_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_4_read", "role": "default" }} , 
 	{ "name": "stateArray_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_5_read", "role": "default" }} , 
 	{ "name": "stateArray_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_6_read", "role": "default" }} , 
 	{ "name": "stateArray_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_7_read", "role": "default" }} , 
 	{ "name": "stateArray_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_8_read", "role": "default" }} , 
 	{ "name": "stateArray_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_9_read", "role": "default" }} , 
 	{ "name": "stateArray_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_10_read", "role": "default" }} , 
 	{ "name": "stateArray_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_11_read", "role": "default" }} , 
 	{ "name": "stateArray_1213_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_1213_read", "role": "default" }} , 
 	{ "name": "stateArray_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_13_read", "role": "default" }} , 
 	{ "name": "stateArray_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_14_read", "role": "default" }} , 
 	{ "name": "stateArray_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_15_read", "role": "default" }} , 
 	{ "name": "stateArray_16_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_16_read", "role": "default" }} , 
 	{ "name": "stateArray_17_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_17_read", "role": "default" }} , 
 	{ "name": "stateArray_18_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_18_read", "role": "default" }} , 
 	{ "name": "stateArray_19_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_19_read", "role": "default" }} , 
 	{ "name": "stateArray_20_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_20_read", "role": "default" }} , 
 	{ "name": "stateArray_21_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_21_read", "role": "default" }} , 
 	{ "name": "stateArray_22_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_22_read", "role": "default" }} , 
 	{ "name": "stateArray_2325_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_2325_read", "role": "default" }} , 
 	{ "name": "stateArray_24_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stateArray_24_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	KECCAK_f {
		stateArray_0_read {Type I LastRead 0 FirstWrite -1}
		stateArray_1_read {Type I LastRead 0 FirstWrite -1}
		stateArray_2_read {Type I LastRead 0 FirstWrite -1}
		stateArray_3_read {Type I LastRead 0 FirstWrite -1}
		stateArray_4_read {Type I LastRead 0 FirstWrite -1}
		stateArray_5_read {Type I LastRead 0 FirstWrite -1}
		stateArray_6_read {Type I LastRead 0 FirstWrite -1}
		stateArray_7_read {Type I LastRead 0 FirstWrite -1}
		stateArray_8_read {Type I LastRead 0 FirstWrite -1}
		stateArray_9_read {Type I LastRead 0 FirstWrite -1}
		stateArray_10_read {Type I LastRead 0 FirstWrite -1}
		stateArray_11_read {Type I LastRead 0 FirstWrite -1}
		stateArray_1213_read {Type I LastRead 0 FirstWrite -1}
		stateArray_13_read {Type I LastRead 0 FirstWrite -1}
		stateArray_14_read {Type I LastRead 0 FirstWrite -1}
		stateArray_15_read {Type I LastRead 0 FirstWrite -1}
		stateArray_16_read {Type I LastRead 0 FirstWrite -1}
		stateArray_17_read {Type I LastRead 0 FirstWrite -1}
		stateArray_18_read {Type I LastRead 0 FirstWrite -1}
		stateArray_19_read {Type I LastRead 0 FirstWrite -1}
		stateArray_20_read {Type I LastRead 0 FirstWrite -1}
		stateArray_21_read {Type I LastRead 0 FirstWrite -1}
		stateArray_22_read {Type I LastRead 0 FirstWrite -1}
		stateArray_2325_read {Type I LastRead 0 FirstWrite -1}
		stateArray_24_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stateArray_0_read { ap_none {  { stateArray_0_read in_data 0 64 } } }
	stateArray_1_read { ap_none {  { stateArray_1_read in_data 0 64 } } }
	stateArray_2_read { ap_none {  { stateArray_2_read in_data 0 64 } } }
	stateArray_3_read { ap_none {  { stateArray_3_read in_data 0 64 } } }
	stateArray_4_read { ap_none {  { stateArray_4_read in_data 0 64 } } }
	stateArray_5_read { ap_none {  { stateArray_5_read in_data 0 64 } } }
	stateArray_6_read { ap_none {  { stateArray_6_read in_data 0 64 } } }
	stateArray_7_read { ap_none {  { stateArray_7_read in_data 0 64 } } }
	stateArray_8_read { ap_none {  { stateArray_8_read in_data 0 64 } } }
	stateArray_9_read { ap_none {  { stateArray_9_read in_data 0 64 } } }
	stateArray_10_read { ap_none {  { stateArray_10_read in_data 0 64 } } }
	stateArray_11_read { ap_none {  { stateArray_11_read in_data 0 64 } } }
	stateArray_1213_read { ap_none {  { stateArray_1213_read in_data 0 64 } } }
	stateArray_13_read { ap_none {  { stateArray_13_read in_data 0 64 } } }
	stateArray_14_read { ap_none {  { stateArray_14_read in_data 0 64 } } }
	stateArray_15_read { ap_none {  { stateArray_15_read in_data 0 64 } } }
	stateArray_16_read { ap_none {  { stateArray_16_read in_data 0 64 } } }
	stateArray_17_read { ap_none {  { stateArray_17_read in_data 0 64 } } }
	stateArray_18_read { ap_none {  { stateArray_18_read in_data 0 64 } } }
	stateArray_19_read { ap_none {  { stateArray_19_read in_data 0 64 } } }
	stateArray_20_read { ap_none {  { stateArray_20_read in_data 0 64 } } }
	stateArray_21_read { ap_none {  { stateArray_21_read in_data 0 64 } } }
	stateArray_22_read { ap_none {  { stateArray_22_read in_data 0 64 } } }
	stateArray_2325_read { ap_none {  { stateArray_2325_read in_data 0 64 } } }
	stateArray_24_read { ap_none {  { stateArray_24_read in_data 0 64 } } }
}
