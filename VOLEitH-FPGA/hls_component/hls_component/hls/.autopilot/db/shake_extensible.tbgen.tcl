set moduleName shake_extensible
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
set C_modelName {shake_extensible}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ msgStrm int 64 regular {fifo 0 volatile }  }
	{ msgLenStrm int 128 regular {fifo 0 volatile }  }
	{ endMsgLenStrm int 1 regular {fifo 0 volatile }  }
	{ outLenStrm int 128 regular {fifo 0 volatile }  }
	{ endOutLenStrm int 1 regular {fifo 0 volatile }  }
	{ ch2_strm int 128 regular {fifo 1 volatile }  }
	{ endDigestStrm_internal int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "msgStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "msgLenStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "endMsgLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "outLenStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "endOutLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ch2_strm", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endDigestStrm_internal", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ msgStrm_dout sc_in sc_lv 64 signal 0 } 
	{ msgStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ msgStrm_read sc_out sc_logic 1 signal 0 } 
	{ msgLenStrm_dout sc_in sc_lv 128 signal 1 } 
	{ msgLenStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ msgLenStrm_read sc_out sc_logic 1 signal 1 } 
	{ endMsgLenStrm_dout sc_in sc_lv 1 signal 2 } 
	{ endMsgLenStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ endMsgLenStrm_read sc_out sc_logic 1 signal 2 } 
	{ outLenStrm_dout sc_in sc_lv 128 signal 3 } 
	{ outLenStrm_empty_n sc_in sc_logic 1 signal 3 } 
	{ outLenStrm_read sc_out sc_logic 1 signal 3 } 
	{ endOutLenStrm_dout sc_in sc_lv 1 signal 4 } 
	{ endOutLenStrm_empty_n sc_in sc_logic 1 signal 4 } 
	{ endOutLenStrm_read sc_out sc_logic 1 signal 4 } 
	{ ch2_strm_din sc_out sc_lv 128 signal 5 } 
	{ ch2_strm_full_n sc_in sc_logic 1 signal 5 } 
	{ ch2_strm_write sc_out sc_logic 1 signal 5 } 
	{ ch2_strm_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ ch2_strm_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ endDigestStrm_internal_din sc_out sc_lv 1 signal 6 } 
	{ endDigestStrm_internal_full_n sc_in sc_logic 1 signal 6 } 
	{ endDigestStrm_internal_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "msgLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "msgLenStrm", "role": "dout" }} , 
 	{ "name": "msgLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgLenStrm", "role": "empty_n" }} , 
 	{ "name": "msgLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgLenStrm", "role": "read" }} , 
 	{ "name": "endMsgLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm", "role": "dout" }} , 
 	{ "name": "endMsgLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm", "role": "empty_n" }} , 
 	{ "name": "endMsgLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm", "role": "read" }} , 
 	{ "name": "outLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "outLenStrm", "role": "dout" }} , 
 	{ "name": "outLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outLenStrm", "role": "empty_n" }} , 
 	{ "name": "outLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outLenStrm", "role": "read" }} , 
 	{ "name": "endOutLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endOutLenStrm", "role": "dout" }} , 
 	{ "name": "endOutLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endOutLenStrm", "role": "empty_n" }} , 
 	{ "name": "endOutLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endOutLenStrm", "role": "read" }} , 
 	{ "name": "ch2_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ch2_strm", "role": "din" }} , 
 	{ "name": "ch2_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_strm", "role": "full_n" }} , 
 	{ "name": "ch2_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_strm", "role": "write" }} , 
 	{ "name": "ch2_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ch2_strm", "role": "num_data_valid" }} , 
 	{ "name": "ch2_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ch2_strm", "role": "fifo_cap" }} , 
 	{ "name": "endDigestStrm_internal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endDigestStrm_internal", "role": "din" }} , 
 	{ "name": "endDigestStrm_internal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endDigestStrm_internal", "role": "full_n" }} , 
 	{ "name": "endDigestStrm_internal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endDigestStrm_internal", "role": "write" }}  ]}

set ArgLastReadFirstWriteLatency {
	shake_extensible {
		msgStrm {Type I LastRead 1 FirstWrite -1}
		msgLenStrm {Type I LastRead 1 FirstWrite -1}
		endMsgLenStrm {Type I LastRead 134 FirstWrite -1}
		outLenStrm {Type I LastRead 1 FirstWrite -1}
		endOutLenStrm {Type I LastRead 134 FirstWrite -1}
		ch2_strm {Type O LastRead -1 FirstWrite 151}
		endDigestStrm_internal {Type O LastRead -1 FirstWrite 1}}
	shake_extensible_Pipeline_VITIS_LOOP_784_4 {
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
		trunc_ln2 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		stateArray_16_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_15_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_14_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_13_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_12_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_11_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_10_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_9_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_8_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_7_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_6_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_5_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_4_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_3_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_2_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_1_3_out {Type O LastRead -1 FirstWrite 0}
		stateArray_3215_out {Type O LastRead -1 FirstWrite 0}}
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
		stateArray_1213_out {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "169", "Max" : "452"}
	, {"Name" : "Interval", "Min" : "169", "Max" : "452"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	msgStrm { ap_fifo {  { msgStrm_dout fifo_data_in 0 64 }  { msgStrm_empty_n fifo_status 0 1 }  { msgStrm_read fifo_port_we 1 1 } } }
	msgLenStrm { ap_fifo {  { msgLenStrm_dout fifo_data_in 0 128 }  { msgLenStrm_empty_n fifo_status 0 1 }  { msgLenStrm_read fifo_port_we 1 1 } } }
	endMsgLenStrm { ap_fifo {  { endMsgLenStrm_dout fifo_data_in 0 1 }  { endMsgLenStrm_empty_n fifo_status 0 1 }  { endMsgLenStrm_read fifo_port_we 1 1 } } }
	outLenStrm { ap_fifo {  { outLenStrm_dout fifo_data_in 0 128 }  { outLenStrm_empty_n fifo_status 0 1 }  { outLenStrm_read fifo_port_we 1 1 } } }
	endOutLenStrm { ap_fifo {  { endOutLenStrm_dout fifo_data_in 0 1 }  { endOutLenStrm_empty_n fifo_status 0 1 }  { endOutLenStrm_read fifo_port_we 1 1 } } }
	ch2_strm { ap_fifo {  { ch2_strm_din fifo_data_in 1 128 }  { ch2_strm_full_n fifo_status 0 1 }  { ch2_strm_write fifo_port_we 1 1 }  { ch2_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { ch2_strm_fifo_cap fifo_update 0 3 } } }
	endDigestStrm_internal { ap_fifo {  { endDigestStrm_internal_din fifo_data_in 1 1 }  { endDigestStrm_internal_full_n fifo_status 0 1 }  { endDigestStrm_internal_write fifo_port_we 1 1 } } }
}
