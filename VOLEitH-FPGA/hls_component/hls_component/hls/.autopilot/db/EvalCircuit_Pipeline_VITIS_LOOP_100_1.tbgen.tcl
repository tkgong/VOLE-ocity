set moduleName EvalCircuit_Pipeline_VITIS_LOOP_100_1
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
set C_modelName {EvalCircuit_Pipeline_VITIS_LOOP_100_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict extended_witness { MEM_WIDTH 1 MEM_SIZE 386045 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict u_0 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict u_1 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ witness int 8 regular {axi_s 0 volatile  { witness Data } }  }
	{ extended_witness int 1 regular {array 386045 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ u_0 int 1 regular {array 193023 { 1 3 } 1 1 }  }
	{ u_1 int 1 regular {array 193023 { 1 3 } 1 1 }  }
	{ d_strm int 8 regular {axi_s 1 volatile  { d_strm Data } }  }
	{ d_strm_cp int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "witness", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "extended_witness", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_0", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "u_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_strm", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_strm_cp", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ witness_TVALID sc_in sc_logic 1 invld 0 } 
	{ d_strm_TREADY sc_in sc_logic 1 outacc 4 } 
	{ d_strm_cp_din sc_out sc_lv 1 signal 5 } 
	{ d_strm_cp_full_n sc_in sc_logic 1 signal 5 } 
	{ d_strm_cp_write sc_out sc_logic 1 signal 5 } 
	{ d_strm_cp_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ d_strm_cp_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ witness_TDATA sc_in sc_lv 8 signal 0 } 
	{ witness_TREADY sc_out sc_logic 1 inacc 0 } 
	{ extended_witness_address0 sc_out sc_lv 19 signal 1 } 
	{ extended_witness_ce0 sc_out sc_logic 1 signal 1 } 
	{ extended_witness_we0 sc_out sc_logic 1 signal 1 } 
	{ extended_witness_d0 sc_out sc_lv 1 signal 1 } 
	{ u_0_address0 sc_out sc_lv 18 signal 2 } 
	{ u_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_0_q0 sc_in sc_lv 1 signal 2 } 
	{ u_1_address0 sc_out sc_lv 18 signal 3 } 
	{ u_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ u_1_q0 sc_in sc_lv 1 signal 3 } 
	{ d_strm_TDATA sc_out sc_lv 8 signal 4 } 
	{ d_strm_TVALID sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "witness_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "witness", "role": "TVALID" }} , 
 	{ "name": "d_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_strm", "role": "TREADY" }} , 
 	{ "name": "d_strm_cp_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "din" }} , 
 	{ "name": "d_strm_cp_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "full_n" }} , 
 	{ "name": "d_strm_cp_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "write" }} , 
 	{ "name": "d_strm_cp_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "num_data_valid" }} , 
 	{ "name": "d_strm_cp_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "fifo_cap" }} , 
 	{ "name": "witness_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "witness", "role": "TDATA" }} , 
 	{ "name": "witness_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "witness", "role": "TREADY" }} , 
 	{ "name": "extended_witness_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "extended_witness", "role": "address0" }} , 
 	{ "name": "extended_witness_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "extended_witness", "role": "ce0" }} , 
 	{ "name": "extended_witness_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "extended_witness", "role": "we0" }} , 
 	{ "name": "extended_witness_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "extended_witness", "role": "d0" }} , 
 	{ "name": "u_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_0", "role": "address0" }} , 
 	{ "name": "u_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "ce0" }} , 
 	{ "name": "u_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "q0" }} , 
 	{ "name": "u_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_1", "role": "address0" }} , 
 	{ "name": "u_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "ce0" }} , 
 	{ "name": "u_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "q0" }} , 
 	{ "name": "d_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "d_strm", "role": "TDATA" }} , 
 	{ "name": "d_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_strm", "role": "TVALID" }}  ]}

set ArgLastReadFirstWriteLatency {
	EvalCircuit_Pipeline_VITIS_LOOP_100_1 {
		witness {Type I LastRead 1 FirstWrite -1}
		extended_witness {Type O LastRead -1 FirstWrite 1}
		u_0 {Type I LastRead 0 FirstWrite -1}
		u_1 {Type I LastRead 0 FirstWrite -1}
		d_strm {Type O LastRead -1 FirstWrite 1}
		d_strm_cp {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1603", "Max" : "1603"}
	, {"Name" : "Interval", "Min" : "1603", "Max" : "1603"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	witness { axis {  { witness_TVALID in_vld 0 1 }  { witness_TDATA in_data 0 8 }  { witness_TREADY in_acc 1 1 } } }
	extended_witness { ap_memory {  { extended_witness_address0 mem_address 1 19 }  { extended_witness_ce0 mem_ce 1 1 }  { extended_witness_we0 mem_we 1 1 }  { extended_witness_d0 mem_din 1 1 } } }
	u_0 { ap_memory {  { u_0_address0 mem_address 1 18 }  { u_0_ce0 mem_ce 1 1 }  { u_0_q0 mem_dout 0 1 } } }
	u_1 { ap_memory {  { u_1_address0 mem_address 1 18 }  { u_1_ce0 mem_ce 1 1 }  { u_1_q0 mem_dout 0 1 } } }
	d_strm { axis {  { d_strm_TREADY out_acc 0 1 }  { d_strm_TDATA out_data 1 8 }  { d_strm_TVALID out_vld 1 1 } } }
	d_strm_cp { ap_fifo {  { d_strm_cp_din fifo_data_in 1 1 }  { d_strm_cp_full_n fifo_status 0 1 }  { d_strm_cp_write fifo_port_we 1 1 }  { d_strm_cp_num_data_valid fifo_status_num_data_valid 0 3 }  { d_strm_cp_fifo_cap fifo_update 0 3 } } }
}
