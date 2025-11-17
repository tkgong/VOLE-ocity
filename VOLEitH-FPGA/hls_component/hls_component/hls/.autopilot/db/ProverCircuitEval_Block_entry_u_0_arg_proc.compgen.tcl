# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1804 \
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
    id 1805 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1806 \
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
    id 1807 \
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
    id 1808 \
    name witness \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { witness_TDATA { I 8 vector } witness_TVALID { I 1 bit } witness_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'witness'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 1809 \
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


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 1810 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1811 \
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
    id 1812 \
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
    id 1813 \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


