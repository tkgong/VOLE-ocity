set moduleName ToField
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
set C_modelName {ToField}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ a0_strm int 256 regular {fifo 0 volatile }  }
	{ a1_strm int 128 regular {fifo 0 volatile }  }
	{ a_strm int 256 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a0_strm", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "a1_strm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "a_strm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a1_strm_dout sc_in sc_lv 128 signal 1 } 
	{ a1_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ a1_strm_read sc_out sc_logic 1 signal 1 } 
	{ a1_strm_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ a1_strm_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ a0_strm_dout sc_in sc_lv 256 signal 0 } 
	{ a0_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ a0_strm_read sc_out sc_logic 1 signal 0 } 
	{ a0_strm_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ a0_strm_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ a_strm_din sc_out sc_lv 256 signal 2 } 
	{ a_strm_full_n sc_in sc_logic 1 signal 2 } 
	{ a_strm_write sc_out sc_logic 1 signal 2 } 
	{ a_strm_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ a_strm_fifo_cap sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a1_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "a1_strm", "role": "dout" }} , 
 	{ "name": "a1_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1_strm", "role": "empty_n" }} , 
 	{ "name": "a1_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1_strm", "role": "read" }} , 
 	{ "name": "a1_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a1_strm", "role": "num_data_valid" }} , 
 	{ "name": "a1_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a1_strm", "role": "fifo_cap" }} , 
 	{ "name": "a0_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "a0_strm", "role": "dout" }} , 
 	{ "name": "a0_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a0_strm", "role": "empty_n" }} , 
 	{ "name": "a0_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a0_strm", "role": "read" }} , 
 	{ "name": "a0_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a0_strm", "role": "num_data_valid" }} , 
 	{ "name": "a0_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a0_strm", "role": "fifo_cap" }} , 
 	{ "name": "a_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "a_strm", "role": "din" }} , 
 	{ "name": "a_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_strm", "role": "full_n" }} , 
 	{ "name": "a_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_strm", "role": "write" }} , 
 	{ "name": "a_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_strm", "role": "num_data_valid" }} , 
 	{ "name": "a_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_strm", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	ToField {
		a0_strm {Type I LastRead 1 FirstWrite -1}
		a1_strm {Type I LastRead 1 FirstWrite -1}
		a_strm {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "38402", "Max" : "38402"}
	, {"Name" : "Interval", "Min" : "38402", "Max" : "38402"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a0_strm { ap_fifo {  { a0_strm_dout fifo_data_in 0 256 }  { a0_strm_empty_n fifo_status 0 1 }  { a0_strm_read fifo_port_we 1 1 }  { a0_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { a0_strm_fifo_cap fifo_update 0 3 } } }
	a1_strm { ap_fifo {  { a1_strm_dout fifo_data_in 0 128 }  { a1_strm_empty_n fifo_status 0 1 }  { a1_strm_read fifo_port_we 1 1 }  { a1_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { a1_strm_fifo_cap fifo_update 0 3 } } }
	a_strm { ap_fifo {  { a_strm_din fifo_data_in 1 256 }  { a_strm_full_n fifo_status 0 1 }  { a_strm_write fifo_port_we 1 1 }  { a_strm_num_data_valid fifo_status_num_data_valid 0 32 }  { a_strm_fifo_cap fifo_update 0 32 } } }
}
