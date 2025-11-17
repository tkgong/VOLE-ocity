set moduleName mem_transfer_Pipeline_UNPACK_U
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
set C_modelName {mem_transfer_Pipeline_UNPACK_U}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict u_1 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict u_0 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ s int 8 regular  }
	{ u_1 int 1 regular {array 193023 { 3 0 } 0 1 }  }
	{ u_0 int 1 regular {array 193023 { 3 0 } 0 1 }  }
	{ tmp_165 int 16 regular  }
	{ u_t int 256 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "s", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "u_1", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_0", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_165", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "u_t", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s sc_in sc_lv 8 signal 0 } 
	{ u_1_address1 sc_out sc_lv 18 signal 1 } 
	{ u_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ u_1_we1 sc_out sc_logic 1 signal 1 } 
	{ u_1_d1 sc_out sc_lv 1 signal 1 } 
	{ u_0_address1 sc_out sc_lv 18 signal 2 } 
	{ u_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ u_0_we1 sc_out sc_logic 1 signal 2 } 
	{ u_0_d1 sc_out sc_lv 1 signal 2 } 
	{ tmp_165 sc_in sc_lv 16 signal 3 } 
	{ u_t sc_in sc_lv 256 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "u_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_1", "role": "address1" }} , 
 	{ "name": "u_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "ce1" }} , 
 	{ "name": "u_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "we1" }} , 
 	{ "name": "u_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "d1" }} , 
 	{ "name": "u_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_0", "role": "address1" }} , 
 	{ "name": "u_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "ce1" }} , 
 	{ "name": "u_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "we1" }} , 
 	{ "name": "u_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "d1" }} , 
 	{ "name": "tmp_165", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tmp_165", "role": "default" }} , 
 	{ "name": "u_t", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "u_t", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	mem_transfer_Pipeline_UNPACK_U {
		s {Type I LastRead 0 FirstWrite -1}
		u_1 {Type O LastRead -1 FirstWrite 0}
		u_0 {Type O LastRead -1 FirstWrite 0}
		tmp_165 {Type I LastRead 0 FirstWrite -1}
		u_t {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "130", "Max" : "130"}
	, {"Name" : "Interval", "Min" : "130", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s { ap_none {  { s in_data 0 8 } } }
	u_1 { ap_memory {  { u_1_address1 MemPortADDR2 1 18 }  { u_1_ce1 MemPortCE2 1 1 }  { u_1_we1 MemPortWE2 1 1 }  { u_1_d1 MemPortDIN2 1 1 } } }
	u_0 { ap_memory {  { u_0_address1 MemPortADDR2 1 18 }  { u_0_ce1 MemPortCE2 1 1 }  { u_0_we1 MemPortWE2 1 1 }  { u_0_d1 MemPortDIN2 1 1 } } }
	tmp_165 { ap_none {  { tmp_165 in_data 0 16 } } }
	u_t { ap_none {  { u_t in_data 0 256 } } }
}
