set moduleName GenerateProof_Pipeline_TRANSFER_STREAM
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
set C_modelName {GenerateProof_Pipeline_TRANSFER_STREAM}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ path_strm int 128 regular {fifo 0 volatile }  }
	{ proof_strm int 128 regular {axi_s 1 volatile  { proof_strm Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "path_strm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "proof_strm", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ path_strm_dout sc_in sc_lv 128 signal 0 } 
	{ path_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ path_strm_read sc_out sc_logic 1 signal 0 } 
	{ proof_strm_TREADY sc_in sc_logic 1 outacc 1 } 
	{ proof_strm_TDATA sc_out sc_lv 128 signal 1 } 
	{ proof_strm_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "path_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "path_strm", "role": "dout" }} , 
 	{ "name": "path_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "path_strm", "role": "empty_n" }} , 
 	{ "name": "path_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "path_strm", "role": "read" }} , 
 	{ "name": "proof_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "proof_strm", "role": "TREADY" }} , 
 	{ "name": "proof_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "proof_strm", "role": "TDATA" }} , 
 	{ "name": "proof_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "proof_strm", "role": "TVALID" }}  ]}

set ArgLastReadFirstWriteLatency {
	GenerateProof_Pipeline_TRANSFER_STREAM {
		path_strm {Type I LastRead 1 FirstWrite -1}
		proof_strm {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	path_strm { ap_fifo {  { path_strm_dout fifo_data_in 0 128 }  { path_strm_empty_n fifo_status 0 1 }  { path_strm_read fifo_port_we 1 1 } } }
	proof_strm { axis {  { proof_strm_TREADY out_acc 0 1 }  { proof_strm_TDATA out_data 1 128 }  { proof_strm_TVALID out_vld 1 1 } } }
}
