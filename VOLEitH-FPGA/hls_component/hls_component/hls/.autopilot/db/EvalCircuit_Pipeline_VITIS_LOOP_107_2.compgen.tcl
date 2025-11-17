# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 1783 \
    name d_strm \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { d_strm_TDATA { O 8 vector } d_strm_TVALID { O 1 bit } d_strm_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'd_strm'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1785 \
    name V_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename V_0 \
    op interface \
    ports { V_0_address0 { O 18 vector } V_0_ce0 { O 1 bit } V_0_q0 { I 128 vector } V_0_address1 { O 18 vector } V_0_ce1 { O 1 bit } V_0_we1 { O 1 bit } V_0_d1 { O 128 vector } V_0_q1 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1786 \
    name V_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename V_1 \
    op interface \
    ports { V_1_address0 { O 18 vector } V_1_ce0 { O 1 bit } V_1_q0 { I 128 vector } V_1_address1 { O 18 vector } V_1_ce1 { O 1 bit } V_1_we1 { O 1 bit } V_1_d1 { O 128 vector } V_1_q1 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'V_1'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 1789 \
    name circuit \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { circuit_TDATA { I 128 vector } circuit_TVALID { I 1 bit } circuit_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'circuit'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1790 \
    name extended_witness \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename extended_witness \
    op interface \
    ports { extended_witness_address0 { O 19 vector } extended_witness_ce0 { O 1 bit } extended_witness_we0 { O 1 bit } extended_witness_d0 { O 1 vector } extended_witness_q0 { I 1 vector } extended_witness_address1 { O 19 vector } extended_witness_ce1 { O 1 bit } extended_witness_q1 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'extended_witness'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1791 \
    name u_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename u_0 \
    op interface \
    ports { u_0_address0 { O 18 vector } u_0_ce0 { O 1 bit } u_0_q0 { I 1 vector } u_0_address1 { O 18 vector } u_0_ce1 { O 1 bit } u_0_we1 { O 1 bit } u_0_d1 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'u_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1792 \
    name u_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename u_1 \
    op interface \
    ports { u_1_address0 { O 18 vector } u_1_ce0 { O 1 bit } u_1_q0 { I 1 vector } u_1_address1 { O 18 vector } u_1_ce1 { O 1 bit } u_1_we1 { O 1 bit } u_1_d1 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'u_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1784 \
    name d_strm_cp \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_strm_cp \
    op interface \
    ports { d_strm_cp_din { O 1 vector } d_strm_cp_full_n { I 1 bit } d_strm_cp_write { O 1 bit } d_strm_cp_num_data_valid { I 3 vector } d_strm_cp_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1787 \
    name a0_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_a0_strm \
    op interface \
    ports { a0_strm_din { O 256 vector } a0_strm_full_n { I 1 bit } a0_strm_write { O 1 bit } a0_strm_num_data_valid { I 3 vector } a0_strm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1788 \
    name a1_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_a1_strm \
    op interface \
    ports { a1_strm_din { O 128 vector } a1_strm_full_n { I 1 bit } a1_strm_write { O 1 bit } a1_strm_num_data_valid { I 3 vector } a1_strm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName GenerateProof_flow_control_loop_pipe_sequential_init_U
set CompName GenerateProof_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix GenerateProof_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


