set moduleName process_r
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
set C_modelName {process}
set C_modelType { int 128 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ this_1_0_val int 128 regular  }
	{ this_1_1_val int 128 regular  }
	{ this_1_2_val int 128 regular  }
	{ this_1_3_val int 128 regular  }
	{ this_1_4_val int 128 regular  }
	{ this_1_5_val int 128 regular  }
	{ this_1_6_val int 128 regular  }
	{ this_1_7_val int 128 regular  }
	{ this_1_8_val int 128 regular  }
	{ this_1_9_val int 128 regular  }
	{ this_1_10_val int 128 regular  }
	{ plaintext int 128 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "this_1_0_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_1_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_2_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_3_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_4_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_5_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_6_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_7_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_8_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_9_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_10_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ this_1_0_val sc_in sc_lv 128 signal 0 } 
	{ this_1_1_val sc_in sc_lv 128 signal 1 } 
	{ this_1_2_val sc_in sc_lv 128 signal 2 } 
	{ this_1_3_val sc_in sc_lv 128 signal 3 } 
	{ this_1_4_val sc_in sc_lv 128 signal 4 } 
	{ this_1_5_val sc_in sc_lv 128 signal 5 } 
	{ this_1_6_val sc_in sc_lv 128 signal 6 } 
	{ this_1_7_val sc_in sc_lv 128 signal 7 } 
	{ this_1_8_val sc_in sc_lv 128 signal 8 } 
	{ this_1_9_val sc_in sc_lv 128 signal 9 } 
	{ this_1_10_val sc_in sc_lv 128 signal 10 } 
	{ plaintext sc_in sc_lv 128 signal 11 } 
	{ ap_return sc_out sc_lv 128 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "this_1_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_0_val", "role": "default" }} , 
 	{ "name": "this_1_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_1_val", "role": "default" }} , 
 	{ "name": "this_1_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_2_val", "role": "default" }} , 
 	{ "name": "this_1_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_3_val", "role": "default" }} , 
 	{ "name": "this_1_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_4_val", "role": "default" }} , 
 	{ "name": "this_1_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_5_val", "role": "default" }} , 
 	{ "name": "this_1_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_6_val", "role": "default" }} , 
 	{ "name": "this_1_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_7_val", "role": "default" }} , 
 	{ "name": "this_1_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_8_val", "role": "default" }} , 
 	{ "name": "this_1_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_9_val", "role": "default" }} , 
 	{ "name": "this_1_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_1_10_val", "role": "default" }} , 
 	{ "name": "plaintext", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "plaintext", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	process_r {
		this_1_0_val {Type I LastRead 0 FirstWrite -1}
		this_1_1_val {Type I LastRead 0 FirstWrite -1}
		this_1_2_val {Type I LastRead 0 FirstWrite -1}
		this_1_3_val {Type I LastRead 0 FirstWrite -1}
		this_1_4_val {Type I LastRead 0 FirstWrite -1}
		this_1_5_val {Type I LastRead 0 FirstWrite -1}
		this_1_6_val {Type I LastRead 0 FirstWrite -1}
		this_1_7_val {Type I LastRead 0 FirstWrite -1}
		this_1_8_val {Type I LastRead 0 FirstWrite -1}
		this_1_9_val {Type I LastRead 0 FirstWrite -1}
		this_1_10_val {Type I LastRead 0 FirstWrite -1}
		plaintext {Type I LastRead 0 FirstWrite -1}
		cipher_0_ssbox {Type I LastRead -1 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}
	GFMul2 {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_1_0_val { ap_none {  { this_1_0_val in_data 0 128 } } }
	this_1_1_val { ap_none {  { this_1_1_val in_data 0 128 } } }
	this_1_2_val { ap_none {  { this_1_2_val in_data 0 128 } } }
	this_1_3_val { ap_none {  { this_1_3_val in_data 0 128 } } }
	this_1_4_val { ap_none {  { this_1_4_val in_data 0 128 } } }
	this_1_5_val { ap_none {  { this_1_5_val in_data 0 128 } } }
	this_1_6_val { ap_none {  { this_1_6_val in_data 0 128 } } }
	this_1_7_val { ap_none {  { this_1_7_val in_data 0 128 } } }
	this_1_8_val { ap_none {  { this_1_8_val in_data 0 128 } } }
	this_1_9_val { ap_none {  { this_1_9_val in_data 0 128 } } }
	this_1_10_val { ap_none {  { this_1_10_val in_data 0 128 } } }
	plaintext { ap_none {  { plaintext in_data 0 128 } } }
}
