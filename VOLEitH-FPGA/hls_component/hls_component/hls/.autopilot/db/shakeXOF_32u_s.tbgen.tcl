set moduleName shakeXOF_32u_s
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
set C_modelName {shakeXOF<32u>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ msgStrm_i int 64 regular {fifo 0 volatile }  }
	{ msgLenStrm_i int 128 regular {fifo 0 volatile }  }
	{ endMsgLenStrm_i int 1 regular {fifo 0 volatile }  }
	{ digestStrm_i int 256 regular {fifo 1 volatile }  }
	{ endDigestStrm_i int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "msgStrm_i", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "msgLenStrm_i", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "endMsgLenStrm_i", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "digestStrm_i", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endDigestStrm_i", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ msgStrm_i_dout sc_in sc_lv 64 signal 0 } 
	{ msgStrm_i_empty_n sc_in sc_logic 1 signal 0 } 
	{ msgStrm_i_read sc_out sc_logic 1 signal 0 } 
	{ msgLenStrm_i_dout sc_in sc_lv 128 signal 1 } 
	{ msgLenStrm_i_empty_n sc_in sc_logic 1 signal 1 } 
	{ msgLenStrm_i_read sc_out sc_logic 1 signal 1 } 
	{ endMsgLenStrm_i_dout sc_in sc_lv 1 signal 2 } 
	{ endMsgLenStrm_i_empty_n sc_in sc_logic 1 signal 2 } 
	{ endMsgLenStrm_i_read sc_out sc_logic 1 signal 2 } 
	{ digestStrm_i_din sc_out sc_lv 256 signal 3 } 
	{ digestStrm_i_full_n sc_in sc_logic 1 signal 3 } 
	{ digestStrm_i_write sc_out sc_logic 1 signal 3 } 
	{ endDigestStrm_i_din sc_out sc_lv 1 signal 4 } 
	{ endDigestStrm_i_full_n sc_in sc_logic 1 signal 4 } 
	{ endDigestStrm_i_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "msgStrm_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msgStrm_i", "role": "dout" }} , 
 	{ "name": "msgStrm_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm_i", "role": "empty_n" }} , 
 	{ "name": "msgStrm_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm_i", "role": "read" }} , 
 	{ "name": "msgLenStrm_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "msgLenStrm_i", "role": "dout" }} , 
 	{ "name": "msgLenStrm_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgLenStrm_i", "role": "empty_n" }} , 
 	{ "name": "msgLenStrm_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgLenStrm_i", "role": "read" }} , 
 	{ "name": "endMsgLenStrm_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm_i", "role": "dout" }} , 
 	{ "name": "endMsgLenStrm_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm_i", "role": "empty_n" }} , 
 	{ "name": "endMsgLenStrm_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm_i", "role": "read" }} , 
 	{ "name": "digestStrm_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "digestStrm_i", "role": "din" }} , 
 	{ "name": "digestStrm_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digestStrm_i", "role": "full_n" }} , 
 	{ "name": "digestStrm_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digestStrm_i", "role": "write" }} , 
 	{ "name": "endDigestStrm_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endDigestStrm_i", "role": "din" }} , 
 	{ "name": "endDigestStrm_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endDigestStrm_i", "role": "full_n" }} , 
 	{ "name": "endDigestStrm_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endDigestStrm_i", "role": "write" }}  ]}

set ArgLastReadFirstWriteLatency {
	shakeXOF_32u_s {
		msgStrm_i {Type I LastRead 149 FirstWrite -1}
		msgLenStrm_i {Type I LastRead 1 FirstWrite -1}
		endMsgLenStrm_i {Type I LastRead 133 FirstWrite -1}
		digestStrm_i {Type O LastRead -1 FirstWrite 133}
		endDigestStrm_i {Type O LastRead -1 FirstWrite 133}}
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
	{"Name" : "Latency", "Min" : "1", "Max" : "158"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "158"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	msgStrm_i { ap_fifo {  { msgStrm_i_dout fifo_data_in 0 64 }  { msgStrm_i_empty_n fifo_status 0 1 }  { msgStrm_i_read fifo_port_we 1 1 } } }
	msgLenStrm_i { ap_fifo {  { msgLenStrm_i_dout fifo_data_in 0 128 }  { msgLenStrm_i_empty_n fifo_status 0 1 }  { msgLenStrm_i_read fifo_port_we 1 1 } } }
	endMsgLenStrm_i { ap_fifo {  { endMsgLenStrm_i_dout fifo_data_in 0 1 }  { endMsgLenStrm_i_empty_n fifo_status 0 1 }  { endMsgLenStrm_i_read fifo_port_we 1 1 } } }
	digestStrm_i { ap_fifo {  { digestStrm_i_din fifo_data_in 1 256 }  { digestStrm_i_full_n fifo_status 0 1 }  { digestStrm_i_write fifo_port_we 1 1 } } }
	endDigestStrm_i { ap_fifo {  { endDigestStrm_i_din fifo_data_in 1 1 }  { endDigestStrm_i_full_n fifo_status 0 1 }  { endDigestStrm_i_write fifo_port_we 1 1 } } }
}
