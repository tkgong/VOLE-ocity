set moduleName PRG
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
set C_modelName {PRG}
set C_modelType { int 256 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ iv_val int 128 regular  }
	{ seed int 128 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "iv_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "seed", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 7
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ iv_val sc_in sc_lv 128 signal 0 } 
	{ seed sc_in sc_lv 128 signal 1 } 
	{ ap_return_0 sc_out sc_lv 128 signal -1 } 
	{ ap_return_1 sc_out sc_lv 128 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "iv_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "iv_val", "role": "default" }} , 
 	{ "name": "seed", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "seed", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	PRG {
		iv_val {Type I LastRead 0 FirstWrite -1}
		seed {Type I LastRead 0 FirstWrite -1}
		cipher_0_ssbox40 {Type I LastRead -1 FirstWrite -1}
		cipher_0_ssbox {Type I LastRead -1 FirstWrite -1}}
	encrypt {
		in_r {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		cipher_0_ssbox40 {Type I LastRead -1 FirstWrite -1}
		cipher_0_ssbox {Type I LastRead -1 FirstWrite -1}}
	updateKey {
		cipherkey {Type I LastRead 0 FirstWrite -1}
		cipher_0_ssbox40 {Type I LastRead -1 FirstWrite -1}}
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
		a {Type I LastRead 0 FirstWrite -1}}
	encrypt {
		in_r {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		cipher_0_ssbox40 {Type I LastRead -1 FirstWrite -1}
		cipher_0_ssbox {Type I LastRead -1 FirstWrite -1}}
	updateKey {
		cipherkey {Type I LastRead 0 FirstWrite -1}
		cipher_0_ssbox40 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	iv_val { ap_none {  { iv_val in_data 0 128 } } }
	seed { ap_none {  { seed in_data 0 128 } } }
}
