set moduleName compute_mask
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {compute_mask}
set C_modelType { int 256 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict u_0 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict u_1 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict V_0 { MEM_WIDTH 128 MEM_SIZE 3088368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict V_1 { MEM_WIDTH 128 MEM_SIZE 3088368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ u_0 int 1 regular {array 193023 { 1 3 } 1 1 }  }
	{ u_1 int 1 regular {array 193023 { 1 3 } 1 1 }  }
	{ V_0 int 128 regular {array 193023 { 1 3 } 1 1 }  }
	{ V_1 int 128 regular {array 193023 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "u_0", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "u_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "V_0", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "V_1", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ u_0_address0 sc_out sc_lv 18 signal 0 } 
	{ u_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ u_0_q0 sc_in sc_lv 1 signal 0 } 
	{ u_1_address0 sc_out sc_lv 18 signal 1 } 
	{ u_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ u_1_q0 sc_in sc_lv 1 signal 1 } 
	{ V_0_address0 sc_out sc_lv 18 signal 2 } 
	{ V_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ V_0_q0 sc_in sc_lv 128 signal 2 } 
	{ V_1_address0 sc_out sc_lv 18 signal 3 } 
	{ V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ V_1_q0 sc_in sc_lv 128 signal 3 } 
	{ ap_return_0 sc_out sc_lv 128 signal -1 } 
	{ ap_return_1 sc_out sc_lv 128 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "u_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_0", "role": "address0" }} , 
 	{ "name": "u_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "ce0" }} , 
 	{ "name": "u_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "q0" }} , 
 	{ "name": "u_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_1", "role": "address0" }} , 
 	{ "name": "u_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "ce0" }} , 
 	{ "name": "u_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "q0" }} , 
 	{ "name": "V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_0", "role": "address0" }} , 
 	{ "name": "V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_0", "role": "ce0" }} , 
 	{ "name": "V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_0", "role": "q0" }} , 
 	{ "name": "V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_1", "role": "address0" }} , 
 	{ "name": "V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1", "role": "ce0" }} , 
 	{ "name": "V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_1", "role": "q0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	compute_mask {
		u_0 {Type I LastRead 1 FirstWrite -1}
		u_1 {Type I LastRead 1 FirstWrite -1}
		V_0 {Type I LastRead 1 FirstWrite -1}
		V_1 {Type I LastRead 1 FirstWrite -1}}
	combineVOLEs {
		vals {Type I LastRead 1 FirstWrite -1}}
	gf128_multiply {
		a {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	gf128_multiply {
		a {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	combineVOLEs {
		vals {Type I LastRead 1 FirstWrite -1}}
	gf128_multiply {
		a {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	gf128_multiply {
		a {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3268", "Max" : "3268"}
	, {"Name" : "Interval", "Min" : "3268", "Max" : "3268"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	u_0 { ap_memory {  { u_0_address0 mem_address 1 18 }  { u_0_ce0 mem_ce 1 1 }  { u_0_q0 mem_dout 0 1 } } }
	u_1 { ap_memory {  { u_1_address0 mem_address 1 18 }  { u_1_ce0 mem_ce 1 1 }  { u_1_q0 mem_dout 0 1 } } }
	V_0 { ap_memory {  { V_0_address0 mem_address 1 18 }  { V_0_ce0 mem_ce 1 1 }  { V_0_q0 mem_dout 0 128 } } }
	V_1 { ap_memory {  { V_1_address0 mem_address 1 18 }  { V_1_ce0 mem_ce 1 1 }  { V_1_q0 mem_dout 0 128 } } }
}
