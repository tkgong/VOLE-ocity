set moduleName ProverCircuitEval
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type dataflow
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
set C_modelName {ProverCircuitEval}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict u_0 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict u_1 { MEM_WIDTH 1 MEM_SIZE 193023 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict V_0 { MEM_WIDTH 128 MEM_SIZE 3088368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict V_1 { MEM_WIDTH 128 MEM_SIZE 3088368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ch1_val1 int 128 regular {ap_stable 0} }
	{ u_0 int 1 regular {array 193023 { 1 0 } 1 1 }  }
	{ u_1 int 1 regular {array 193023 { 1 0 } 1 1 }  }
	{ V_0 int 128 regular {array 193023 { 1 2 } 1 1 }  }
	{ V_1 int 128 regular {array 193023 { 1 2 } 1 1 }  }
	{ witness int 8 regular {axi_s 0 volatile  { witness Data } }  }
	{ circuit int 128 regular {axi_s 0 volatile  { circuit Data } }  }
	{ d_strm int 8 regular {axi_s 1 volatile  { d_strm Data } }  }
	{ a0_tilde int 128 regular {pointer 1}  }
	{ a1_tilde int 128 regular {pointer 1}  }
	{ proof_strm int 128 regular {axi_s 1 volatile  { proof_strm Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ch1_val1", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "u_0", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "u_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "V_0", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "V_1", "interface" : "memory", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "witness", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "circuit", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "d_strm", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a0_tilde", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a1_tilde", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "proof_strm", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ch1_val1 sc_in sc_lv 128 signal 0 } 
	{ u_0_address0 sc_out sc_lv 18 signal 1 } 
	{ u_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ u_0_d0 sc_out sc_lv 1 signal 1 } 
	{ u_0_q0 sc_in sc_lv 1 signal 1 } 
	{ u_0_we0 sc_out sc_logic 1 signal 1 } 
	{ u_0_address1 sc_out sc_lv 18 signal 1 } 
	{ u_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ u_0_d1 sc_out sc_lv 1 signal 1 } 
	{ u_0_q1 sc_in sc_lv 1 signal 1 } 
	{ u_0_we1 sc_out sc_logic 1 signal 1 } 
	{ u_1_address0 sc_out sc_lv 18 signal 2 } 
	{ u_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_1_d0 sc_out sc_lv 1 signal 2 } 
	{ u_1_q0 sc_in sc_lv 1 signal 2 } 
	{ u_1_we0 sc_out sc_logic 1 signal 2 } 
	{ u_1_address1 sc_out sc_lv 18 signal 2 } 
	{ u_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ u_1_d1 sc_out sc_lv 1 signal 2 } 
	{ u_1_q1 sc_in sc_lv 1 signal 2 } 
	{ u_1_we1 sc_out sc_logic 1 signal 2 } 
	{ V_0_address0 sc_out sc_lv 18 signal 3 } 
	{ V_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ V_0_d0 sc_out sc_lv 128 signal 3 } 
	{ V_0_q0 sc_in sc_lv 128 signal 3 } 
	{ V_0_we0 sc_out sc_logic 1 signal 3 } 
	{ V_0_address1 sc_out sc_lv 18 signal 3 } 
	{ V_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ V_0_d1 sc_out sc_lv 128 signal 3 } 
	{ V_0_q1 sc_in sc_lv 128 signal 3 } 
	{ V_0_we1 sc_out sc_logic 1 signal 3 } 
	{ V_1_address0 sc_out sc_lv 18 signal 4 } 
	{ V_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ V_1_d0 sc_out sc_lv 128 signal 4 } 
	{ V_1_q0 sc_in sc_lv 128 signal 4 } 
	{ V_1_we0 sc_out sc_logic 1 signal 4 } 
	{ V_1_address1 sc_out sc_lv 18 signal 4 } 
	{ V_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ V_1_d1 sc_out sc_lv 128 signal 4 } 
	{ V_1_q1 sc_in sc_lv 128 signal 4 } 
	{ V_1_we1 sc_out sc_logic 1 signal 4 } 
	{ witness_TDATA sc_in sc_lv 8 signal 5 } 
	{ circuit_TDATA sc_in sc_lv 128 signal 6 } 
	{ d_strm_TDATA sc_out sc_lv 8 signal 7 } 
	{ a0_tilde sc_out sc_lv 128 signal 8 } 
	{ a1_tilde sc_out sc_lv 128 signal 9 } 
	{ proof_strm_TDATA sc_out sc_lv 128 signal 10 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ witness_TVALID sc_in sc_logic 1 invld 5 } 
	{ witness_TREADY sc_out sc_logic 1 inacc 5 } 
	{ circuit_TVALID sc_in sc_logic 1 invld 6 } 
	{ circuit_TREADY sc_out sc_logic 1 inacc 6 } 
	{ d_strm_TVALID sc_out sc_logic 1 outvld 7 } 
	{ d_strm_TREADY sc_in sc_logic 1 outacc 7 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ch1_val1_ap_vld sc_in sc_logic 1 invld 0 } 
	{ a0_tilde_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ a1_tilde_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ proof_strm_TVALID sc_out sc_logic 1 outvld 10 } 
	{ proof_strm_TREADY sc_in sc_logic 1 outacc 10 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ch1_val1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ch1_val1", "role": "default" }} , 
 	{ "name": "u_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_0", "role": "address0" }} , 
 	{ "name": "u_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "ce0" }} , 
 	{ "name": "u_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "d0" }} , 
 	{ "name": "u_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "q0" }} , 
 	{ "name": "u_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "we0" }} , 
 	{ "name": "u_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_0", "role": "address1" }} , 
 	{ "name": "u_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "ce1" }} , 
 	{ "name": "u_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "d1" }} , 
 	{ "name": "u_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "q1" }} , 
 	{ "name": "u_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_0", "role": "we1" }} , 
 	{ "name": "u_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_1", "role": "address0" }} , 
 	{ "name": "u_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "ce0" }} , 
 	{ "name": "u_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "d0" }} , 
 	{ "name": "u_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "q0" }} , 
 	{ "name": "u_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "we0" }} , 
 	{ "name": "u_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "u_1", "role": "address1" }} , 
 	{ "name": "u_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "ce1" }} , 
 	{ "name": "u_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "d1" }} , 
 	{ "name": "u_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "q1" }} , 
 	{ "name": "u_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "we1" }} , 
 	{ "name": "V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_0", "role": "address0" }} , 
 	{ "name": "V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_0", "role": "ce0" }} , 
 	{ "name": "V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_0", "role": "d0" }} , 
 	{ "name": "V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_0", "role": "q0" }} , 
 	{ "name": "V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_0", "role": "we0" }} , 
 	{ "name": "V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_0", "role": "address1" }} , 
 	{ "name": "V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_0", "role": "ce1" }} , 
 	{ "name": "V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_0", "role": "d1" }} , 
 	{ "name": "V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_0", "role": "q1" }} , 
 	{ "name": "V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_0", "role": "we1" }} , 
 	{ "name": "V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_1", "role": "address0" }} , 
 	{ "name": "V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1", "role": "ce0" }} , 
 	{ "name": "V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_1", "role": "d0" }} , 
 	{ "name": "V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_1", "role": "q0" }} , 
 	{ "name": "V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1", "role": "we0" }} , 
 	{ "name": "V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "V_1", "role": "address1" }} , 
 	{ "name": "V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1", "role": "ce1" }} , 
 	{ "name": "V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_1", "role": "d1" }} , 
 	{ "name": "V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "V_1", "role": "q1" }} , 
 	{ "name": "V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1", "role": "we1" }} , 
 	{ "name": "witness_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "witness", "role": "TDATA" }} , 
 	{ "name": "circuit_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "circuit", "role": "TDATA" }} , 
 	{ "name": "d_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "d_strm", "role": "TDATA" }} , 
 	{ "name": "a0_tilde", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "a0_tilde", "role": "default" }} , 
 	{ "name": "a1_tilde", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "a1_tilde", "role": "default" }} , 
 	{ "name": "proof_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "proof_strm", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "witness_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "witness", "role": "TVALID" }} , 
 	{ "name": "witness_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "witness", "role": "TREADY" }} , 
 	{ "name": "circuit_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "circuit", "role": "TVALID" }} , 
 	{ "name": "circuit_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "circuit", "role": "TREADY" }} , 
 	{ "name": "d_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_strm", "role": "TVALID" }} , 
 	{ "name": "d_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_strm", "role": "TREADY" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ch1_val1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ch1_val1", "role": "ap_vld" }} , 
 	{ "name": "a0_tilde_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a0_tilde", "role": "ap_vld" }} , 
 	{ "name": "a1_tilde_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a1_tilde", "role": "ap_vld" }} , 
 	{ "name": "proof_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "proof_strm", "role": "TVALID" }} , 
 	{ "name": "proof_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "proof_strm", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	ProverCircuitEval {
		ch1_val1 {Type I LastRead 2 FirstWrite -1}
		u_0 {Type IO LastRead 3 FirstWrite -1}
		u_1 {Type IO LastRead 3 FirstWrite -1}
		V_0 {Type IO LastRead 3 FirstWrite -1}
		V_1 {Type IO LastRead 3 FirstWrite -1}
		witness {Type I LastRead 1 FirstWrite -1}
		circuit {Type I LastRead 1 FirstWrite -1}
		d_strm {Type O LastRead -1 FirstWrite 1}
		a0_tilde {Type O LastRead -1 FirstWrite 2}
		a1_tilde {Type O LastRead -1 FirstWrite 2}
		proof_strm {Type O LastRead -1 FirstWrite 2}}
	ProverCircuitEval_Block_entry_u_0_arg_proc {
		u_0 {Type IO LastRead 3 FirstWrite -1}
		u_1 {Type IO LastRead 3 FirstWrite -1}
		V_0 {Type IO LastRead 3 FirstWrite -1}
		V_1 {Type IO LastRead 3 FirstWrite -1}
		witness {Type I LastRead 1 FirstWrite -1}
		circuit {Type I LastRead 1 FirstWrite -1}
		d_strm {Type O LastRead -1 FirstWrite 1}
		d_strm_cp {Type O LastRead -1 FirstWrite 1}
		a0_strm {Type O LastRead -1 FirstWrite 10}
		a1_strm {Type O LastRead -1 FirstWrite 10}}
	compute_mask {
		u_0 {Type I LastRead 1 FirstWrite -1}
		u_1 {Type I LastRead 1 FirstWrite -1}
		V_0 {Type I LastRead 1 FirstWrite -1}
		V_1 {Type I LastRead 1 FirstWrite -1}}
	combineVOLEs {
		vals {Type I LastRead 1 FirstWrite -1}}
	gf128_multiply {
		a {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	gf128_multiply {
		a {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	combineVOLEs {
		vals {Type I LastRead 1 FirstWrite -1}}
	gf128_multiply {
		a {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	gf128_multiply {
		a {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}}
	gf128_clmul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}
	ToField {
		a0_strm {Type I LastRead 1 FirstWrite -1}
		a1_strm {Type I LastRead 1 FirstWrite -1}
		a_strm {Type O LastRead -1 FirstWrite 1}}
	chal2 {
		d_strm_cp {Type I LastRead 2 FirstWrite -1}
		ch1_val {Type I LastRead 0 FirstWrite -1}
		ch2_strm {Type O LastRead -1 FirstWrite 151}}
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
		stateArray_24_read {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "773154", "Max" : "773154"}
	, {"Name" : "Interval", "Min" : "581145", "Max" : "581145"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ch1_val1 { ap_none {  { ch1_val1 in_data 0 128 }  { ch1_val1_ap_vld in_vld 0 1 } } }
	u_0 { ap_memory {  { u_0_address0 mem_address 1 18 }  { u_0_ce0 mem_ce 1 1 }  { u_0_d0 mem_din 1 1 }  { u_0_q0 mem_dout 0 1 }  { u_0_we0 mem_we 1 1 }  { u_0_address1 MemPortADDR2 1 18 }  { u_0_ce1 MemPortCE2 1 1 }  { u_0_d1 MemPortDIN2 1 1 }  { u_0_q1 mem_dout 0 1 }  { u_0_we1 MemPortWE2 1 1 } } }
	u_1 { ap_memory {  { u_1_address0 mem_address 1 18 }  { u_1_ce0 mem_ce 1 1 }  { u_1_d0 mem_din 1 1 }  { u_1_q0 mem_dout 0 1 }  { u_1_we0 mem_we 1 1 }  { u_1_address1 MemPortADDR2 1 18 }  { u_1_ce1 MemPortCE2 1 1 }  { u_1_d1 MemPortDIN2 1 1 }  { u_1_q1 mem_dout 0 1 }  { u_1_we1 MemPortWE2 1 1 } } }
	V_0 { ap_memory {  { V_0_address0 mem_address 1 18 }  { V_0_ce0 mem_ce 1 1 }  { V_0_d0 mem_din 1 128 }  { V_0_q0 mem_dout 0 128 }  { V_0_we0 mem_we 1 1 }  { V_0_address1 MemPortADDR2 1 18 }  { V_0_ce1 MemPortCE2 1 1 }  { V_0_d1 MemPortDIN2 1 128 }  { V_0_q1 MemPortDOUT2 0 128 }  { V_0_we1 MemPortWE2 1 1 } } }
	V_1 { ap_memory {  { V_1_address0 mem_address 1 18 }  { V_1_ce0 mem_ce 1 1 }  { V_1_d0 mem_din 1 128 }  { V_1_q0 mem_dout 0 128 }  { V_1_we0 mem_we 1 1 }  { V_1_address1 MemPortADDR2 1 18 }  { V_1_ce1 MemPortCE2 1 1 }  { V_1_d1 MemPortDIN2 1 128 }  { V_1_q1 MemPortDOUT2 0 128 }  { V_1_we1 MemPortWE2 1 1 } } }
	witness { axis {  { witness_TDATA in_data 0 8 }  { witness_TVALID in_vld 0 1 }  { witness_TREADY in_acc 1 1 } } }
	circuit { axis {  { circuit_TDATA in_data 0 128 }  { circuit_TVALID in_vld 0 1 }  { circuit_TREADY in_acc 1 1 } } }
	d_strm { axis {  { d_strm_TDATA out_data 1 8 }  { d_strm_TVALID out_vld 1 1 }  { d_strm_TREADY out_acc 0 1 } } }
	a0_tilde { ap_vld {  { a0_tilde out_data 1 128 }  { a0_tilde_ap_vld out_vld 1 1 } } }
	a1_tilde { ap_vld {  { a1_tilde out_data 1 128 }  { a1_tilde_ap_vld out_vld 1 1 } } }
	proof_strm { axis {  { proof_strm_TDATA out_data 1 128 }  { proof_strm_TVALID out_vld 1 1 }  { proof_strm_TREADY out_acc 0 1 } } }
}
