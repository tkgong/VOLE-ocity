set moduleName aggregate_coef
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
set C_modelName {aggregate_coef}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_read int 128 regular  }
	{ p_read1 int 128 regular  }
	{ a_strm int 256 regular {fifo 0 volatile }  }
	{ ch2_strm int 128 regular {fifo 0 volatile }  }
	{ a0_tilde int 128 regular {pointer 1}  }
	{ a1_tilde int 128 regular {pointer 1}  }
	{ proof_strm int 128 regular {axi_s 1 volatile  { proof_strm Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "a_strm", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "ch2_strm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "a0_tilde", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a1_tilde", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "proof_strm", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 128 signal 0 } 
	{ p_read1 sc_in sc_lv 128 signal 1 } 
	{ a_strm_dout sc_in sc_lv 256 signal 2 } 
	{ a_strm_empty_n sc_in sc_logic 1 signal 2 } 
	{ a_strm_read sc_out sc_logic 1 signal 2 } 
	{ a_strm_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ a_strm_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ ch2_strm_dout sc_in sc_lv 128 signal 3 } 
	{ ch2_strm_empty_n sc_in sc_logic 1 signal 3 } 
	{ ch2_strm_read sc_out sc_logic 1 signal 3 } 
	{ ch2_strm_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ ch2_strm_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ a0_tilde sc_out sc_lv 128 signal 4 } 
	{ a0_tilde_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ a1_tilde sc_out sc_lv 128 signal 5 } 
	{ a1_tilde_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ proof_strm_TDATA sc_out sc_lv 128 signal 6 } 
	{ proof_strm_TVALID sc_out sc_logic 1 outvld 6 } 
	{ proof_strm_TREADY sc_in sc_logic 1 outacc 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "a_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "a_strm", "role": "dout" }} , 
 	{ "name": "a_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_strm", "role": "empty_n" }} , 
 	{ "name": "a_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_strm", "role": "read" }} , 
 	{ "name": "a_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_strm", "role": "num_data_valid" }} , 
 	{ "name": "a_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_strm", "role": "fifo_cap" }} , 
 	{ "name": "ch2_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ch2_strm", "role": "dout" }} , 
 	{ "name": "ch2_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_strm", "role": "empty_n" }} , 
 	{ "name": "ch2_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2_strm", "role": "read" }} , 
 	{ "name": "ch2_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ch2_strm", "role": "num_data_valid" }} , 
 	{ "name": "ch2_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ch2_strm", "role": "fifo_cap" }} , 
 	{ "name": "a0_tilde", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "a0_tilde", "role": "default" }} , 
 	{ "name": "a0_tilde_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a0_tilde", "role": "ap_vld" }} , 
 	{ "name": "a1_tilde", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "a1_tilde", "role": "default" }} , 
 	{ "name": "a1_tilde_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a1_tilde", "role": "ap_vld" }} , 
 	{ "name": "proof_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "proof_strm", "role": "TDATA" }} , 
 	{ "name": "proof_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "proof_strm", "role": "TVALID" }} , 
 	{ "name": "proof_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "proof_strm", "role": "TREADY" }}  ]}

set ArgLastReadFirstWriteLatency {
	aggregate_coef {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		a_strm {Type I LastRead 2 FirstWrite -1}
		ch2_strm {Type I LastRead 2 FirstWrite -1}
		a0_tilde {Type O LastRead -1 FirstWrite 2}
		a1_tilde {Type O LastRead -1 FirstWrite 2}
		proof_strm {Type O LastRead -1 FirstWrite 2}}
	gf128_multiply {
		a {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "192009", "Max" : "192009"}
	, {"Name" : "Interval", "Min" : "192009", "Max" : "192009"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 128 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 128 } } }
	a_strm { ap_fifo {  { a_strm_dout fifo_data_in 0 256 }  { a_strm_empty_n fifo_status 0 1 }  { a_strm_read fifo_port_we 1 1 }  { a_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { a_strm_fifo_cap fifo_update 0 3 } } }
	ch2_strm { ap_fifo {  { ch2_strm_dout fifo_data_in 0 128 }  { ch2_strm_empty_n fifo_status 0 1 }  { ch2_strm_read fifo_port_we 1 1 }  { ch2_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { ch2_strm_fifo_cap fifo_update 0 3 } } }
	a0_tilde { ap_vld {  { a0_tilde out_data 1 128 }  { a0_tilde_ap_vld out_vld 1 1 } } }
	a1_tilde { ap_vld {  { a1_tilde out_data 1 128 }  { a1_tilde_ap_vld out_vld 1 1 } } }
	proof_strm { axis {  { proof_strm_TDATA out_data 1 128 }  { proof_strm_TVALID out_vld 1 1 }  { proof_strm_TREADY out_acc 0 1 } } }
}
