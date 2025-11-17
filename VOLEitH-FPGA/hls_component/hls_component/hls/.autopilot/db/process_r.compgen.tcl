# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler GenerateProof_process_r_cipher_0_ssbox_ROM_NP_BRAM_1R BINDTYPE {storage} TYPE {rom_np} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
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
    id 12 \
    name this_1_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_0_val \
    op interface \
    ports { this_1_0_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name this_1_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_1_val \
    op interface \
    ports { this_1_1_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name this_1_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_2_val \
    op interface \
    ports { this_1_2_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name this_1_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_3_val \
    op interface \
    ports { this_1_3_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name this_1_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_4_val \
    op interface \
    ports { this_1_4_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name this_1_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_5_val \
    op interface \
    ports { this_1_5_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name this_1_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_6_val \
    op interface \
    ports { this_1_6_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name this_1_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_7_val \
    op interface \
    ports { this_1_7_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name this_1_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_8_val \
    op interface \
    ports { this_1_8_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name this_1_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_9_val \
    op interface \
    ports { this_1_9_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name this_1_10_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_1_10_val \
    op interface \
    ports { this_1_10_val { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name plaintext \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_plaintext \
    op interface \
    ports { plaintext { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 128 vector } } \
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


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


