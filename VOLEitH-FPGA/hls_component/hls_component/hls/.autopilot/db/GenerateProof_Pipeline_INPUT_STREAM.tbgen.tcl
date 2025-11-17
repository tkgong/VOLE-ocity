set moduleName GenerateProof_Pipeline_INPUT_STREAM
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
set C_modelName {GenerateProof_Pipeline_INPUT_STREAM}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ root_strm int 8 regular {axi_s 0 volatile  { root_strm Data } }  }
	{ iv_strm int 8 regular {axi_s 0 volatile  { iv_strm Data } }  }
	{ p_out int 128 regular {pointer 1}  }
	{ p_out1 int 128 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "root_strm", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "iv_strm", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ root_strm_TVALID sc_in sc_logic 1 invld 0 } 
	{ iv_strm_TVALID sc_in sc_logic 1 invld 1 } 
	{ root_strm_TDATA sc_in sc_lv 8 signal 0 } 
	{ root_strm_TREADY sc_out sc_logic 1 inacc 0 } 
	{ iv_strm_TDATA sc_in sc_lv 8 signal 1 } 
	{ iv_strm_TREADY sc_out sc_logic 1 inacc 1 } 
	{ p_out sc_out sc_lv 128 signal 2 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ p_out1 sc_out sc_lv 128 signal 3 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "root_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "root_strm", "role": "TVALID" }} , 
 	{ "name": "iv_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "iv_strm", "role": "TVALID" }} , 
 	{ "name": "root_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "root_strm", "role": "TDATA" }} , 
 	{ "name": "root_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "root_strm", "role": "TREADY" }} , 
 	{ "name": "iv_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "iv_strm", "role": "TDATA" }} , 
 	{ "name": "iv_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "iv_strm", "role": "TREADY" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	GenerateProof_Pipeline_INPUT_STREAM {
		root_strm {Type I LastRead 1 FirstWrite -1}
		iv_strm {Type I LastRead 1 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "130", "Max" : "130"}
	, {"Name" : "Interval", "Min" : "130", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	root_strm { axis {  { root_strm_TVALID in_vld 0 1 }  { root_strm_TDATA in_data 0 8 }  { root_strm_TREADY in_acc 1 1 } } }
	iv_strm { axis {  { iv_strm_TVALID in_vld 0 1 }  { iv_strm_TDATA in_data 0 8 }  { iv_strm_TREADY in_acc 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 128 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 128 }  { p_out1_ap_vld out_vld 1 1 } } }
}
