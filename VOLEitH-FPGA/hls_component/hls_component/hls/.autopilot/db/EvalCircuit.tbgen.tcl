set moduleName EvalCircuit
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
set C_modelName {EvalCircuit}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict u_0 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict u_1 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict V_0 { MEM_WIDTH 128 MEM_SIZE 3088368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict V_1 { MEM_WIDTH 128 MEM_SIZE 3088368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ u_0 int 1 regular {array 193023 { 1 0 } 1 1 }  }
	{ u_1 int 1 regular {array 193023 { 1 0 } 1 1 }  }
	{ V_0 int 128 regular {array 193023 { 1 2 } 1 1 }  }
	{ V_1 int 128 regular {array 193023 { 1 2 } 1 1 }  }
	{ witness int 8 regular {axi_s 0 volatile  { witness Data } }  }
	{ circuit int 128 regular {axi_s 0 volatile  { circuit Data } }  }
	{ d_strm int 8 regular {axi_s 1 volatile  { d_strm Data } }  }
	{ d_strm_cp int 1 regular {fifo 1 volatile }  }
	{ a0_strm int 256 regular {fifo 1 volatile }  }
	{ a1_strm int 128 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "u_0", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "u_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "V_0", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "V_1", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "witness", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "circuit", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "d_strm", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_strm_cp", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a0_strm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a1_strm", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 60
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
	{ u_0_address1 sc_out sc_lv 18 signal 0 } 
	{ u_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ u_0_we1 sc_out sc_logic 1 signal 0 } 
	{ u_0_d1 sc_out sc_lv 1 signal 0 } 
	{ u_1_address0 sc_out sc_lv 18 signal 1 } 
	{ u_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ u_1_q0 sc_in sc_lv 1 signal 1 } 
	{ u_1_address1 sc_out sc_lv 18 signal 1 } 
	{ u_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ u_1_we1 sc_out sc_logic 1 signal 1 } 
	{ u_1_d1 sc_out sc_lv 1 signal 1 } 
	{ V_0_address0 sc_out sc_lv 18 signal 2 } 
	{ V_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ V_0_q0 sc_in sc_lv 128 signal 2 } 
	{ V_0_address1 sc_out sc_lv 18 signal 2 } 
	{ V_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ V_0_we1 sc_out sc_logic 1 signal 2 } 
	{ V_0_d1 sc_out sc_lv 128 signal 2 } 
	{ V_0_q1 sc_in sc_lv 128 signal 2 } 
	{ V_1_address0 sc_out sc_lv 18 signal 3 } 
	{ V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ V_1_q0 sc_in sc_lv 128 signal 3 } 
	{ V_1_address1 sc_out sc_lv 18 signal 3 } 
	{ V_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ V_1_we1 sc_out sc_logic 1 signal 3 } 
	{ V_1_d1 sc_out sc_lv 128 signal 3 } 
	{ V_1_q1 sc_in sc_lv 128 signal 3 } 
	{ witness_TDATA sc_in sc_lv 8 signal 4 } 
	{ witness_TVALID sc_in sc_logic 1 invld 4 } 
	{ witness_TREADY sc_out sc_logic 1 inacc 4 } 
	{ circuit_TDATA sc_in sc_lv 128 signal 5 } 
	{ circuit_TVALID sc_in sc_logic 1 invld 5 } 
	{ circuit_TREADY sc_out sc_logic 1 inacc 5 } 
	{ d_strm_TDATA sc_out sc_lv 8 signal 6 } 
	{ d_strm_TVALID sc_out sc_logic 1 outvld 6 } 
	{ d_strm_TREADY sc_in sc_logic 1 outacc 6 } 
	{ d_strm_cp_din sc_out sc_lv 1 signal 7 } 
	{ d_strm_cp_full_n sc_in sc_logic 1 signal 7 } 
	{ d_strm_cp_write sc_out sc_logic 1 signal 7 } 
	{ d_strm_cp_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ d_strm_cp_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ a0_strm_din sc_out sc_lv 256 signal 8 } 
	{ a0_strm_full_n sc_in sc_logic 1 signal 8 } 
	{ a0_strm_write sc_out sc_logic 1 signal 8 } 
	{ a0_strm_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ a0_strm_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ a1_strm_din sc_out sc_lv 128 signal 9 } 
	{ a1_strm_full_n sc_in sc_logic 1 signal 9 } 
	{ a1_strm_write sc_out sc_logic 1 signal 9 } 
	{ a1_strm_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ a1_strm_fifo_cap sc_in sc_lv 3 signal 9 } 
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
 	{ "name": "u_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_0", "role": "address1" }} , 
 	{ "name": "u_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "ce1" }} , 
 	{ "name": "u_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "we1" }} , 
 	{ "name": "u_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "d1" }} , 
 	{ "name": "u_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_1", "role": "address0" }} , 
 	{ "name": "u_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "ce0" }} , 
 	{ "name": "u_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "q0" }} , 
 	{ "name": "u_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_1", "role": "address1" }} , 
 	{ "name": "u_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "ce1" }} , 
 	{ "name": "u_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "we1" }} , 
 	{ "name": "u_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "d1" }} , 
 	{ "name": "V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_0", "role": "address0" }} , 
 	{ "name": "V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_0", "role": "ce0" }} , 
 	{ "name": "V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_0", "role": "q0" }} , 
 	{ "name": "V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_0", "role": "address1" }} , 
 	{ "name": "V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_0", "role": "ce1" }} , 
 	{ "name": "V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_0", "role": "we1" }} , 
 	{ "name": "V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_0", "role": "d1" }} , 
 	{ "name": "V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_0", "role": "q1" }} , 
 	{ "name": "V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_1", "role": "address0" }} , 
 	{ "name": "V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1", "role": "ce0" }} , 
 	{ "name": "V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_1", "role": "q0" }} , 
 	{ "name": "V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_1", "role": "address1" }} , 
 	{ "name": "V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1", "role": "ce1" }} , 
 	{ "name": "V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1", "role": "we1" }} , 
 	{ "name": "V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_1", "role": "d1" }} , 
 	{ "name": "V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_1", "role": "q1" }} , 
 	{ "name": "witness_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "witness", "role": "TDATA" }} , 
 	{ "name": "witness_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "witness", "role": "TVALID" }} , 
 	{ "name": "witness_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "witness", "role": "TREADY" }} , 
 	{ "name": "circuit_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "circuit", "role": "TDATA" }} , 
 	{ "name": "circuit_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "circuit", "role": "TVALID" }} , 
 	{ "name": "circuit_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "circuit", "role": "TREADY" }} , 
 	{ "name": "d_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "d_strm", "role": "TDATA" }} , 
 	{ "name": "d_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_strm", "role": "TVALID" }} , 
 	{ "name": "d_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_strm", "role": "TREADY" }} , 
 	{ "name": "d_strm_cp_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "din" }} , 
 	{ "name": "d_strm_cp_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "full_n" }} , 
 	{ "name": "d_strm_cp_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "write" }} , 
 	{ "name": "d_strm_cp_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "num_data_valid" }} , 
 	{ "name": "d_strm_cp_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "d_strm_cp", "role": "fifo_cap" }} , 
 	{ "name": "a0_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "a0_strm", "role": "din" }} , 
 	{ "name": "a0_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a0_strm", "role": "full_n" }} , 
 	{ "name": "a0_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a0_strm", "role": "write" }} , 
 	{ "name": "a0_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a0_strm", "role": "num_data_valid" }} , 
 	{ "name": "a0_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a0_strm", "role": "fifo_cap" }} , 
 	{ "name": "a1_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "a1_strm", "role": "din" }} , 
 	{ "name": "a1_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1_strm", "role": "full_n" }} , 
 	{ "name": "a1_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1_strm", "role": "write" }} , 
 	{ "name": "a1_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a1_strm", "role": "num_data_valid" }} , 
 	{ "name": "a1_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a1_strm", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	EvalCircuit {
		u_0 {Type IO LastRead 3 FirstWrite -1}
		u_1 {Type IO LastRead 3 FirstWrite -1}
		V_0 {Type IO LastRead 3 FirstWrite 3}
		V_1 {Type IO LastRead 3 FirstWrite 3}
		witness {Type I LastRead 1 FirstWrite -1}
		circuit {Type I LastRead 1 FirstWrite -1}
		d_strm {Type O LastRead -1 FirstWrite 1}
		d_strm_cp {Type O LastRead -1 FirstWrite 1}
		a0_strm {Type O LastRead -1 FirstWrite 10}
		a1_strm {Type O LastRead -1 FirstWrite 10}}
	EvalCircuit_Pipeline_VITIS_LOOP_100_1 {
		witness {Type I LastRead 1 FirstWrite -1}
		extended_witness {Type O LastRead -1 FirstWrite 1}
		u_0 {Type I LastRead 0 FirstWrite -1}
		u_1 {Type I LastRead 0 FirstWrite -1}
		d_strm {Type O LastRead -1 FirstWrite 1}
		d_strm_cp {Type O LastRead -1 FirstWrite 1}}
	EvalCircuit_Pipeline_VITIS_LOOP_107_2 {
		d_strm {Type O LastRead -1 FirstWrite 10}
		d_strm_cp {Type O LastRead -1 FirstWrite 10}
		V_0 {Type IO LastRead 3 FirstWrite 3}
		V_1 {Type IO LastRead 3 FirstWrite 3}
		a0_strm {Type O LastRead -1 FirstWrite 10}
		a1_strm {Type O LastRead -1 FirstWrite 10}
		circuit {Type I LastRead 1 FirstWrite -1}
		extended_witness {Type IO LastRead 4 FirstWrite 2}
		u_0 {Type IO LastRead 3 FirstWrite 4}
		u_1 {Type IO LastRead 3 FirstWrite 4}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "577873", "Max" : "577873"}
	, {"Name" : "Interval", "Min" : "577873", "Max" : "577873"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	u_0 { ap_memory {  { u_0_address0 mem_address 1 18 }  { u_0_ce0 mem_ce 1 1 }  { u_0_q0 mem_dout 0 1 }  { u_0_address1 MemPortADDR2 1 18 }  { u_0_ce1 MemPortCE2 1 1 }  { u_0_we1 MemPortWE2 1 1 }  { u_0_d1 MemPortDIN2 1 1 } } }
	u_1 { ap_memory {  { u_1_address0 mem_address 1 18 }  { u_1_ce0 mem_ce 1 1 }  { u_1_q0 mem_dout 0 1 }  { u_1_address1 MemPortADDR2 1 18 }  { u_1_ce1 MemPortCE2 1 1 }  { u_1_we1 MemPortWE2 1 1 }  { u_1_d1 MemPortDIN2 1 1 } } }
	V_0 { ap_memory {  { V_0_address0 mem_address 1 18 }  { V_0_ce0 mem_ce 1 1 }  { V_0_q0 mem_dout 0 128 }  { V_0_address1 MemPortADDR2 1 18 }  { V_0_ce1 MemPortCE2 1 1 }  { V_0_we1 MemPortWE2 1 1 }  { V_0_d1 MemPortDIN2 1 128 }  { V_0_q1 MemPortDOUT2 0 128 } } }
	V_1 { ap_memory {  { V_1_address0 mem_address 1 18 }  { V_1_ce0 mem_ce 1 1 }  { V_1_q0 mem_dout 0 128 }  { V_1_address1 MemPortADDR2 1 18 }  { V_1_ce1 MemPortCE2 1 1 }  { V_1_we1 MemPortWE2 1 1 }  { V_1_d1 MemPortDIN2 1 128 }  { V_1_q1 MemPortDOUT2 0 128 } } }
	witness { axis {  { witness_TDATA in_data 0 8 }  { witness_TVALID in_vld 0 1 }  { witness_TREADY in_acc 1 1 } } }
	circuit { axis {  { circuit_TDATA in_data 0 128 }  { circuit_TVALID in_vld 0 1 }  { circuit_TREADY in_acc 1 1 } } }
	d_strm { axis {  { d_strm_TDATA out_data 1 8 }  { d_strm_TVALID out_vld 1 1 }  { d_strm_TREADY out_acc 0 1 } } }
	d_strm_cp { ap_fifo {  { d_strm_cp_din fifo_data_in 1 1 }  { d_strm_cp_full_n fifo_status 0 1 }  { d_strm_cp_write fifo_port_we 1 1 }  { d_strm_cp_num_data_valid fifo_status_num_data_valid 0 3 }  { d_strm_cp_fifo_cap fifo_update 0 3 } } }
	a0_strm { ap_fifo {  { a0_strm_din fifo_data_in 1 256 }  { a0_strm_full_n fifo_status 0 1 }  { a0_strm_write fifo_port_we 1 1 }  { a0_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { a0_strm_fifo_cap fifo_update 0 3 } } }
	a1_strm { ap_fifo {  { a1_strm_din fifo_data_in 1 128 }  { a1_strm_full_n fifo_status 0 1 }  { a1_strm_write fifo_port_we 1 1 }  { a1_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { a1_strm_fifo_cap fifo_update 0 3 } } }
}
