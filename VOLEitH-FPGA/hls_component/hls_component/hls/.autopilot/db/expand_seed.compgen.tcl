# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler GenerateProof_expand_seed_sd_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 814 \
    name iv_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iv_val \
    op interface \
    ports { iv_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 815 \
    name seed_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_seed_strm \
    op interface \
    ports { seed_strm_dout { I 128 vector } seed_strm_empty_n { I 1 bit } seed_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 816 \
    name r_strm_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_strm_0 \
    op interface \
    ports { r_strm_0_din { O 256 vector } r_strm_0_full_n { I 1 bit } r_strm_0_write { O 1 bit } r_strm_0_num_data_valid { I 32 vector } r_strm_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 817 \
    name r_strm_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_strm_1 \
    op interface \
    ports { r_strm_1_din { O 256 vector } r_strm_1_full_n { I 1 bit } r_strm_1_write { O 1 bit } r_strm_1_num_data_valid { I 32 vector } r_strm_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 818 \
    name r_strm_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_strm_2 \
    op interface \
    ports { r_strm_2_din { O 256 vector } r_strm_2_full_n { I 1 bit } r_strm_2_write { O 1 bit } r_strm_2_num_data_valid { I 32 vector } r_strm_2_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 819 \
    name r_strm_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_strm_3 \
    op interface \
    ports { r_strm_3_din { O 256 vector } r_strm_3_full_n { I 1 bit } r_strm_3_write { O 1 bit } r_strm_3_num_data_valid { I 32 vector } r_strm_3_fifo_cap { I 32 vector } } \
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


