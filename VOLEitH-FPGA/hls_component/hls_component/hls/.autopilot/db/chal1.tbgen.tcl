set moduleName chal1
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
set C_modelName {chal1}
set C_modelType { int 256 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ hcom_val int 256 regular  }
	{ iv_val int 128 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "hcom_val", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "iv_val", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hcom_val sc_in sc_lv 256 signal 0 } 
	{ iv_val sc_in sc_lv 128 signal 1 } 
	{ ap_return_0 sc_out sc_lv 2 signal -1 } 
	{ ap_return_1 sc_out sc_lv 2 signal -1 } 
	{ ap_return_2 sc_out sc_lv 2 signal -1 } 
	{ ap_return_3 sc_out sc_lv 2 signal -1 } 
	{ ap_return_4 sc_out sc_lv 2 signal -1 } 
	{ ap_return_5 sc_out sc_lv 2 signal -1 } 
	{ ap_return_6 sc_out sc_lv 2 signal -1 } 
	{ ap_return_7 sc_out sc_lv 2 signal -1 } 
	{ ap_return_8 sc_out sc_lv 2 signal -1 } 
	{ ap_return_9 sc_out sc_lv 2 signal -1 } 
	{ ap_return_10 sc_out sc_lv 2 signal -1 } 
	{ ap_return_11 sc_out sc_lv 2 signal -1 } 
	{ ap_return_12 sc_out sc_lv 2 signal -1 } 
	{ ap_return_13 sc_out sc_lv 2 signal -1 } 
	{ ap_return_14 sc_out sc_lv 2 signal -1 } 
	{ ap_return_15 sc_out sc_lv 2 signal -1 } 
	{ ap_return_16 sc_out sc_lv 2 signal -1 } 
	{ ap_return_17 sc_out sc_lv 2 signal -1 } 
	{ ap_return_18 sc_out sc_lv 2 signal -1 } 
	{ ap_return_19 sc_out sc_lv 2 signal -1 } 
	{ ap_return_20 sc_out sc_lv 2 signal -1 } 
	{ ap_return_21 sc_out sc_lv 2 signal -1 } 
	{ ap_return_22 sc_out sc_lv 2 signal -1 } 
	{ ap_return_23 sc_out sc_lv 2 signal -1 } 
	{ ap_return_24 sc_out sc_lv 2 signal -1 } 
	{ ap_return_25 sc_out sc_lv 2 signal -1 } 
	{ ap_return_26 sc_out sc_lv 2 signal -1 } 
	{ ap_return_27 sc_out sc_lv 2 signal -1 } 
	{ ap_return_28 sc_out sc_lv 2 signal -1 } 
	{ ap_return_29 sc_out sc_lv 2 signal -1 } 
	{ ap_return_30 sc_out sc_lv 2 signal -1 } 
	{ ap_return_31 sc_out sc_lv 2 signal -1 } 
	{ ap_return_32 sc_out sc_lv 2 signal -1 } 
	{ ap_return_33 sc_out sc_lv 2 signal -1 } 
	{ ap_return_34 sc_out sc_lv 2 signal -1 } 
	{ ap_return_35 sc_out sc_lv 2 signal -1 } 
	{ ap_return_36 sc_out sc_lv 2 signal -1 } 
	{ ap_return_37 sc_out sc_lv 2 signal -1 } 
	{ ap_return_38 sc_out sc_lv 2 signal -1 } 
	{ ap_return_39 sc_out sc_lv 2 signal -1 } 
	{ ap_return_40 sc_out sc_lv 2 signal -1 } 
	{ ap_return_41 sc_out sc_lv 2 signal -1 } 
	{ ap_return_42 sc_out sc_lv 2 signal -1 } 
	{ ap_return_43 sc_out sc_lv 2 signal -1 } 
	{ ap_return_44 sc_out sc_lv 2 signal -1 } 
	{ ap_return_45 sc_out sc_lv 2 signal -1 } 
	{ ap_return_46 sc_out sc_lv 2 signal -1 } 
	{ ap_return_47 sc_out sc_lv 2 signal -1 } 
	{ ap_return_48 sc_out sc_lv 2 signal -1 } 
	{ ap_return_49 sc_out sc_lv 2 signal -1 } 
	{ ap_return_50 sc_out sc_lv 2 signal -1 } 
	{ ap_return_51 sc_out sc_lv 2 signal -1 } 
	{ ap_return_52 sc_out sc_lv 2 signal -1 } 
	{ ap_return_53 sc_out sc_lv 2 signal -1 } 
	{ ap_return_54 sc_out sc_lv 2 signal -1 } 
	{ ap_return_55 sc_out sc_lv 2 signal -1 } 
	{ ap_return_56 sc_out sc_lv 2 signal -1 } 
	{ ap_return_57 sc_out sc_lv 2 signal -1 } 
	{ ap_return_58 sc_out sc_lv 2 signal -1 } 
	{ ap_return_59 sc_out sc_lv 2 signal -1 } 
	{ ap_return_60 sc_out sc_lv 2 signal -1 } 
	{ ap_return_61 sc_out sc_lv 2 signal -1 } 
	{ ap_return_62 sc_out sc_lv 2 signal -1 } 
	{ ap_return_63 sc_out sc_lv 2 signal -1 } 
	{ ap_return_64 sc_out sc_lv 128 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hcom_val", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "hcom_val", "role": "default" }} , 
 	{ "name": "iv_val", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "iv_val", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }} , 
 	{ "name": "ap_return_38", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_38", "role": "default" }} , 
 	{ "name": "ap_return_39", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_39", "role": "default" }} , 
 	{ "name": "ap_return_40", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_40", "role": "default" }} , 
 	{ "name": "ap_return_41", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_41", "role": "default" }} , 
 	{ "name": "ap_return_42", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_42", "role": "default" }} , 
 	{ "name": "ap_return_43", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_43", "role": "default" }} , 
 	{ "name": "ap_return_44", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_44", "role": "default" }} , 
 	{ "name": "ap_return_45", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_45", "role": "default" }} , 
 	{ "name": "ap_return_46", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_46", "role": "default" }} , 
 	{ "name": "ap_return_47", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_47", "role": "default" }} , 
 	{ "name": "ap_return_48", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_48", "role": "default" }} , 
 	{ "name": "ap_return_49", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_49", "role": "default" }} , 
 	{ "name": "ap_return_50", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_50", "role": "default" }} , 
 	{ "name": "ap_return_51", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_51", "role": "default" }} , 
 	{ "name": "ap_return_52", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_52", "role": "default" }} , 
 	{ "name": "ap_return_53", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_53", "role": "default" }} , 
 	{ "name": "ap_return_54", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_54", "role": "default" }} , 
 	{ "name": "ap_return_55", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_55", "role": "default" }} , 
 	{ "name": "ap_return_56", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_56", "role": "default" }} , 
 	{ "name": "ap_return_57", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_57", "role": "default" }} , 
 	{ "name": "ap_return_58", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_58", "role": "default" }} , 
 	{ "name": "ap_return_59", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_59", "role": "default" }} , 
 	{ "name": "ap_return_60", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_60", "role": "default" }} , 
 	{ "name": "ap_return_61", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_61", "role": "default" }} , 
 	{ "name": "ap_return_62", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_62", "role": "default" }} , 
 	{ "name": "ap_return_63", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return_63", "role": "default" }} , 
 	{ "name": "ap_return_64", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_64", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	chal1 {
		hcom_val {Type I LastRead 2 FirstWrite -1}
		iv_val {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hcom_val { ap_none {  { hcom_val in_data 0 256 } } }
	iv_val { ap_none {  { iv_val in_data 0 128 } } }
}
