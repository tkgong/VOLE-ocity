# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
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
    id 72 \
    name seed_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_seed_strm \
    op interface \
    ports { seed_strm_din { O 128 vector } seed_strm_full_n { I 1 bit } seed_strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name com_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_com_strm \
    op interface \
    ports { com_strm_din { O 128 vector } com_strm_full_n { I 1 bit } com_strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name root_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_root_strm \
    op interface \
    ports { root_strm_dout { I 128 vector } root_strm_empty_n { I 1 bit } root_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name ggm_keys_0_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_0_0_0_out \
    op interface \
    ports { ggm_keys_0_0_0_out { O 128 vector } ggm_keys_0_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name ggm_keys_1_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_1_0_0_out \
    op interface \
    ports { ggm_keys_1_0_0_out { O 128 vector } ggm_keys_1_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name ggm_keys_2_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_2_0_0_out \
    op interface \
    ports { ggm_keys_2_0_0_out { O 128 vector } ggm_keys_2_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name ggm_keys_3_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_3_0_0_out \
    op interface \
    ports { ggm_keys_3_0_0_out { O 128 vector } ggm_keys_3_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name ggm_keys_4_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_4_0_0_out \
    op interface \
    ports { ggm_keys_4_0_0_out { O 128 vector } ggm_keys_4_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name ggm_keys_5_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_5_0_0_out \
    op interface \
    ports { ggm_keys_5_0_0_out { O 128 vector } ggm_keys_5_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name ggm_keys_6_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_6_0_0_out \
    op interface \
    ports { ggm_keys_6_0_0_out { O 128 vector } ggm_keys_6_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name ggm_keys_7_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_7_0_0_out \
    op interface \
    ports { ggm_keys_7_0_0_out { O 128 vector } ggm_keys_7_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name ggm_keys_8_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_8_0_0_out \
    op interface \
    ports { ggm_keys_8_0_0_out { O 128 vector } ggm_keys_8_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name ggm_keys_9_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_9_0_0_out \
    op interface \
    ports { ggm_keys_9_0_0_out { O 128 vector } ggm_keys_9_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name ggm_keys_10_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_10_0_0_out \
    op interface \
    ports { ggm_keys_10_0_0_out { O 128 vector } ggm_keys_10_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name ggm_keys_11_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_11_0_0_out \
    op interface \
    ports { ggm_keys_11_0_0_out { O 128 vector } ggm_keys_11_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name ggm_keys_12_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_12_0_0_out \
    op interface \
    ports { ggm_keys_12_0_0_out { O 128 vector } ggm_keys_12_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name ggm_keys_13_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_13_0_0_out \
    op interface \
    ports { ggm_keys_13_0_0_out { O 128 vector } ggm_keys_13_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name ggm_keys_14_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_14_0_0_out \
    op interface \
    ports { ggm_keys_14_0_0_out { O 128 vector } ggm_keys_14_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name ggm_keys_15_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_15_0_0_out \
    op interface \
    ports { ggm_keys_15_0_0_out { O 128 vector } ggm_keys_15_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name ggm_keys_16_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_16_0_0_out \
    op interface \
    ports { ggm_keys_16_0_0_out { O 128 vector } ggm_keys_16_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name ggm_keys_17_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_17_0_0_out \
    op interface \
    ports { ggm_keys_17_0_0_out { O 128 vector } ggm_keys_17_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name ggm_keys_18_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_18_0_0_out \
    op interface \
    ports { ggm_keys_18_0_0_out { O 128 vector } ggm_keys_18_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name ggm_keys_19_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_19_0_0_out \
    op interface \
    ports { ggm_keys_19_0_0_out { O 128 vector } ggm_keys_19_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name ggm_keys_20_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_20_0_0_out \
    op interface \
    ports { ggm_keys_20_0_0_out { O 128 vector } ggm_keys_20_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name ggm_keys_21_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_21_0_0_out \
    op interface \
    ports { ggm_keys_21_0_0_out { O 128 vector } ggm_keys_21_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name ggm_keys_22_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_22_0_0_out \
    op interface \
    ports { ggm_keys_22_0_0_out { O 128 vector } ggm_keys_22_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name ggm_keys_23_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_23_0_0_out \
    op interface \
    ports { ggm_keys_23_0_0_out { O 128 vector } ggm_keys_23_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name ggm_keys_24_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_24_0_0_out \
    op interface \
    ports { ggm_keys_24_0_0_out { O 128 vector } ggm_keys_24_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name ggm_keys_25_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_25_0_0_out \
    op interface \
    ports { ggm_keys_25_0_0_out { O 128 vector } ggm_keys_25_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name ggm_keys_26_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_26_0_0_out \
    op interface \
    ports { ggm_keys_26_0_0_out { O 128 vector } ggm_keys_26_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name ggm_keys_27_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_27_0_0_out \
    op interface \
    ports { ggm_keys_27_0_0_out { O 128 vector } ggm_keys_27_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name ggm_keys_28_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_28_0_0_out \
    op interface \
    ports { ggm_keys_28_0_0_out { O 128 vector } ggm_keys_28_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name ggm_keys_29_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_29_0_0_out \
    op interface \
    ports { ggm_keys_29_0_0_out { O 128 vector } ggm_keys_29_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name ggm_keys_30_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_30_0_0_out \
    op interface \
    ports { ggm_keys_30_0_0_out { O 128 vector } ggm_keys_30_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name ggm_keys_31_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_31_0_0_out \
    op interface \
    ports { ggm_keys_31_0_0_out { O 128 vector } ggm_keys_31_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name ggm_keys_32_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_32_0_0_out \
    op interface \
    ports { ggm_keys_32_0_0_out { O 128 vector } ggm_keys_32_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name ggm_keys_33_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_33_0_0_out \
    op interface \
    ports { ggm_keys_33_0_0_out { O 128 vector } ggm_keys_33_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name ggm_keys_34_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_34_0_0_out \
    op interface \
    ports { ggm_keys_34_0_0_out { O 128 vector } ggm_keys_34_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name ggm_keys_35_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_35_0_0_out \
    op interface \
    ports { ggm_keys_35_0_0_out { O 128 vector } ggm_keys_35_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name ggm_keys_36_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_36_0_0_out \
    op interface \
    ports { ggm_keys_36_0_0_out { O 128 vector } ggm_keys_36_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name ggm_keys_37_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_37_0_0_out \
    op interface \
    ports { ggm_keys_37_0_0_out { O 128 vector } ggm_keys_37_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name ggm_keys_38_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_38_0_0_out \
    op interface \
    ports { ggm_keys_38_0_0_out { O 128 vector } ggm_keys_38_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name ggm_keys_39_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_39_0_0_out \
    op interface \
    ports { ggm_keys_39_0_0_out { O 128 vector } ggm_keys_39_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name ggm_keys_40_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_40_0_0_out \
    op interface \
    ports { ggm_keys_40_0_0_out { O 128 vector } ggm_keys_40_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name ggm_keys_41_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_41_0_0_out \
    op interface \
    ports { ggm_keys_41_0_0_out { O 128 vector } ggm_keys_41_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name ggm_keys_42_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_42_0_0_out \
    op interface \
    ports { ggm_keys_42_0_0_out { O 128 vector } ggm_keys_42_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name ggm_keys_43_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_43_0_0_out \
    op interface \
    ports { ggm_keys_43_0_0_out { O 128 vector } ggm_keys_43_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name ggm_keys_44_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_44_0_0_out \
    op interface \
    ports { ggm_keys_44_0_0_out { O 128 vector } ggm_keys_44_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name ggm_keys_45_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_45_0_0_out \
    op interface \
    ports { ggm_keys_45_0_0_out { O 128 vector } ggm_keys_45_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name ggm_keys_46_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_46_0_0_out \
    op interface \
    ports { ggm_keys_46_0_0_out { O 128 vector } ggm_keys_46_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name ggm_keys_47_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_47_0_0_out \
    op interface \
    ports { ggm_keys_47_0_0_out { O 128 vector } ggm_keys_47_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name ggm_keys_48_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_48_0_0_out \
    op interface \
    ports { ggm_keys_48_0_0_out { O 128 vector } ggm_keys_48_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name ggm_keys_49_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_49_0_0_out \
    op interface \
    ports { ggm_keys_49_0_0_out { O 128 vector } ggm_keys_49_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name ggm_keys_50_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_50_0_0_out \
    op interface \
    ports { ggm_keys_50_0_0_out { O 128 vector } ggm_keys_50_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name ggm_keys_51_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_51_0_0_out \
    op interface \
    ports { ggm_keys_51_0_0_out { O 128 vector } ggm_keys_51_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name ggm_keys_52_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_52_0_0_out \
    op interface \
    ports { ggm_keys_52_0_0_out { O 128 vector } ggm_keys_52_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name ggm_keys_53_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_53_0_0_out \
    op interface \
    ports { ggm_keys_53_0_0_out { O 128 vector } ggm_keys_53_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name ggm_keys_54_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_54_0_0_out \
    op interface \
    ports { ggm_keys_54_0_0_out { O 128 vector } ggm_keys_54_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name ggm_keys_55_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_55_0_0_out \
    op interface \
    ports { ggm_keys_55_0_0_out { O 128 vector } ggm_keys_55_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name ggm_keys_56_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_56_0_0_out \
    op interface \
    ports { ggm_keys_56_0_0_out { O 128 vector } ggm_keys_56_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name ggm_keys_57_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_57_0_0_out \
    op interface \
    ports { ggm_keys_57_0_0_out { O 128 vector } ggm_keys_57_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name ggm_keys_58_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_58_0_0_out \
    op interface \
    ports { ggm_keys_58_0_0_out { O 128 vector } ggm_keys_58_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name ggm_keys_59_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_59_0_0_out \
    op interface \
    ports { ggm_keys_59_0_0_out { O 128 vector } ggm_keys_59_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name ggm_keys_60_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_60_0_0_out \
    op interface \
    ports { ggm_keys_60_0_0_out { O 128 vector } ggm_keys_60_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name ggm_keys_61_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_61_0_0_out \
    op interface \
    ports { ggm_keys_61_0_0_out { O 128 vector } ggm_keys_61_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name ggm_keys_62_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_62_0_0_out \
    op interface \
    ports { ggm_keys_62_0_0_out { O 128 vector } ggm_keys_62_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name ggm_keys_63_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_63_0_0_out \
    op interface \
    ports { ggm_keys_63_0_0_out { O 128 vector } ggm_keys_63_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name coms_0_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_0_0_0_out \
    op interface \
    ports { coms_0_0_0_out { O 128 vector } coms_0_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name coms_0_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_0_1_0_out \
    op interface \
    ports { coms_0_1_0_out { O 128 vector } coms_0_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name coms_0_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_0_2_0_out \
    op interface \
    ports { coms_0_2_0_out { O 128 vector } coms_0_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name coms_0_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_0_3_0_out \
    op interface \
    ports { coms_0_3_0_out { O 128 vector } coms_0_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name coms_1_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_1_0_0_out \
    op interface \
    ports { coms_1_0_0_out { O 128 vector } coms_1_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name coms_1_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_1_1_0_out \
    op interface \
    ports { coms_1_1_0_out { O 128 vector } coms_1_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name coms_1_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_1_2_0_out \
    op interface \
    ports { coms_1_2_0_out { O 128 vector } coms_1_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name coms_1_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_1_3_0_out \
    op interface \
    ports { coms_1_3_0_out { O 128 vector } coms_1_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name coms_2_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_2_0_0_out \
    op interface \
    ports { coms_2_0_0_out { O 128 vector } coms_2_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name coms_2_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_2_1_0_out \
    op interface \
    ports { coms_2_1_0_out { O 128 vector } coms_2_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name coms_2_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_2_2_0_out \
    op interface \
    ports { coms_2_2_0_out { O 128 vector } coms_2_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name coms_2_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_2_3_0_out \
    op interface \
    ports { coms_2_3_0_out { O 128 vector } coms_2_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name coms_3_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_3_0_0_out \
    op interface \
    ports { coms_3_0_0_out { O 128 vector } coms_3_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name coms_3_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_3_1_0_out \
    op interface \
    ports { coms_3_1_0_out { O 128 vector } coms_3_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name coms_3_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_3_2_0_out \
    op interface \
    ports { coms_3_2_0_out { O 128 vector } coms_3_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name coms_3_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_3_3_0_out \
    op interface \
    ports { coms_3_3_0_out { O 128 vector } coms_3_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name coms_4_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_4_0_0_out \
    op interface \
    ports { coms_4_0_0_out { O 128 vector } coms_4_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name coms_4_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_4_1_0_out \
    op interface \
    ports { coms_4_1_0_out { O 128 vector } coms_4_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name coms_4_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_4_2_0_out \
    op interface \
    ports { coms_4_2_0_out { O 128 vector } coms_4_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name coms_4_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_4_3_0_out \
    op interface \
    ports { coms_4_3_0_out { O 128 vector } coms_4_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name coms_5_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_5_0_0_out \
    op interface \
    ports { coms_5_0_0_out { O 128 vector } coms_5_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name coms_5_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_5_1_0_out \
    op interface \
    ports { coms_5_1_0_out { O 128 vector } coms_5_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name coms_5_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_5_2_0_out \
    op interface \
    ports { coms_5_2_0_out { O 128 vector } coms_5_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name coms_5_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_5_3_0_out \
    op interface \
    ports { coms_5_3_0_out { O 128 vector } coms_5_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name coms_6_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_6_0_0_out \
    op interface \
    ports { coms_6_0_0_out { O 128 vector } coms_6_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name coms_6_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_6_1_0_out \
    op interface \
    ports { coms_6_1_0_out { O 128 vector } coms_6_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name coms_6_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_6_2_0_out \
    op interface \
    ports { coms_6_2_0_out { O 128 vector } coms_6_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name coms_6_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_6_3_0_out \
    op interface \
    ports { coms_6_3_0_out { O 128 vector } coms_6_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name coms_7_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_7_0_0_out \
    op interface \
    ports { coms_7_0_0_out { O 128 vector } coms_7_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name coms_7_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_7_1_0_out \
    op interface \
    ports { coms_7_1_0_out { O 128 vector } coms_7_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name coms_7_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_7_2_0_out \
    op interface \
    ports { coms_7_2_0_out { O 128 vector } coms_7_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name coms_7_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_7_3_0_out \
    op interface \
    ports { coms_7_3_0_out { O 128 vector } coms_7_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name coms_8_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_8_0_0_out \
    op interface \
    ports { coms_8_0_0_out { O 128 vector } coms_8_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name coms_8_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_8_1_0_out \
    op interface \
    ports { coms_8_1_0_out { O 128 vector } coms_8_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name coms_8_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_8_2_0_out \
    op interface \
    ports { coms_8_2_0_out { O 128 vector } coms_8_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name coms_8_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_8_3_0_out \
    op interface \
    ports { coms_8_3_0_out { O 128 vector } coms_8_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name coms_9_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_9_0_0_out \
    op interface \
    ports { coms_9_0_0_out { O 128 vector } coms_9_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name coms_9_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_9_1_0_out \
    op interface \
    ports { coms_9_1_0_out { O 128 vector } coms_9_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name coms_9_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_9_2_0_out \
    op interface \
    ports { coms_9_2_0_out { O 128 vector } coms_9_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name coms_9_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_9_3_0_out \
    op interface \
    ports { coms_9_3_0_out { O 128 vector } coms_9_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name coms_10_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_10_0_0_out \
    op interface \
    ports { coms_10_0_0_out { O 128 vector } coms_10_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name coms_10_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_10_1_0_out \
    op interface \
    ports { coms_10_1_0_out { O 128 vector } coms_10_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name coms_10_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_10_2_0_out \
    op interface \
    ports { coms_10_2_0_out { O 128 vector } coms_10_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name coms_10_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_10_3_0_out \
    op interface \
    ports { coms_10_3_0_out { O 128 vector } coms_10_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name coms_11_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_11_0_0_out \
    op interface \
    ports { coms_11_0_0_out { O 128 vector } coms_11_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name coms_11_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_11_1_0_out \
    op interface \
    ports { coms_11_1_0_out { O 128 vector } coms_11_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name coms_11_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_11_2_0_out \
    op interface \
    ports { coms_11_2_0_out { O 128 vector } coms_11_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name coms_11_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_11_3_0_out \
    op interface \
    ports { coms_11_3_0_out { O 128 vector } coms_11_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name coms_12_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_12_0_0_out \
    op interface \
    ports { coms_12_0_0_out { O 128 vector } coms_12_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name coms_12_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_12_1_0_out \
    op interface \
    ports { coms_12_1_0_out { O 128 vector } coms_12_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name coms_12_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_12_2_0_out \
    op interface \
    ports { coms_12_2_0_out { O 128 vector } coms_12_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name coms_12_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_12_3_0_out \
    op interface \
    ports { coms_12_3_0_out { O 128 vector } coms_12_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name coms_13_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_13_0_0_out \
    op interface \
    ports { coms_13_0_0_out { O 128 vector } coms_13_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name coms_13_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_13_1_0_out \
    op interface \
    ports { coms_13_1_0_out { O 128 vector } coms_13_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name coms_13_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_13_2_0_out \
    op interface \
    ports { coms_13_2_0_out { O 128 vector } coms_13_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name coms_13_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_13_3_0_out \
    op interface \
    ports { coms_13_3_0_out { O 128 vector } coms_13_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name coms_14_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_14_0_0_out \
    op interface \
    ports { coms_14_0_0_out { O 128 vector } coms_14_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name coms_14_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_14_1_0_out \
    op interface \
    ports { coms_14_1_0_out { O 128 vector } coms_14_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name coms_14_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_14_2_0_out \
    op interface \
    ports { coms_14_2_0_out { O 128 vector } coms_14_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name coms_14_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_14_3_0_out \
    op interface \
    ports { coms_14_3_0_out { O 128 vector } coms_14_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name coms_15_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_15_0_0_out \
    op interface \
    ports { coms_15_0_0_out { O 128 vector } coms_15_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name coms_15_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_15_1_0_out \
    op interface \
    ports { coms_15_1_0_out { O 128 vector } coms_15_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name coms_15_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_15_2_0_out \
    op interface \
    ports { coms_15_2_0_out { O 128 vector } coms_15_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name coms_15_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_15_3_0_out \
    op interface \
    ports { coms_15_3_0_out { O 128 vector } coms_15_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name coms_16_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_16_0_0_out \
    op interface \
    ports { coms_16_0_0_out { O 128 vector } coms_16_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name coms_16_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_16_1_0_out \
    op interface \
    ports { coms_16_1_0_out { O 128 vector } coms_16_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name coms_16_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_16_2_0_out \
    op interface \
    ports { coms_16_2_0_out { O 128 vector } coms_16_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name coms_16_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_16_3_0_out \
    op interface \
    ports { coms_16_3_0_out { O 128 vector } coms_16_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name coms_17_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_17_0_0_out \
    op interface \
    ports { coms_17_0_0_out { O 128 vector } coms_17_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name coms_17_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_17_1_0_out \
    op interface \
    ports { coms_17_1_0_out { O 128 vector } coms_17_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name coms_17_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_17_2_0_out \
    op interface \
    ports { coms_17_2_0_out { O 128 vector } coms_17_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name coms_17_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_17_3_0_out \
    op interface \
    ports { coms_17_3_0_out { O 128 vector } coms_17_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name coms_18_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_18_0_0_out \
    op interface \
    ports { coms_18_0_0_out { O 128 vector } coms_18_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name coms_18_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_18_1_0_out \
    op interface \
    ports { coms_18_1_0_out { O 128 vector } coms_18_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name coms_18_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_18_2_0_out \
    op interface \
    ports { coms_18_2_0_out { O 128 vector } coms_18_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name coms_18_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_18_3_0_out \
    op interface \
    ports { coms_18_3_0_out { O 128 vector } coms_18_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name coms_19_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_19_0_0_out \
    op interface \
    ports { coms_19_0_0_out { O 128 vector } coms_19_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name coms_19_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_19_1_0_out \
    op interface \
    ports { coms_19_1_0_out { O 128 vector } coms_19_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name coms_19_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_19_2_0_out \
    op interface \
    ports { coms_19_2_0_out { O 128 vector } coms_19_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name coms_19_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_19_3_0_out \
    op interface \
    ports { coms_19_3_0_out { O 128 vector } coms_19_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name coms_20_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_20_0_0_out \
    op interface \
    ports { coms_20_0_0_out { O 128 vector } coms_20_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name coms_20_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_20_1_0_out \
    op interface \
    ports { coms_20_1_0_out { O 128 vector } coms_20_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name coms_20_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_20_2_0_out \
    op interface \
    ports { coms_20_2_0_out { O 128 vector } coms_20_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name coms_20_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_20_3_0_out \
    op interface \
    ports { coms_20_3_0_out { O 128 vector } coms_20_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name coms_21_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_21_0_0_out \
    op interface \
    ports { coms_21_0_0_out { O 128 vector } coms_21_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name coms_21_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_21_1_0_out \
    op interface \
    ports { coms_21_1_0_out { O 128 vector } coms_21_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name coms_21_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_21_2_0_out \
    op interface \
    ports { coms_21_2_0_out { O 128 vector } coms_21_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name coms_21_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_21_3_0_out \
    op interface \
    ports { coms_21_3_0_out { O 128 vector } coms_21_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name coms_22_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_22_0_0_out \
    op interface \
    ports { coms_22_0_0_out { O 128 vector } coms_22_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name coms_22_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_22_1_0_out \
    op interface \
    ports { coms_22_1_0_out { O 128 vector } coms_22_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name coms_22_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_22_2_0_out \
    op interface \
    ports { coms_22_2_0_out { O 128 vector } coms_22_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name coms_22_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_22_3_0_out \
    op interface \
    ports { coms_22_3_0_out { O 128 vector } coms_22_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name coms_23_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_23_0_0_out \
    op interface \
    ports { coms_23_0_0_out { O 128 vector } coms_23_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name coms_23_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_23_1_0_out \
    op interface \
    ports { coms_23_1_0_out { O 128 vector } coms_23_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name coms_23_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_23_2_0_out \
    op interface \
    ports { coms_23_2_0_out { O 128 vector } coms_23_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name coms_23_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_23_3_0_out \
    op interface \
    ports { coms_23_3_0_out { O 128 vector } coms_23_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name coms_24_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_24_0_0_out \
    op interface \
    ports { coms_24_0_0_out { O 128 vector } coms_24_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name coms_24_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_24_1_0_out \
    op interface \
    ports { coms_24_1_0_out { O 128 vector } coms_24_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name coms_24_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_24_2_0_out \
    op interface \
    ports { coms_24_2_0_out { O 128 vector } coms_24_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name coms_24_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_24_3_0_out \
    op interface \
    ports { coms_24_3_0_out { O 128 vector } coms_24_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name coms_25_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_25_0_0_out \
    op interface \
    ports { coms_25_0_0_out { O 128 vector } coms_25_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name coms_25_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_25_1_0_out \
    op interface \
    ports { coms_25_1_0_out { O 128 vector } coms_25_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name coms_25_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_25_2_0_out \
    op interface \
    ports { coms_25_2_0_out { O 128 vector } coms_25_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name coms_25_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_25_3_0_out \
    op interface \
    ports { coms_25_3_0_out { O 128 vector } coms_25_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name coms_26_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_26_0_0_out \
    op interface \
    ports { coms_26_0_0_out { O 128 vector } coms_26_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name coms_26_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_26_1_0_out \
    op interface \
    ports { coms_26_1_0_out { O 128 vector } coms_26_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name coms_26_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_26_2_0_out \
    op interface \
    ports { coms_26_2_0_out { O 128 vector } coms_26_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name coms_26_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_26_3_0_out \
    op interface \
    ports { coms_26_3_0_out { O 128 vector } coms_26_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name coms_27_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_27_0_0_out \
    op interface \
    ports { coms_27_0_0_out { O 128 vector } coms_27_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name coms_27_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_27_1_0_out \
    op interface \
    ports { coms_27_1_0_out { O 128 vector } coms_27_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name coms_27_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_27_2_0_out \
    op interface \
    ports { coms_27_2_0_out { O 128 vector } coms_27_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name coms_27_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_27_3_0_out \
    op interface \
    ports { coms_27_3_0_out { O 128 vector } coms_27_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name coms_28_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_28_0_0_out \
    op interface \
    ports { coms_28_0_0_out { O 128 vector } coms_28_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name coms_28_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_28_1_0_out \
    op interface \
    ports { coms_28_1_0_out { O 128 vector } coms_28_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name coms_28_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_28_2_0_out \
    op interface \
    ports { coms_28_2_0_out { O 128 vector } coms_28_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name coms_28_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_28_3_0_out \
    op interface \
    ports { coms_28_3_0_out { O 128 vector } coms_28_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name coms_29_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_29_0_0_out \
    op interface \
    ports { coms_29_0_0_out { O 128 vector } coms_29_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name coms_29_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_29_1_0_out \
    op interface \
    ports { coms_29_1_0_out { O 128 vector } coms_29_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name coms_29_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_29_2_0_out \
    op interface \
    ports { coms_29_2_0_out { O 128 vector } coms_29_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name coms_29_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_29_3_0_out \
    op interface \
    ports { coms_29_3_0_out { O 128 vector } coms_29_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name coms_30_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_30_0_0_out \
    op interface \
    ports { coms_30_0_0_out { O 128 vector } coms_30_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name coms_30_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_30_1_0_out \
    op interface \
    ports { coms_30_1_0_out { O 128 vector } coms_30_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name coms_30_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_30_2_0_out \
    op interface \
    ports { coms_30_2_0_out { O 128 vector } coms_30_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name coms_30_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_30_3_0_out \
    op interface \
    ports { coms_30_3_0_out { O 128 vector } coms_30_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name coms_31_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_31_0_0_out \
    op interface \
    ports { coms_31_0_0_out { O 128 vector } coms_31_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name coms_31_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_31_1_0_out \
    op interface \
    ports { coms_31_1_0_out { O 128 vector } coms_31_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name coms_31_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_31_2_0_out \
    op interface \
    ports { coms_31_2_0_out { O 128 vector } coms_31_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name coms_31_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_31_3_0_out \
    op interface \
    ports { coms_31_3_0_out { O 128 vector } coms_31_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name coms_32_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_32_0_0_out \
    op interface \
    ports { coms_32_0_0_out { O 128 vector } coms_32_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name coms_32_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_32_1_0_out \
    op interface \
    ports { coms_32_1_0_out { O 128 vector } coms_32_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name coms_32_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_32_2_0_out \
    op interface \
    ports { coms_32_2_0_out { O 128 vector } coms_32_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name coms_32_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_32_3_0_out \
    op interface \
    ports { coms_32_3_0_out { O 128 vector } coms_32_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name coms_33_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_33_0_0_out \
    op interface \
    ports { coms_33_0_0_out { O 128 vector } coms_33_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name coms_33_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_33_1_0_out \
    op interface \
    ports { coms_33_1_0_out { O 128 vector } coms_33_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name coms_33_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_33_2_0_out \
    op interface \
    ports { coms_33_2_0_out { O 128 vector } coms_33_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name coms_33_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_33_3_0_out \
    op interface \
    ports { coms_33_3_0_out { O 128 vector } coms_33_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name coms_34_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_34_0_0_out \
    op interface \
    ports { coms_34_0_0_out { O 128 vector } coms_34_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name coms_34_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_34_1_0_out \
    op interface \
    ports { coms_34_1_0_out { O 128 vector } coms_34_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name coms_34_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_34_2_0_out \
    op interface \
    ports { coms_34_2_0_out { O 128 vector } coms_34_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name coms_34_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_34_3_0_out \
    op interface \
    ports { coms_34_3_0_out { O 128 vector } coms_34_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name coms_35_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_35_0_0_out \
    op interface \
    ports { coms_35_0_0_out { O 128 vector } coms_35_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name coms_35_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_35_1_0_out \
    op interface \
    ports { coms_35_1_0_out { O 128 vector } coms_35_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name coms_35_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_35_2_0_out \
    op interface \
    ports { coms_35_2_0_out { O 128 vector } coms_35_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name coms_35_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_35_3_0_out \
    op interface \
    ports { coms_35_3_0_out { O 128 vector } coms_35_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name coms_36_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_36_0_0_out \
    op interface \
    ports { coms_36_0_0_out { O 128 vector } coms_36_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name coms_36_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_36_1_0_out \
    op interface \
    ports { coms_36_1_0_out { O 128 vector } coms_36_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name coms_36_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_36_2_0_out \
    op interface \
    ports { coms_36_2_0_out { O 128 vector } coms_36_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name coms_36_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_36_3_0_out \
    op interface \
    ports { coms_36_3_0_out { O 128 vector } coms_36_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name coms_37_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_37_0_0_out \
    op interface \
    ports { coms_37_0_0_out { O 128 vector } coms_37_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name coms_37_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_37_1_0_out \
    op interface \
    ports { coms_37_1_0_out { O 128 vector } coms_37_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name coms_37_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_37_2_0_out \
    op interface \
    ports { coms_37_2_0_out { O 128 vector } coms_37_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name coms_37_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_37_3_0_out \
    op interface \
    ports { coms_37_3_0_out { O 128 vector } coms_37_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name coms_38_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_38_0_0_out \
    op interface \
    ports { coms_38_0_0_out { O 128 vector } coms_38_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name coms_38_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_38_1_0_out \
    op interface \
    ports { coms_38_1_0_out { O 128 vector } coms_38_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name coms_38_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_38_2_0_out \
    op interface \
    ports { coms_38_2_0_out { O 128 vector } coms_38_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name coms_38_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_38_3_0_out \
    op interface \
    ports { coms_38_3_0_out { O 128 vector } coms_38_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name coms_39_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_39_0_0_out \
    op interface \
    ports { coms_39_0_0_out { O 128 vector } coms_39_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name coms_39_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_39_1_0_out \
    op interface \
    ports { coms_39_1_0_out { O 128 vector } coms_39_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name coms_39_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_39_2_0_out \
    op interface \
    ports { coms_39_2_0_out { O 128 vector } coms_39_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name coms_39_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_39_3_0_out \
    op interface \
    ports { coms_39_3_0_out { O 128 vector } coms_39_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name coms_40_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_40_0_0_out \
    op interface \
    ports { coms_40_0_0_out { O 128 vector } coms_40_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name coms_40_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_40_1_0_out \
    op interface \
    ports { coms_40_1_0_out { O 128 vector } coms_40_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name coms_40_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_40_2_0_out \
    op interface \
    ports { coms_40_2_0_out { O 128 vector } coms_40_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name coms_40_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_40_3_0_out \
    op interface \
    ports { coms_40_3_0_out { O 128 vector } coms_40_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name coms_41_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_41_0_0_out \
    op interface \
    ports { coms_41_0_0_out { O 128 vector } coms_41_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name coms_41_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_41_1_0_out \
    op interface \
    ports { coms_41_1_0_out { O 128 vector } coms_41_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name coms_41_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_41_2_0_out \
    op interface \
    ports { coms_41_2_0_out { O 128 vector } coms_41_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name coms_41_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_41_3_0_out \
    op interface \
    ports { coms_41_3_0_out { O 128 vector } coms_41_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name coms_42_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_42_0_0_out \
    op interface \
    ports { coms_42_0_0_out { O 128 vector } coms_42_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name coms_42_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_42_1_0_out \
    op interface \
    ports { coms_42_1_0_out { O 128 vector } coms_42_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name coms_42_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_42_2_0_out \
    op interface \
    ports { coms_42_2_0_out { O 128 vector } coms_42_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name coms_42_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_42_3_0_out \
    op interface \
    ports { coms_42_3_0_out { O 128 vector } coms_42_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name coms_43_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_43_0_0_out \
    op interface \
    ports { coms_43_0_0_out { O 128 vector } coms_43_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name coms_43_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_43_1_0_out \
    op interface \
    ports { coms_43_1_0_out { O 128 vector } coms_43_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name coms_43_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_43_2_0_out \
    op interface \
    ports { coms_43_2_0_out { O 128 vector } coms_43_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name coms_43_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_43_3_0_out \
    op interface \
    ports { coms_43_3_0_out { O 128 vector } coms_43_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name coms_44_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_44_0_0_out \
    op interface \
    ports { coms_44_0_0_out { O 128 vector } coms_44_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name coms_44_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_44_1_0_out \
    op interface \
    ports { coms_44_1_0_out { O 128 vector } coms_44_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name coms_44_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_44_2_0_out \
    op interface \
    ports { coms_44_2_0_out { O 128 vector } coms_44_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name coms_44_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_44_3_0_out \
    op interface \
    ports { coms_44_3_0_out { O 128 vector } coms_44_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name coms_45_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_45_0_0_out \
    op interface \
    ports { coms_45_0_0_out { O 128 vector } coms_45_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name coms_45_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_45_1_0_out \
    op interface \
    ports { coms_45_1_0_out { O 128 vector } coms_45_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name coms_45_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_45_2_0_out \
    op interface \
    ports { coms_45_2_0_out { O 128 vector } coms_45_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name coms_45_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_45_3_0_out \
    op interface \
    ports { coms_45_3_0_out { O 128 vector } coms_45_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name coms_46_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_46_0_0_out \
    op interface \
    ports { coms_46_0_0_out { O 128 vector } coms_46_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name coms_46_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_46_1_0_out \
    op interface \
    ports { coms_46_1_0_out { O 128 vector } coms_46_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name coms_46_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_46_2_0_out \
    op interface \
    ports { coms_46_2_0_out { O 128 vector } coms_46_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name coms_46_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_46_3_0_out \
    op interface \
    ports { coms_46_3_0_out { O 128 vector } coms_46_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name coms_47_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_47_0_0_out \
    op interface \
    ports { coms_47_0_0_out { O 128 vector } coms_47_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name coms_47_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_47_1_0_out \
    op interface \
    ports { coms_47_1_0_out { O 128 vector } coms_47_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name coms_47_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_47_2_0_out \
    op interface \
    ports { coms_47_2_0_out { O 128 vector } coms_47_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name coms_47_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_47_3_0_out \
    op interface \
    ports { coms_47_3_0_out { O 128 vector } coms_47_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name coms_48_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_48_0_0_out \
    op interface \
    ports { coms_48_0_0_out { O 128 vector } coms_48_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name coms_48_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_48_1_0_out \
    op interface \
    ports { coms_48_1_0_out { O 128 vector } coms_48_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name coms_48_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_48_2_0_out \
    op interface \
    ports { coms_48_2_0_out { O 128 vector } coms_48_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name coms_48_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_48_3_0_out \
    op interface \
    ports { coms_48_3_0_out { O 128 vector } coms_48_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name coms_49_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_49_0_0_out \
    op interface \
    ports { coms_49_0_0_out { O 128 vector } coms_49_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name coms_49_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_49_1_0_out \
    op interface \
    ports { coms_49_1_0_out { O 128 vector } coms_49_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name coms_49_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_49_2_0_out \
    op interface \
    ports { coms_49_2_0_out { O 128 vector } coms_49_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name coms_49_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_49_3_0_out \
    op interface \
    ports { coms_49_3_0_out { O 128 vector } coms_49_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name coms_50_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_50_0_0_out \
    op interface \
    ports { coms_50_0_0_out { O 128 vector } coms_50_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name coms_50_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_50_1_0_out \
    op interface \
    ports { coms_50_1_0_out { O 128 vector } coms_50_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name coms_50_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_50_2_0_out \
    op interface \
    ports { coms_50_2_0_out { O 128 vector } coms_50_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name coms_50_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_50_3_0_out \
    op interface \
    ports { coms_50_3_0_out { O 128 vector } coms_50_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name coms_51_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_51_0_0_out \
    op interface \
    ports { coms_51_0_0_out { O 128 vector } coms_51_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name coms_51_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_51_1_0_out \
    op interface \
    ports { coms_51_1_0_out { O 128 vector } coms_51_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name coms_51_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_51_2_0_out \
    op interface \
    ports { coms_51_2_0_out { O 128 vector } coms_51_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name coms_51_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_51_3_0_out \
    op interface \
    ports { coms_51_3_0_out { O 128 vector } coms_51_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name coms_52_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_52_0_0_out \
    op interface \
    ports { coms_52_0_0_out { O 128 vector } coms_52_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name coms_52_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_52_1_0_out \
    op interface \
    ports { coms_52_1_0_out { O 128 vector } coms_52_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name coms_52_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_52_2_0_out \
    op interface \
    ports { coms_52_2_0_out { O 128 vector } coms_52_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name coms_52_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_52_3_0_out \
    op interface \
    ports { coms_52_3_0_out { O 128 vector } coms_52_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name coms_53_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_53_0_0_out \
    op interface \
    ports { coms_53_0_0_out { O 128 vector } coms_53_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name coms_53_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_53_1_0_out \
    op interface \
    ports { coms_53_1_0_out { O 128 vector } coms_53_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name coms_53_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_53_2_0_out \
    op interface \
    ports { coms_53_2_0_out { O 128 vector } coms_53_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name coms_53_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_53_3_0_out \
    op interface \
    ports { coms_53_3_0_out { O 128 vector } coms_53_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name coms_54_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_54_0_0_out \
    op interface \
    ports { coms_54_0_0_out { O 128 vector } coms_54_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name coms_54_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_54_1_0_out \
    op interface \
    ports { coms_54_1_0_out { O 128 vector } coms_54_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name coms_54_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_54_2_0_out \
    op interface \
    ports { coms_54_2_0_out { O 128 vector } coms_54_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name coms_54_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_54_3_0_out \
    op interface \
    ports { coms_54_3_0_out { O 128 vector } coms_54_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name coms_55_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_55_0_0_out \
    op interface \
    ports { coms_55_0_0_out { O 128 vector } coms_55_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name coms_55_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_55_1_0_out \
    op interface \
    ports { coms_55_1_0_out { O 128 vector } coms_55_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name coms_55_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_55_2_0_out \
    op interface \
    ports { coms_55_2_0_out { O 128 vector } coms_55_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name coms_55_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_55_3_0_out \
    op interface \
    ports { coms_55_3_0_out { O 128 vector } coms_55_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name coms_56_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_56_0_0_out \
    op interface \
    ports { coms_56_0_0_out { O 128 vector } coms_56_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name coms_56_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_56_1_0_out \
    op interface \
    ports { coms_56_1_0_out { O 128 vector } coms_56_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name coms_56_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_56_2_0_out \
    op interface \
    ports { coms_56_2_0_out { O 128 vector } coms_56_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name coms_56_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_56_3_0_out \
    op interface \
    ports { coms_56_3_0_out { O 128 vector } coms_56_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name coms_57_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_57_0_0_out \
    op interface \
    ports { coms_57_0_0_out { O 128 vector } coms_57_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name coms_57_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_57_1_0_out \
    op interface \
    ports { coms_57_1_0_out { O 128 vector } coms_57_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name coms_57_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_57_2_0_out \
    op interface \
    ports { coms_57_2_0_out { O 128 vector } coms_57_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name coms_57_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_57_3_0_out \
    op interface \
    ports { coms_57_3_0_out { O 128 vector } coms_57_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name coms_58_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_58_0_0_out \
    op interface \
    ports { coms_58_0_0_out { O 128 vector } coms_58_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name coms_58_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_58_1_0_out \
    op interface \
    ports { coms_58_1_0_out { O 128 vector } coms_58_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name coms_58_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_58_2_0_out \
    op interface \
    ports { coms_58_2_0_out { O 128 vector } coms_58_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name coms_58_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_58_3_0_out \
    op interface \
    ports { coms_58_3_0_out { O 128 vector } coms_58_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name coms_59_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_59_0_0_out \
    op interface \
    ports { coms_59_0_0_out { O 128 vector } coms_59_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name coms_59_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_59_1_0_out \
    op interface \
    ports { coms_59_1_0_out { O 128 vector } coms_59_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name coms_59_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_59_2_0_out \
    op interface \
    ports { coms_59_2_0_out { O 128 vector } coms_59_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name coms_59_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_59_3_0_out \
    op interface \
    ports { coms_59_3_0_out { O 128 vector } coms_59_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name coms_60_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_60_0_0_out \
    op interface \
    ports { coms_60_0_0_out { O 128 vector } coms_60_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name coms_60_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_60_1_0_out \
    op interface \
    ports { coms_60_1_0_out { O 128 vector } coms_60_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name coms_60_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_60_2_0_out \
    op interface \
    ports { coms_60_2_0_out { O 128 vector } coms_60_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name coms_60_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_60_3_0_out \
    op interface \
    ports { coms_60_3_0_out { O 128 vector } coms_60_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name coms_61_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_61_0_0_out \
    op interface \
    ports { coms_61_0_0_out { O 128 vector } coms_61_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name coms_61_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_61_1_0_out \
    op interface \
    ports { coms_61_1_0_out { O 128 vector } coms_61_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name coms_61_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_61_2_0_out \
    op interface \
    ports { coms_61_2_0_out { O 128 vector } coms_61_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name coms_61_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_61_3_0_out \
    op interface \
    ports { coms_61_3_0_out { O 128 vector } coms_61_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name coms_62_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_62_0_0_out \
    op interface \
    ports { coms_62_0_0_out { O 128 vector } coms_62_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name coms_62_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_62_1_0_out \
    op interface \
    ports { coms_62_1_0_out { O 128 vector } coms_62_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name coms_62_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_62_2_0_out \
    op interface \
    ports { coms_62_2_0_out { O 128 vector } coms_62_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name coms_62_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_62_3_0_out \
    op interface \
    ports { coms_62_3_0_out { O 128 vector } coms_62_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name coms_63_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_63_0_0_out \
    op interface \
    ports { coms_63_0_0_out { O 128 vector } coms_63_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name coms_63_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_63_1_0_out \
    op interface \
    ports { coms_63_1_0_out { O 128 vector } coms_63_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name coms_63_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_63_2_0_out \
    op interface \
    ports { coms_63_2_0_out { O 128 vector } coms_63_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name coms_63_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coms_63_3_0_out \
    op interface \
    ports { coms_63_3_0_out { O 128 vector } coms_63_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name ggm_keys_0_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_0_1_0_out \
    op interface \
    ports { ggm_keys_0_1_0_out { O 128 vector } ggm_keys_0_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name ggm_keys_0_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_0_2_0_out \
    op interface \
    ports { ggm_keys_0_2_0_out { O 128 vector } ggm_keys_0_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name ggm_keys_0_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_0_3_0_out \
    op interface \
    ports { ggm_keys_0_3_0_out { O 128 vector } ggm_keys_0_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name ggm_keys_0_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_0_4_0_out \
    op interface \
    ports { ggm_keys_0_4_0_out { O 128 vector } ggm_keys_0_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name ggm_keys_0_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_0_5_0_out \
    op interface \
    ports { ggm_keys_0_5_0_out { O 128 vector } ggm_keys_0_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name ggm_keys_0_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_0_6_0_out \
    op interface \
    ports { ggm_keys_0_6_0_out { O 128 vector } ggm_keys_0_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name ggm_keys_1_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_1_1_0_out \
    op interface \
    ports { ggm_keys_1_1_0_out { O 128 vector } ggm_keys_1_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name ggm_keys_1_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_1_2_0_out \
    op interface \
    ports { ggm_keys_1_2_0_out { O 128 vector } ggm_keys_1_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name ggm_keys_1_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_1_3_0_out \
    op interface \
    ports { ggm_keys_1_3_0_out { O 128 vector } ggm_keys_1_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name ggm_keys_1_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_1_4_0_out \
    op interface \
    ports { ggm_keys_1_4_0_out { O 128 vector } ggm_keys_1_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name ggm_keys_1_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_1_5_0_out \
    op interface \
    ports { ggm_keys_1_5_0_out { O 128 vector } ggm_keys_1_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name ggm_keys_1_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_1_6_0_out \
    op interface \
    ports { ggm_keys_1_6_0_out { O 128 vector } ggm_keys_1_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name ggm_keys_2_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_2_1_0_out \
    op interface \
    ports { ggm_keys_2_1_0_out { O 128 vector } ggm_keys_2_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name ggm_keys_2_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_2_2_0_out \
    op interface \
    ports { ggm_keys_2_2_0_out { O 128 vector } ggm_keys_2_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name ggm_keys_2_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_2_3_0_out \
    op interface \
    ports { ggm_keys_2_3_0_out { O 128 vector } ggm_keys_2_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name ggm_keys_2_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_2_4_0_out \
    op interface \
    ports { ggm_keys_2_4_0_out { O 128 vector } ggm_keys_2_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name ggm_keys_2_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_2_5_0_out \
    op interface \
    ports { ggm_keys_2_5_0_out { O 128 vector } ggm_keys_2_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name ggm_keys_2_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_2_6_0_out \
    op interface \
    ports { ggm_keys_2_6_0_out { O 128 vector } ggm_keys_2_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name ggm_keys_3_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_3_1_0_out \
    op interface \
    ports { ggm_keys_3_1_0_out { O 128 vector } ggm_keys_3_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name ggm_keys_3_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_3_2_0_out \
    op interface \
    ports { ggm_keys_3_2_0_out { O 128 vector } ggm_keys_3_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name ggm_keys_3_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_3_3_0_out \
    op interface \
    ports { ggm_keys_3_3_0_out { O 128 vector } ggm_keys_3_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name ggm_keys_3_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_3_4_0_out \
    op interface \
    ports { ggm_keys_3_4_0_out { O 128 vector } ggm_keys_3_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name ggm_keys_3_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_3_5_0_out \
    op interface \
    ports { ggm_keys_3_5_0_out { O 128 vector } ggm_keys_3_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name ggm_keys_3_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_3_6_0_out \
    op interface \
    ports { ggm_keys_3_6_0_out { O 128 vector } ggm_keys_3_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name ggm_keys_4_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_4_1_0_out \
    op interface \
    ports { ggm_keys_4_1_0_out { O 128 vector } ggm_keys_4_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name ggm_keys_4_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_4_2_0_out \
    op interface \
    ports { ggm_keys_4_2_0_out { O 128 vector } ggm_keys_4_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name ggm_keys_4_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_4_3_0_out \
    op interface \
    ports { ggm_keys_4_3_0_out { O 128 vector } ggm_keys_4_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name ggm_keys_4_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_4_4_0_out \
    op interface \
    ports { ggm_keys_4_4_0_out { O 128 vector } ggm_keys_4_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name ggm_keys_4_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_4_5_0_out \
    op interface \
    ports { ggm_keys_4_5_0_out { O 128 vector } ggm_keys_4_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name ggm_keys_4_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_4_6_0_out \
    op interface \
    ports { ggm_keys_4_6_0_out { O 128 vector } ggm_keys_4_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name ggm_keys_5_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_5_1_0_out \
    op interface \
    ports { ggm_keys_5_1_0_out { O 128 vector } ggm_keys_5_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name ggm_keys_5_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_5_2_0_out \
    op interface \
    ports { ggm_keys_5_2_0_out { O 128 vector } ggm_keys_5_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name ggm_keys_5_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_5_3_0_out \
    op interface \
    ports { ggm_keys_5_3_0_out { O 128 vector } ggm_keys_5_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name ggm_keys_5_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_5_4_0_out \
    op interface \
    ports { ggm_keys_5_4_0_out { O 128 vector } ggm_keys_5_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name ggm_keys_5_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_5_5_0_out \
    op interface \
    ports { ggm_keys_5_5_0_out { O 128 vector } ggm_keys_5_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name ggm_keys_5_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_5_6_0_out \
    op interface \
    ports { ggm_keys_5_6_0_out { O 128 vector } ggm_keys_5_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name ggm_keys_6_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_6_1_0_out \
    op interface \
    ports { ggm_keys_6_1_0_out { O 128 vector } ggm_keys_6_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name ggm_keys_6_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_6_2_0_out \
    op interface \
    ports { ggm_keys_6_2_0_out { O 128 vector } ggm_keys_6_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name ggm_keys_6_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_6_3_0_out \
    op interface \
    ports { ggm_keys_6_3_0_out { O 128 vector } ggm_keys_6_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name ggm_keys_6_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_6_4_0_out \
    op interface \
    ports { ggm_keys_6_4_0_out { O 128 vector } ggm_keys_6_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name ggm_keys_6_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_6_5_0_out \
    op interface \
    ports { ggm_keys_6_5_0_out { O 128 vector } ggm_keys_6_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name ggm_keys_6_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_6_6_0_out \
    op interface \
    ports { ggm_keys_6_6_0_out { O 128 vector } ggm_keys_6_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name ggm_keys_7_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_7_1_0_out \
    op interface \
    ports { ggm_keys_7_1_0_out { O 128 vector } ggm_keys_7_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name ggm_keys_7_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_7_2_0_out \
    op interface \
    ports { ggm_keys_7_2_0_out { O 128 vector } ggm_keys_7_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name ggm_keys_7_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_7_3_0_out \
    op interface \
    ports { ggm_keys_7_3_0_out { O 128 vector } ggm_keys_7_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name ggm_keys_7_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_7_4_0_out \
    op interface \
    ports { ggm_keys_7_4_0_out { O 128 vector } ggm_keys_7_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name ggm_keys_7_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_7_5_0_out \
    op interface \
    ports { ggm_keys_7_5_0_out { O 128 vector } ggm_keys_7_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name ggm_keys_7_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_7_6_0_out \
    op interface \
    ports { ggm_keys_7_6_0_out { O 128 vector } ggm_keys_7_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name ggm_keys_8_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_8_1_0_out \
    op interface \
    ports { ggm_keys_8_1_0_out { O 128 vector } ggm_keys_8_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name ggm_keys_8_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_8_2_0_out \
    op interface \
    ports { ggm_keys_8_2_0_out { O 128 vector } ggm_keys_8_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name ggm_keys_8_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_8_3_0_out \
    op interface \
    ports { ggm_keys_8_3_0_out { O 128 vector } ggm_keys_8_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name ggm_keys_8_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_8_4_0_out \
    op interface \
    ports { ggm_keys_8_4_0_out { O 128 vector } ggm_keys_8_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name ggm_keys_8_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_8_5_0_out \
    op interface \
    ports { ggm_keys_8_5_0_out { O 128 vector } ggm_keys_8_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name ggm_keys_8_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_8_6_0_out \
    op interface \
    ports { ggm_keys_8_6_0_out { O 128 vector } ggm_keys_8_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name ggm_keys_9_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_9_1_0_out \
    op interface \
    ports { ggm_keys_9_1_0_out { O 128 vector } ggm_keys_9_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name ggm_keys_9_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_9_2_0_out \
    op interface \
    ports { ggm_keys_9_2_0_out { O 128 vector } ggm_keys_9_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name ggm_keys_9_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_9_3_0_out \
    op interface \
    ports { ggm_keys_9_3_0_out { O 128 vector } ggm_keys_9_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name ggm_keys_9_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_9_4_0_out \
    op interface \
    ports { ggm_keys_9_4_0_out { O 128 vector } ggm_keys_9_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name ggm_keys_9_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_9_5_0_out \
    op interface \
    ports { ggm_keys_9_5_0_out { O 128 vector } ggm_keys_9_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name ggm_keys_9_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_9_6_0_out \
    op interface \
    ports { ggm_keys_9_6_0_out { O 128 vector } ggm_keys_9_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name ggm_keys_10_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_10_1_0_out \
    op interface \
    ports { ggm_keys_10_1_0_out { O 128 vector } ggm_keys_10_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name ggm_keys_10_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_10_2_0_out \
    op interface \
    ports { ggm_keys_10_2_0_out { O 128 vector } ggm_keys_10_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name ggm_keys_10_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_10_3_0_out \
    op interface \
    ports { ggm_keys_10_3_0_out { O 128 vector } ggm_keys_10_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name ggm_keys_10_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_10_4_0_out \
    op interface \
    ports { ggm_keys_10_4_0_out { O 128 vector } ggm_keys_10_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name ggm_keys_10_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_10_5_0_out \
    op interface \
    ports { ggm_keys_10_5_0_out { O 128 vector } ggm_keys_10_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name ggm_keys_10_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_10_6_0_out \
    op interface \
    ports { ggm_keys_10_6_0_out { O 128 vector } ggm_keys_10_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name ggm_keys_11_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_11_1_0_out \
    op interface \
    ports { ggm_keys_11_1_0_out { O 128 vector } ggm_keys_11_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name ggm_keys_11_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_11_2_0_out \
    op interface \
    ports { ggm_keys_11_2_0_out { O 128 vector } ggm_keys_11_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name ggm_keys_11_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_11_3_0_out \
    op interface \
    ports { ggm_keys_11_3_0_out { O 128 vector } ggm_keys_11_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name ggm_keys_11_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_11_4_0_out \
    op interface \
    ports { ggm_keys_11_4_0_out { O 128 vector } ggm_keys_11_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name ggm_keys_11_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_11_5_0_out \
    op interface \
    ports { ggm_keys_11_5_0_out { O 128 vector } ggm_keys_11_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name ggm_keys_11_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_11_6_0_out \
    op interface \
    ports { ggm_keys_11_6_0_out { O 128 vector } ggm_keys_11_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name ggm_keys_12_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_12_1_0_out \
    op interface \
    ports { ggm_keys_12_1_0_out { O 128 vector } ggm_keys_12_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name ggm_keys_12_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_12_2_0_out \
    op interface \
    ports { ggm_keys_12_2_0_out { O 128 vector } ggm_keys_12_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name ggm_keys_12_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_12_3_0_out \
    op interface \
    ports { ggm_keys_12_3_0_out { O 128 vector } ggm_keys_12_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name ggm_keys_12_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_12_4_0_out \
    op interface \
    ports { ggm_keys_12_4_0_out { O 128 vector } ggm_keys_12_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name ggm_keys_12_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_12_5_0_out \
    op interface \
    ports { ggm_keys_12_5_0_out { O 128 vector } ggm_keys_12_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name ggm_keys_12_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_12_6_0_out \
    op interface \
    ports { ggm_keys_12_6_0_out { O 128 vector } ggm_keys_12_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name ggm_keys_13_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_13_1_0_out \
    op interface \
    ports { ggm_keys_13_1_0_out { O 128 vector } ggm_keys_13_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name ggm_keys_13_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_13_2_0_out \
    op interface \
    ports { ggm_keys_13_2_0_out { O 128 vector } ggm_keys_13_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name ggm_keys_13_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_13_3_0_out \
    op interface \
    ports { ggm_keys_13_3_0_out { O 128 vector } ggm_keys_13_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name ggm_keys_13_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_13_4_0_out \
    op interface \
    ports { ggm_keys_13_4_0_out { O 128 vector } ggm_keys_13_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name ggm_keys_13_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_13_5_0_out \
    op interface \
    ports { ggm_keys_13_5_0_out { O 128 vector } ggm_keys_13_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name ggm_keys_13_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_13_6_0_out \
    op interface \
    ports { ggm_keys_13_6_0_out { O 128 vector } ggm_keys_13_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name ggm_keys_14_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_14_1_0_out \
    op interface \
    ports { ggm_keys_14_1_0_out { O 128 vector } ggm_keys_14_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name ggm_keys_14_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_14_2_0_out \
    op interface \
    ports { ggm_keys_14_2_0_out { O 128 vector } ggm_keys_14_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name ggm_keys_14_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_14_3_0_out \
    op interface \
    ports { ggm_keys_14_3_0_out { O 128 vector } ggm_keys_14_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name ggm_keys_14_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_14_4_0_out \
    op interface \
    ports { ggm_keys_14_4_0_out { O 128 vector } ggm_keys_14_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name ggm_keys_14_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_14_5_0_out \
    op interface \
    ports { ggm_keys_14_5_0_out { O 128 vector } ggm_keys_14_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name ggm_keys_14_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_14_6_0_out \
    op interface \
    ports { ggm_keys_14_6_0_out { O 128 vector } ggm_keys_14_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name ggm_keys_15_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_15_1_0_out \
    op interface \
    ports { ggm_keys_15_1_0_out { O 128 vector } ggm_keys_15_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name ggm_keys_15_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_15_2_0_out \
    op interface \
    ports { ggm_keys_15_2_0_out { O 128 vector } ggm_keys_15_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name ggm_keys_15_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_15_3_0_out \
    op interface \
    ports { ggm_keys_15_3_0_out { O 128 vector } ggm_keys_15_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name ggm_keys_15_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_15_4_0_out \
    op interface \
    ports { ggm_keys_15_4_0_out { O 128 vector } ggm_keys_15_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name ggm_keys_15_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_15_5_0_out \
    op interface \
    ports { ggm_keys_15_5_0_out { O 128 vector } ggm_keys_15_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name ggm_keys_15_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_15_6_0_out \
    op interface \
    ports { ggm_keys_15_6_0_out { O 128 vector } ggm_keys_15_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name ggm_keys_16_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_16_1_0_out \
    op interface \
    ports { ggm_keys_16_1_0_out { O 128 vector } ggm_keys_16_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name ggm_keys_16_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_16_2_0_out \
    op interface \
    ports { ggm_keys_16_2_0_out { O 128 vector } ggm_keys_16_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name ggm_keys_16_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_16_3_0_out \
    op interface \
    ports { ggm_keys_16_3_0_out { O 128 vector } ggm_keys_16_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name ggm_keys_16_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_16_4_0_out \
    op interface \
    ports { ggm_keys_16_4_0_out { O 128 vector } ggm_keys_16_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name ggm_keys_16_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_16_5_0_out \
    op interface \
    ports { ggm_keys_16_5_0_out { O 128 vector } ggm_keys_16_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name ggm_keys_16_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_16_6_0_out \
    op interface \
    ports { ggm_keys_16_6_0_out { O 128 vector } ggm_keys_16_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name ggm_keys_17_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_17_1_0_out \
    op interface \
    ports { ggm_keys_17_1_0_out { O 128 vector } ggm_keys_17_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name ggm_keys_17_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_17_2_0_out \
    op interface \
    ports { ggm_keys_17_2_0_out { O 128 vector } ggm_keys_17_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name ggm_keys_17_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_17_3_0_out \
    op interface \
    ports { ggm_keys_17_3_0_out { O 128 vector } ggm_keys_17_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name ggm_keys_17_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_17_4_0_out \
    op interface \
    ports { ggm_keys_17_4_0_out { O 128 vector } ggm_keys_17_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name ggm_keys_17_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_17_5_0_out \
    op interface \
    ports { ggm_keys_17_5_0_out { O 128 vector } ggm_keys_17_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name ggm_keys_17_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_17_6_0_out \
    op interface \
    ports { ggm_keys_17_6_0_out { O 128 vector } ggm_keys_17_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name ggm_keys_18_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_18_1_0_out \
    op interface \
    ports { ggm_keys_18_1_0_out { O 128 vector } ggm_keys_18_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name ggm_keys_18_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_18_2_0_out \
    op interface \
    ports { ggm_keys_18_2_0_out { O 128 vector } ggm_keys_18_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name ggm_keys_18_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_18_3_0_out \
    op interface \
    ports { ggm_keys_18_3_0_out { O 128 vector } ggm_keys_18_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name ggm_keys_18_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_18_4_0_out \
    op interface \
    ports { ggm_keys_18_4_0_out { O 128 vector } ggm_keys_18_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name ggm_keys_18_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_18_5_0_out \
    op interface \
    ports { ggm_keys_18_5_0_out { O 128 vector } ggm_keys_18_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name ggm_keys_18_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_18_6_0_out \
    op interface \
    ports { ggm_keys_18_6_0_out { O 128 vector } ggm_keys_18_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name ggm_keys_19_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_19_1_0_out \
    op interface \
    ports { ggm_keys_19_1_0_out { O 128 vector } ggm_keys_19_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name ggm_keys_19_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_19_2_0_out \
    op interface \
    ports { ggm_keys_19_2_0_out { O 128 vector } ggm_keys_19_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name ggm_keys_19_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_19_3_0_out \
    op interface \
    ports { ggm_keys_19_3_0_out { O 128 vector } ggm_keys_19_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name ggm_keys_19_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_19_4_0_out \
    op interface \
    ports { ggm_keys_19_4_0_out { O 128 vector } ggm_keys_19_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name ggm_keys_19_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_19_5_0_out \
    op interface \
    ports { ggm_keys_19_5_0_out { O 128 vector } ggm_keys_19_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name ggm_keys_19_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_19_6_0_out \
    op interface \
    ports { ggm_keys_19_6_0_out { O 128 vector } ggm_keys_19_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name ggm_keys_20_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_20_1_0_out \
    op interface \
    ports { ggm_keys_20_1_0_out { O 128 vector } ggm_keys_20_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name ggm_keys_20_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_20_2_0_out \
    op interface \
    ports { ggm_keys_20_2_0_out { O 128 vector } ggm_keys_20_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name ggm_keys_20_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_20_3_0_out \
    op interface \
    ports { ggm_keys_20_3_0_out { O 128 vector } ggm_keys_20_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name ggm_keys_20_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_20_4_0_out \
    op interface \
    ports { ggm_keys_20_4_0_out { O 128 vector } ggm_keys_20_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name ggm_keys_20_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_20_5_0_out \
    op interface \
    ports { ggm_keys_20_5_0_out { O 128 vector } ggm_keys_20_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name ggm_keys_20_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_20_6_0_out \
    op interface \
    ports { ggm_keys_20_6_0_out { O 128 vector } ggm_keys_20_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name ggm_keys_21_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_21_1_0_out \
    op interface \
    ports { ggm_keys_21_1_0_out { O 128 vector } ggm_keys_21_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name ggm_keys_21_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_21_2_0_out \
    op interface \
    ports { ggm_keys_21_2_0_out { O 128 vector } ggm_keys_21_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name ggm_keys_21_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_21_3_0_out \
    op interface \
    ports { ggm_keys_21_3_0_out { O 128 vector } ggm_keys_21_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name ggm_keys_21_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_21_4_0_out \
    op interface \
    ports { ggm_keys_21_4_0_out { O 128 vector } ggm_keys_21_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name ggm_keys_21_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_21_5_0_out \
    op interface \
    ports { ggm_keys_21_5_0_out { O 128 vector } ggm_keys_21_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name ggm_keys_21_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_21_6_0_out \
    op interface \
    ports { ggm_keys_21_6_0_out { O 128 vector } ggm_keys_21_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name ggm_keys_22_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_22_1_0_out \
    op interface \
    ports { ggm_keys_22_1_0_out { O 128 vector } ggm_keys_22_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name ggm_keys_22_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_22_2_0_out \
    op interface \
    ports { ggm_keys_22_2_0_out { O 128 vector } ggm_keys_22_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name ggm_keys_22_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_22_3_0_out \
    op interface \
    ports { ggm_keys_22_3_0_out { O 128 vector } ggm_keys_22_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name ggm_keys_22_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_22_4_0_out \
    op interface \
    ports { ggm_keys_22_4_0_out { O 128 vector } ggm_keys_22_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name ggm_keys_22_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_22_5_0_out \
    op interface \
    ports { ggm_keys_22_5_0_out { O 128 vector } ggm_keys_22_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name ggm_keys_22_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_22_6_0_out \
    op interface \
    ports { ggm_keys_22_6_0_out { O 128 vector } ggm_keys_22_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name ggm_keys_23_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_23_1_0_out \
    op interface \
    ports { ggm_keys_23_1_0_out { O 128 vector } ggm_keys_23_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name ggm_keys_23_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_23_2_0_out \
    op interface \
    ports { ggm_keys_23_2_0_out { O 128 vector } ggm_keys_23_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name ggm_keys_23_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_23_3_0_out \
    op interface \
    ports { ggm_keys_23_3_0_out { O 128 vector } ggm_keys_23_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name ggm_keys_23_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_23_4_0_out \
    op interface \
    ports { ggm_keys_23_4_0_out { O 128 vector } ggm_keys_23_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name ggm_keys_23_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_23_5_0_out \
    op interface \
    ports { ggm_keys_23_5_0_out { O 128 vector } ggm_keys_23_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name ggm_keys_23_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_23_6_0_out \
    op interface \
    ports { ggm_keys_23_6_0_out { O 128 vector } ggm_keys_23_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name ggm_keys_24_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_24_1_0_out \
    op interface \
    ports { ggm_keys_24_1_0_out { O 128 vector } ggm_keys_24_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name ggm_keys_24_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_24_2_0_out \
    op interface \
    ports { ggm_keys_24_2_0_out { O 128 vector } ggm_keys_24_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name ggm_keys_24_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_24_3_0_out \
    op interface \
    ports { ggm_keys_24_3_0_out { O 128 vector } ggm_keys_24_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name ggm_keys_24_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_24_4_0_out \
    op interface \
    ports { ggm_keys_24_4_0_out { O 128 vector } ggm_keys_24_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name ggm_keys_24_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_24_5_0_out \
    op interface \
    ports { ggm_keys_24_5_0_out { O 128 vector } ggm_keys_24_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name ggm_keys_24_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_24_6_0_out \
    op interface \
    ports { ggm_keys_24_6_0_out { O 128 vector } ggm_keys_24_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name ggm_keys_25_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_25_1_0_out \
    op interface \
    ports { ggm_keys_25_1_0_out { O 128 vector } ggm_keys_25_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name ggm_keys_25_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_25_2_0_out \
    op interface \
    ports { ggm_keys_25_2_0_out { O 128 vector } ggm_keys_25_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name ggm_keys_25_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_25_3_0_out \
    op interface \
    ports { ggm_keys_25_3_0_out { O 128 vector } ggm_keys_25_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name ggm_keys_25_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_25_4_0_out \
    op interface \
    ports { ggm_keys_25_4_0_out { O 128 vector } ggm_keys_25_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name ggm_keys_25_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_25_5_0_out \
    op interface \
    ports { ggm_keys_25_5_0_out { O 128 vector } ggm_keys_25_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name ggm_keys_25_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_25_6_0_out \
    op interface \
    ports { ggm_keys_25_6_0_out { O 128 vector } ggm_keys_25_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name ggm_keys_26_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_26_1_0_out \
    op interface \
    ports { ggm_keys_26_1_0_out { O 128 vector } ggm_keys_26_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name ggm_keys_26_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_26_2_0_out \
    op interface \
    ports { ggm_keys_26_2_0_out { O 128 vector } ggm_keys_26_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name ggm_keys_26_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_26_3_0_out \
    op interface \
    ports { ggm_keys_26_3_0_out { O 128 vector } ggm_keys_26_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name ggm_keys_26_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_26_4_0_out \
    op interface \
    ports { ggm_keys_26_4_0_out { O 128 vector } ggm_keys_26_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name ggm_keys_26_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_26_5_0_out \
    op interface \
    ports { ggm_keys_26_5_0_out { O 128 vector } ggm_keys_26_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name ggm_keys_26_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_26_6_0_out \
    op interface \
    ports { ggm_keys_26_6_0_out { O 128 vector } ggm_keys_26_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name ggm_keys_27_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_27_1_0_out \
    op interface \
    ports { ggm_keys_27_1_0_out { O 128 vector } ggm_keys_27_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name ggm_keys_27_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_27_2_0_out \
    op interface \
    ports { ggm_keys_27_2_0_out { O 128 vector } ggm_keys_27_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name ggm_keys_27_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_27_3_0_out \
    op interface \
    ports { ggm_keys_27_3_0_out { O 128 vector } ggm_keys_27_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name ggm_keys_27_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_27_4_0_out \
    op interface \
    ports { ggm_keys_27_4_0_out { O 128 vector } ggm_keys_27_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name ggm_keys_27_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_27_5_0_out \
    op interface \
    ports { ggm_keys_27_5_0_out { O 128 vector } ggm_keys_27_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name ggm_keys_27_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_27_6_0_out \
    op interface \
    ports { ggm_keys_27_6_0_out { O 128 vector } ggm_keys_27_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name ggm_keys_28_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_28_1_0_out \
    op interface \
    ports { ggm_keys_28_1_0_out { O 128 vector } ggm_keys_28_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name ggm_keys_28_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_28_2_0_out \
    op interface \
    ports { ggm_keys_28_2_0_out { O 128 vector } ggm_keys_28_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name ggm_keys_28_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_28_3_0_out \
    op interface \
    ports { ggm_keys_28_3_0_out { O 128 vector } ggm_keys_28_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name ggm_keys_28_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_28_4_0_out \
    op interface \
    ports { ggm_keys_28_4_0_out { O 128 vector } ggm_keys_28_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name ggm_keys_28_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_28_5_0_out \
    op interface \
    ports { ggm_keys_28_5_0_out { O 128 vector } ggm_keys_28_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name ggm_keys_28_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_28_6_0_out \
    op interface \
    ports { ggm_keys_28_6_0_out { O 128 vector } ggm_keys_28_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name ggm_keys_29_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_29_1_0_out \
    op interface \
    ports { ggm_keys_29_1_0_out { O 128 vector } ggm_keys_29_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name ggm_keys_29_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_29_2_0_out \
    op interface \
    ports { ggm_keys_29_2_0_out { O 128 vector } ggm_keys_29_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name ggm_keys_29_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_29_3_0_out \
    op interface \
    ports { ggm_keys_29_3_0_out { O 128 vector } ggm_keys_29_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name ggm_keys_29_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_29_4_0_out \
    op interface \
    ports { ggm_keys_29_4_0_out { O 128 vector } ggm_keys_29_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name ggm_keys_29_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_29_5_0_out \
    op interface \
    ports { ggm_keys_29_5_0_out { O 128 vector } ggm_keys_29_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name ggm_keys_29_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_29_6_0_out \
    op interface \
    ports { ggm_keys_29_6_0_out { O 128 vector } ggm_keys_29_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name ggm_keys_30_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_30_1_0_out \
    op interface \
    ports { ggm_keys_30_1_0_out { O 128 vector } ggm_keys_30_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name ggm_keys_30_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_30_2_0_out \
    op interface \
    ports { ggm_keys_30_2_0_out { O 128 vector } ggm_keys_30_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name ggm_keys_30_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_30_3_0_out \
    op interface \
    ports { ggm_keys_30_3_0_out { O 128 vector } ggm_keys_30_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name ggm_keys_30_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_30_4_0_out \
    op interface \
    ports { ggm_keys_30_4_0_out { O 128 vector } ggm_keys_30_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name ggm_keys_30_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_30_5_0_out \
    op interface \
    ports { ggm_keys_30_5_0_out { O 128 vector } ggm_keys_30_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name ggm_keys_30_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_30_6_0_out \
    op interface \
    ports { ggm_keys_30_6_0_out { O 128 vector } ggm_keys_30_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name ggm_keys_31_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_31_1_0_out \
    op interface \
    ports { ggm_keys_31_1_0_out { O 128 vector } ggm_keys_31_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name ggm_keys_31_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_31_2_0_out \
    op interface \
    ports { ggm_keys_31_2_0_out { O 128 vector } ggm_keys_31_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name ggm_keys_31_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_31_3_0_out \
    op interface \
    ports { ggm_keys_31_3_0_out { O 128 vector } ggm_keys_31_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name ggm_keys_31_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_31_4_0_out \
    op interface \
    ports { ggm_keys_31_4_0_out { O 128 vector } ggm_keys_31_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name ggm_keys_31_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_31_5_0_out \
    op interface \
    ports { ggm_keys_31_5_0_out { O 128 vector } ggm_keys_31_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name ggm_keys_31_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_31_6_0_out \
    op interface \
    ports { ggm_keys_31_6_0_out { O 128 vector } ggm_keys_31_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name ggm_keys_32_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_32_1_0_out \
    op interface \
    ports { ggm_keys_32_1_0_out { O 128 vector } ggm_keys_32_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name ggm_keys_32_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_32_2_0_out \
    op interface \
    ports { ggm_keys_32_2_0_out { O 128 vector } ggm_keys_32_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name ggm_keys_32_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_32_3_0_out \
    op interface \
    ports { ggm_keys_32_3_0_out { O 128 vector } ggm_keys_32_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name ggm_keys_32_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_32_4_0_out \
    op interface \
    ports { ggm_keys_32_4_0_out { O 128 vector } ggm_keys_32_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
    name ggm_keys_32_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_32_5_0_out \
    op interface \
    ports { ggm_keys_32_5_0_out { O 128 vector } ggm_keys_32_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 592 \
    name ggm_keys_32_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_32_6_0_out \
    op interface \
    ports { ggm_keys_32_6_0_out { O 128 vector } ggm_keys_32_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 593 \
    name ggm_keys_33_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_33_1_0_out \
    op interface \
    ports { ggm_keys_33_1_0_out { O 128 vector } ggm_keys_33_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 594 \
    name ggm_keys_33_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_33_2_0_out \
    op interface \
    ports { ggm_keys_33_2_0_out { O 128 vector } ggm_keys_33_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 595 \
    name ggm_keys_33_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_33_3_0_out \
    op interface \
    ports { ggm_keys_33_3_0_out { O 128 vector } ggm_keys_33_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 596 \
    name ggm_keys_33_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_33_4_0_out \
    op interface \
    ports { ggm_keys_33_4_0_out { O 128 vector } ggm_keys_33_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 597 \
    name ggm_keys_33_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_33_5_0_out \
    op interface \
    ports { ggm_keys_33_5_0_out { O 128 vector } ggm_keys_33_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 598 \
    name ggm_keys_33_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_33_6_0_out \
    op interface \
    ports { ggm_keys_33_6_0_out { O 128 vector } ggm_keys_33_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 599 \
    name ggm_keys_34_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_34_1_0_out \
    op interface \
    ports { ggm_keys_34_1_0_out { O 128 vector } ggm_keys_34_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 600 \
    name ggm_keys_34_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_34_2_0_out \
    op interface \
    ports { ggm_keys_34_2_0_out { O 128 vector } ggm_keys_34_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name ggm_keys_34_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_34_3_0_out \
    op interface \
    ports { ggm_keys_34_3_0_out { O 128 vector } ggm_keys_34_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name ggm_keys_34_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_34_4_0_out \
    op interface \
    ports { ggm_keys_34_4_0_out { O 128 vector } ggm_keys_34_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
    name ggm_keys_34_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_34_5_0_out \
    op interface \
    ports { ggm_keys_34_5_0_out { O 128 vector } ggm_keys_34_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 604 \
    name ggm_keys_34_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_34_6_0_out \
    op interface \
    ports { ggm_keys_34_6_0_out { O 128 vector } ggm_keys_34_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 605 \
    name ggm_keys_35_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_35_1_0_out \
    op interface \
    ports { ggm_keys_35_1_0_out { O 128 vector } ggm_keys_35_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 606 \
    name ggm_keys_35_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_35_2_0_out \
    op interface \
    ports { ggm_keys_35_2_0_out { O 128 vector } ggm_keys_35_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 607 \
    name ggm_keys_35_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_35_3_0_out \
    op interface \
    ports { ggm_keys_35_3_0_out { O 128 vector } ggm_keys_35_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 608 \
    name ggm_keys_35_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_35_4_0_out \
    op interface \
    ports { ggm_keys_35_4_0_out { O 128 vector } ggm_keys_35_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 609 \
    name ggm_keys_35_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_35_5_0_out \
    op interface \
    ports { ggm_keys_35_5_0_out { O 128 vector } ggm_keys_35_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 610 \
    name ggm_keys_35_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_35_6_0_out \
    op interface \
    ports { ggm_keys_35_6_0_out { O 128 vector } ggm_keys_35_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 611 \
    name ggm_keys_36_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_36_1_0_out \
    op interface \
    ports { ggm_keys_36_1_0_out { O 128 vector } ggm_keys_36_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 612 \
    name ggm_keys_36_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_36_2_0_out \
    op interface \
    ports { ggm_keys_36_2_0_out { O 128 vector } ggm_keys_36_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 613 \
    name ggm_keys_36_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_36_3_0_out \
    op interface \
    ports { ggm_keys_36_3_0_out { O 128 vector } ggm_keys_36_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 614 \
    name ggm_keys_36_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_36_4_0_out \
    op interface \
    ports { ggm_keys_36_4_0_out { O 128 vector } ggm_keys_36_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 615 \
    name ggm_keys_36_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_36_5_0_out \
    op interface \
    ports { ggm_keys_36_5_0_out { O 128 vector } ggm_keys_36_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 616 \
    name ggm_keys_36_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_36_6_0_out \
    op interface \
    ports { ggm_keys_36_6_0_out { O 128 vector } ggm_keys_36_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 617 \
    name ggm_keys_37_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_37_1_0_out \
    op interface \
    ports { ggm_keys_37_1_0_out { O 128 vector } ggm_keys_37_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 618 \
    name ggm_keys_37_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_37_2_0_out \
    op interface \
    ports { ggm_keys_37_2_0_out { O 128 vector } ggm_keys_37_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 619 \
    name ggm_keys_37_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_37_3_0_out \
    op interface \
    ports { ggm_keys_37_3_0_out { O 128 vector } ggm_keys_37_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 620 \
    name ggm_keys_37_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_37_4_0_out \
    op interface \
    ports { ggm_keys_37_4_0_out { O 128 vector } ggm_keys_37_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 621 \
    name ggm_keys_37_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_37_5_0_out \
    op interface \
    ports { ggm_keys_37_5_0_out { O 128 vector } ggm_keys_37_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 622 \
    name ggm_keys_37_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_37_6_0_out \
    op interface \
    ports { ggm_keys_37_6_0_out { O 128 vector } ggm_keys_37_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 623 \
    name ggm_keys_38_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_38_1_0_out \
    op interface \
    ports { ggm_keys_38_1_0_out { O 128 vector } ggm_keys_38_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 624 \
    name ggm_keys_38_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_38_2_0_out \
    op interface \
    ports { ggm_keys_38_2_0_out { O 128 vector } ggm_keys_38_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 625 \
    name ggm_keys_38_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_38_3_0_out \
    op interface \
    ports { ggm_keys_38_3_0_out { O 128 vector } ggm_keys_38_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 626 \
    name ggm_keys_38_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_38_4_0_out \
    op interface \
    ports { ggm_keys_38_4_0_out { O 128 vector } ggm_keys_38_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 627 \
    name ggm_keys_38_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_38_5_0_out \
    op interface \
    ports { ggm_keys_38_5_0_out { O 128 vector } ggm_keys_38_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 628 \
    name ggm_keys_38_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_38_6_0_out \
    op interface \
    ports { ggm_keys_38_6_0_out { O 128 vector } ggm_keys_38_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 629 \
    name ggm_keys_39_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_39_1_0_out \
    op interface \
    ports { ggm_keys_39_1_0_out { O 128 vector } ggm_keys_39_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 630 \
    name ggm_keys_39_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_39_2_0_out \
    op interface \
    ports { ggm_keys_39_2_0_out { O 128 vector } ggm_keys_39_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 631 \
    name ggm_keys_39_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_39_3_0_out \
    op interface \
    ports { ggm_keys_39_3_0_out { O 128 vector } ggm_keys_39_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 632 \
    name ggm_keys_39_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_39_4_0_out \
    op interface \
    ports { ggm_keys_39_4_0_out { O 128 vector } ggm_keys_39_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name ggm_keys_39_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_39_5_0_out \
    op interface \
    ports { ggm_keys_39_5_0_out { O 128 vector } ggm_keys_39_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name ggm_keys_39_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_39_6_0_out \
    op interface \
    ports { ggm_keys_39_6_0_out { O 128 vector } ggm_keys_39_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 635 \
    name ggm_keys_40_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_40_1_0_out \
    op interface \
    ports { ggm_keys_40_1_0_out { O 128 vector } ggm_keys_40_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 636 \
    name ggm_keys_40_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_40_2_0_out \
    op interface \
    ports { ggm_keys_40_2_0_out { O 128 vector } ggm_keys_40_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 637 \
    name ggm_keys_40_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_40_3_0_out \
    op interface \
    ports { ggm_keys_40_3_0_out { O 128 vector } ggm_keys_40_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 638 \
    name ggm_keys_40_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_40_4_0_out \
    op interface \
    ports { ggm_keys_40_4_0_out { O 128 vector } ggm_keys_40_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 639 \
    name ggm_keys_40_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_40_5_0_out \
    op interface \
    ports { ggm_keys_40_5_0_out { O 128 vector } ggm_keys_40_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 640 \
    name ggm_keys_40_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_40_6_0_out \
    op interface \
    ports { ggm_keys_40_6_0_out { O 128 vector } ggm_keys_40_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 641 \
    name ggm_keys_41_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_41_1_0_out \
    op interface \
    ports { ggm_keys_41_1_0_out { O 128 vector } ggm_keys_41_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 642 \
    name ggm_keys_41_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_41_2_0_out \
    op interface \
    ports { ggm_keys_41_2_0_out { O 128 vector } ggm_keys_41_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 643 \
    name ggm_keys_41_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_41_3_0_out \
    op interface \
    ports { ggm_keys_41_3_0_out { O 128 vector } ggm_keys_41_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 644 \
    name ggm_keys_41_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_41_4_0_out \
    op interface \
    ports { ggm_keys_41_4_0_out { O 128 vector } ggm_keys_41_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 645 \
    name ggm_keys_41_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_41_5_0_out \
    op interface \
    ports { ggm_keys_41_5_0_out { O 128 vector } ggm_keys_41_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 646 \
    name ggm_keys_41_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_41_6_0_out \
    op interface \
    ports { ggm_keys_41_6_0_out { O 128 vector } ggm_keys_41_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 647 \
    name ggm_keys_42_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_42_1_0_out \
    op interface \
    ports { ggm_keys_42_1_0_out { O 128 vector } ggm_keys_42_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 648 \
    name ggm_keys_42_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_42_2_0_out \
    op interface \
    ports { ggm_keys_42_2_0_out { O 128 vector } ggm_keys_42_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 649 \
    name ggm_keys_42_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_42_3_0_out \
    op interface \
    ports { ggm_keys_42_3_0_out { O 128 vector } ggm_keys_42_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 650 \
    name ggm_keys_42_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_42_4_0_out \
    op interface \
    ports { ggm_keys_42_4_0_out { O 128 vector } ggm_keys_42_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 651 \
    name ggm_keys_42_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_42_5_0_out \
    op interface \
    ports { ggm_keys_42_5_0_out { O 128 vector } ggm_keys_42_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 652 \
    name ggm_keys_42_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_42_6_0_out \
    op interface \
    ports { ggm_keys_42_6_0_out { O 128 vector } ggm_keys_42_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 653 \
    name ggm_keys_43_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_43_1_0_out \
    op interface \
    ports { ggm_keys_43_1_0_out { O 128 vector } ggm_keys_43_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 654 \
    name ggm_keys_43_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_43_2_0_out \
    op interface \
    ports { ggm_keys_43_2_0_out { O 128 vector } ggm_keys_43_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 655 \
    name ggm_keys_43_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_43_3_0_out \
    op interface \
    ports { ggm_keys_43_3_0_out { O 128 vector } ggm_keys_43_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 656 \
    name ggm_keys_43_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_43_4_0_out \
    op interface \
    ports { ggm_keys_43_4_0_out { O 128 vector } ggm_keys_43_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 657 \
    name ggm_keys_43_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_43_5_0_out \
    op interface \
    ports { ggm_keys_43_5_0_out { O 128 vector } ggm_keys_43_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 658 \
    name ggm_keys_43_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_43_6_0_out \
    op interface \
    ports { ggm_keys_43_6_0_out { O 128 vector } ggm_keys_43_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 659 \
    name ggm_keys_44_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_44_1_0_out \
    op interface \
    ports { ggm_keys_44_1_0_out { O 128 vector } ggm_keys_44_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 660 \
    name ggm_keys_44_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_44_2_0_out \
    op interface \
    ports { ggm_keys_44_2_0_out { O 128 vector } ggm_keys_44_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 661 \
    name ggm_keys_44_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_44_3_0_out \
    op interface \
    ports { ggm_keys_44_3_0_out { O 128 vector } ggm_keys_44_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 662 \
    name ggm_keys_44_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_44_4_0_out \
    op interface \
    ports { ggm_keys_44_4_0_out { O 128 vector } ggm_keys_44_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 663 \
    name ggm_keys_44_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_44_5_0_out \
    op interface \
    ports { ggm_keys_44_5_0_out { O 128 vector } ggm_keys_44_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 664 \
    name ggm_keys_44_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_44_6_0_out \
    op interface \
    ports { ggm_keys_44_6_0_out { O 128 vector } ggm_keys_44_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 665 \
    name ggm_keys_45_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_45_1_0_out \
    op interface \
    ports { ggm_keys_45_1_0_out { O 128 vector } ggm_keys_45_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 666 \
    name ggm_keys_45_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_45_2_0_out \
    op interface \
    ports { ggm_keys_45_2_0_out { O 128 vector } ggm_keys_45_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 667 \
    name ggm_keys_45_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_45_3_0_out \
    op interface \
    ports { ggm_keys_45_3_0_out { O 128 vector } ggm_keys_45_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 668 \
    name ggm_keys_45_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_45_4_0_out \
    op interface \
    ports { ggm_keys_45_4_0_out { O 128 vector } ggm_keys_45_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 669 \
    name ggm_keys_45_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_45_5_0_out \
    op interface \
    ports { ggm_keys_45_5_0_out { O 128 vector } ggm_keys_45_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 670 \
    name ggm_keys_45_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_45_6_0_out \
    op interface \
    ports { ggm_keys_45_6_0_out { O 128 vector } ggm_keys_45_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 671 \
    name ggm_keys_46_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_46_1_0_out \
    op interface \
    ports { ggm_keys_46_1_0_out { O 128 vector } ggm_keys_46_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 672 \
    name ggm_keys_46_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_46_2_0_out \
    op interface \
    ports { ggm_keys_46_2_0_out { O 128 vector } ggm_keys_46_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 673 \
    name ggm_keys_46_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_46_3_0_out \
    op interface \
    ports { ggm_keys_46_3_0_out { O 128 vector } ggm_keys_46_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 674 \
    name ggm_keys_46_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_46_4_0_out \
    op interface \
    ports { ggm_keys_46_4_0_out { O 128 vector } ggm_keys_46_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 675 \
    name ggm_keys_46_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_46_5_0_out \
    op interface \
    ports { ggm_keys_46_5_0_out { O 128 vector } ggm_keys_46_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 676 \
    name ggm_keys_46_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_46_6_0_out \
    op interface \
    ports { ggm_keys_46_6_0_out { O 128 vector } ggm_keys_46_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 677 \
    name ggm_keys_47_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_47_1_0_out \
    op interface \
    ports { ggm_keys_47_1_0_out { O 128 vector } ggm_keys_47_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 678 \
    name ggm_keys_47_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_47_2_0_out \
    op interface \
    ports { ggm_keys_47_2_0_out { O 128 vector } ggm_keys_47_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 679 \
    name ggm_keys_47_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_47_3_0_out \
    op interface \
    ports { ggm_keys_47_3_0_out { O 128 vector } ggm_keys_47_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 680 \
    name ggm_keys_47_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_47_4_0_out \
    op interface \
    ports { ggm_keys_47_4_0_out { O 128 vector } ggm_keys_47_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 681 \
    name ggm_keys_47_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_47_5_0_out \
    op interface \
    ports { ggm_keys_47_5_0_out { O 128 vector } ggm_keys_47_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 682 \
    name ggm_keys_47_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_47_6_0_out \
    op interface \
    ports { ggm_keys_47_6_0_out { O 128 vector } ggm_keys_47_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 683 \
    name ggm_keys_48_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_48_1_0_out \
    op interface \
    ports { ggm_keys_48_1_0_out { O 128 vector } ggm_keys_48_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 684 \
    name ggm_keys_48_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_48_2_0_out \
    op interface \
    ports { ggm_keys_48_2_0_out { O 128 vector } ggm_keys_48_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 685 \
    name ggm_keys_48_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_48_3_0_out \
    op interface \
    ports { ggm_keys_48_3_0_out { O 128 vector } ggm_keys_48_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 686 \
    name ggm_keys_48_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_48_4_0_out \
    op interface \
    ports { ggm_keys_48_4_0_out { O 128 vector } ggm_keys_48_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 687 \
    name ggm_keys_48_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_48_5_0_out \
    op interface \
    ports { ggm_keys_48_5_0_out { O 128 vector } ggm_keys_48_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 688 \
    name ggm_keys_48_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_48_6_0_out \
    op interface \
    ports { ggm_keys_48_6_0_out { O 128 vector } ggm_keys_48_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 689 \
    name ggm_keys_49_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_49_1_0_out \
    op interface \
    ports { ggm_keys_49_1_0_out { O 128 vector } ggm_keys_49_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 690 \
    name ggm_keys_49_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_49_2_0_out \
    op interface \
    ports { ggm_keys_49_2_0_out { O 128 vector } ggm_keys_49_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 691 \
    name ggm_keys_49_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_49_3_0_out \
    op interface \
    ports { ggm_keys_49_3_0_out { O 128 vector } ggm_keys_49_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 692 \
    name ggm_keys_49_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_49_4_0_out \
    op interface \
    ports { ggm_keys_49_4_0_out { O 128 vector } ggm_keys_49_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 693 \
    name ggm_keys_49_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_49_5_0_out \
    op interface \
    ports { ggm_keys_49_5_0_out { O 128 vector } ggm_keys_49_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 694 \
    name ggm_keys_49_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_49_6_0_out \
    op interface \
    ports { ggm_keys_49_6_0_out { O 128 vector } ggm_keys_49_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 695 \
    name ggm_keys_50_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_50_1_0_out \
    op interface \
    ports { ggm_keys_50_1_0_out { O 128 vector } ggm_keys_50_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 696 \
    name ggm_keys_50_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_50_2_0_out \
    op interface \
    ports { ggm_keys_50_2_0_out { O 128 vector } ggm_keys_50_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 697 \
    name ggm_keys_50_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_50_3_0_out \
    op interface \
    ports { ggm_keys_50_3_0_out { O 128 vector } ggm_keys_50_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 698 \
    name ggm_keys_50_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_50_4_0_out \
    op interface \
    ports { ggm_keys_50_4_0_out { O 128 vector } ggm_keys_50_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 699 \
    name ggm_keys_50_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_50_5_0_out \
    op interface \
    ports { ggm_keys_50_5_0_out { O 128 vector } ggm_keys_50_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 700 \
    name ggm_keys_50_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_50_6_0_out \
    op interface \
    ports { ggm_keys_50_6_0_out { O 128 vector } ggm_keys_50_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 701 \
    name ggm_keys_51_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_51_1_0_out \
    op interface \
    ports { ggm_keys_51_1_0_out { O 128 vector } ggm_keys_51_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 702 \
    name ggm_keys_51_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_51_2_0_out \
    op interface \
    ports { ggm_keys_51_2_0_out { O 128 vector } ggm_keys_51_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 703 \
    name ggm_keys_51_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_51_3_0_out \
    op interface \
    ports { ggm_keys_51_3_0_out { O 128 vector } ggm_keys_51_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 704 \
    name ggm_keys_51_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_51_4_0_out \
    op interface \
    ports { ggm_keys_51_4_0_out { O 128 vector } ggm_keys_51_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 705 \
    name ggm_keys_51_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_51_5_0_out \
    op interface \
    ports { ggm_keys_51_5_0_out { O 128 vector } ggm_keys_51_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 706 \
    name ggm_keys_51_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_51_6_0_out \
    op interface \
    ports { ggm_keys_51_6_0_out { O 128 vector } ggm_keys_51_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 707 \
    name ggm_keys_52_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_52_1_0_out \
    op interface \
    ports { ggm_keys_52_1_0_out { O 128 vector } ggm_keys_52_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 708 \
    name ggm_keys_52_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_52_2_0_out \
    op interface \
    ports { ggm_keys_52_2_0_out { O 128 vector } ggm_keys_52_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 709 \
    name ggm_keys_52_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_52_3_0_out \
    op interface \
    ports { ggm_keys_52_3_0_out { O 128 vector } ggm_keys_52_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 710 \
    name ggm_keys_52_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_52_4_0_out \
    op interface \
    ports { ggm_keys_52_4_0_out { O 128 vector } ggm_keys_52_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 711 \
    name ggm_keys_52_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_52_5_0_out \
    op interface \
    ports { ggm_keys_52_5_0_out { O 128 vector } ggm_keys_52_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 712 \
    name ggm_keys_52_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_52_6_0_out \
    op interface \
    ports { ggm_keys_52_6_0_out { O 128 vector } ggm_keys_52_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 713 \
    name ggm_keys_53_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_53_1_0_out \
    op interface \
    ports { ggm_keys_53_1_0_out { O 128 vector } ggm_keys_53_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 714 \
    name ggm_keys_53_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_53_2_0_out \
    op interface \
    ports { ggm_keys_53_2_0_out { O 128 vector } ggm_keys_53_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 715 \
    name ggm_keys_53_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_53_3_0_out \
    op interface \
    ports { ggm_keys_53_3_0_out { O 128 vector } ggm_keys_53_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 716 \
    name ggm_keys_53_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_53_4_0_out \
    op interface \
    ports { ggm_keys_53_4_0_out { O 128 vector } ggm_keys_53_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 717 \
    name ggm_keys_53_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_53_5_0_out \
    op interface \
    ports { ggm_keys_53_5_0_out { O 128 vector } ggm_keys_53_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 718 \
    name ggm_keys_53_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_53_6_0_out \
    op interface \
    ports { ggm_keys_53_6_0_out { O 128 vector } ggm_keys_53_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name ggm_keys_54_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_54_1_0_out \
    op interface \
    ports { ggm_keys_54_1_0_out { O 128 vector } ggm_keys_54_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 720 \
    name ggm_keys_54_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_54_2_0_out \
    op interface \
    ports { ggm_keys_54_2_0_out { O 128 vector } ggm_keys_54_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name ggm_keys_54_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_54_3_0_out \
    op interface \
    ports { ggm_keys_54_3_0_out { O 128 vector } ggm_keys_54_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 722 \
    name ggm_keys_54_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_54_4_0_out \
    op interface \
    ports { ggm_keys_54_4_0_out { O 128 vector } ggm_keys_54_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name ggm_keys_54_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_54_5_0_out \
    op interface \
    ports { ggm_keys_54_5_0_out { O 128 vector } ggm_keys_54_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 724 \
    name ggm_keys_54_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_54_6_0_out \
    op interface \
    ports { ggm_keys_54_6_0_out { O 128 vector } ggm_keys_54_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name ggm_keys_55_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_55_1_0_out \
    op interface \
    ports { ggm_keys_55_1_0_out { O 128 vector } ggm_keys_55_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 726 \
    name ggm_keys_55_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_55_2_0_out \
    op interface \
    ports { ggm_keys_55_2_0_out { O 128 vector } ggm_keys_55_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name ggm_keys_55_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_55_3_0_out \
    op interface \
    ports { ggm_keys_55_3_0_out { O 128 vector } ggm_keys_55_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 728 \
    name ggm_keys_55_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_55_4_0_out \
    op interface \
    ports { ggm_keys_55_4_0_out { O 128 vector } ggm_keys_55_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 729 \
    name ggm_keys_55_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_55_5_0_out \
    op interface \
    ports { ggm_keys_55_5_0_out { O 128 vector } ggm_keys_55_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name ggm_keys_55_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_55_6_0_out \
    op interface \
    ports { ggm_keys_55_6_0_out { O 128 vector } ggm_keys_55_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name ggm_keys_56_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_56_1_0_out \
    op interface \
    ports { ggm_keys_56_1_0_out { O 128 vector } ggm_keys_56_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name ggm_keys_56_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_56_2_0_out \
    op interface \
    ports { ggm_keys_56_2_0_out { O 128 vector } ggm_keys_56_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name ggm_keys_56_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_56_3_0_out \
    op interface \
    ports { ggm_keys_56_3_0_out { O 128 vector } ggm_keys_56_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name ggm_keys_56_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_56_4_0_out \
    op interface \
    ports { ggm_keys_56_4_0_out { O 128 vector } ggm_keys_56_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name ggm_keys_56_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_56_5_0_out \
    op interface \
    ports { ggm_keys_56_5_0_out { O 128 vector } ggm_keys_56_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 736 \
    name ggm_keys_56_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_56_6_0_out \
    op interface \
    ports { ggm_keys_56_6_0_out { O 128 vector } ggm_keys_56_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name ggm_keys_57_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_57_1_0_out \
    op interface \
    ports { ggm_keys_57_1_0_out { O 128 vector } ggm_keys_57_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 738 \
    name ggm_keys_57_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_57_2_0_out \
    op interface \
    ports { ggm_keys_57_2_0_out { O 128 vector } ggm_keys_57_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name ggm_keys_57_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_57_3_0_out \
    op interface \
    ports { ggm_keys_57_3_0_out { O 128 vector } ggm_keys_57_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 740 \
    name ggm_keys_57_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_57_4_0_out \
    op interface \
    ports { ggm_keys_57_4_0_out { O 128 vector } ggm_keys_57_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name ggm_keys_57_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_57_5_0_out \
    op interface \
    ports { ggm_keys_57_5_0_out { O 128 vector } ggm_keys_57_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 742 \
    name ggm_keys_57_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_57_6_0_out \
    op interface \
    ports { ggm_keys_57_6_0_out { O 128 vector } ggm_keys_57_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name ggm_keys_58_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_58_1_0_out \
    op interface \
    ports { ggm_keys_58_1_0_out { O 128 vector } ggm_keys_58_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 744 \
    name ggm_keys_58_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_58_2_0_out \
    op interface \
    ports { ggm_keys_58_2_0_out { O 128 vector } ggm_keys_58_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name ggm_keys_58_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_58_3_0_out \
    op interface \
    ports { ggm_keys_58_3_0_out { O 128 vector } ggm_keys_58_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name ggm_keys_58_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_58_4_0_out \
    op interface \
    ports { ggm_keys_58_4_0_out { O 128 vector } ggm_keys_58_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name ggm_keys_58_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_58_5_0_out \
    op interface \
    ports { ggm_keys_58_5_0_out { O 128 vector } ggm_keys_58_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 748 \
    name ggm_keys_58_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_58_6_0_out \
    op interface \
    ports { ggm_keys_58_6_0_out { O 128 vector } ggm_keys_58_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name ggm_keys_59_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_59_1_0_out \
    op interface \
    ports { ggm_keys_59_1_0_out { O 128 vector } ggm_keys_59_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 750 \
    name ggm_keys_59_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_59_2_0_out \
    op interface \
    ports { ggm_keys_59_2_0_out { O 128 vector } ggm_keys_59_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name ggm_keys_59_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_59_3_0_out \
    op interface \
    ports { ggm_keys_59_3_0_out { O 128 vector } ggm_keys_59_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 752 \
    name ggm_keys_59_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_59_4_0_out \
    op interface \
    ports { ggm_keys_59_4_0_out { O 128 vector } ggm_keys_59_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name ggm_keys_59_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_59_5_0_out \
    op interface \
    ports { ggm_keys_59_5_0_out { O 128 vector } ggm_keys_59_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 754 \
    name ggm_keys_59_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_59_6_0_out \
    op interface \
    ports { ggm_keys_59_6_0_out { O 128 vector } ggm_keys_59_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name ggm_keys_60_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_60_1_0_out \
    op interface \
    ports { ggm_keys_60_1_0_out { O 128 vector } ggm_keys_60_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name ggm_keys_60_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_60_2_0_out \
    op interface \
    ports { ggm_keys_60_2_0_out { O 128 vector } ggm_keys_60_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name ggm_keys_60_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_60_3_0_out \
    op interface \
    ports { ggm_keys_60_3_0_out { O 128 vector } ggm_keys_60_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name ggm_keys_60_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_60_4_0_out \
    op interface \
    ports { ggm_keys_60_4_0_out { O 128 vector } ggm_keys_60_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name ggm_keys_60_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_60_5_0_out \
    op interface \
    ports { ggm_keys_60_5_0_out { O 128 vector } ggm_keys_60_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name ggm_keys_60_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_60_6_0_out \
    op interface \
    ports { ggm_keys_60_6_0_out { O 128 vector } ggm_keys_60_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name ggm_keys_61_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_61_1_0_out \
    op interface \
    ports { ggm_keys_61_1_0_out { O 128 vector } ggm_keys_61_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name ggm_keys_61_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_61_2_0_out \
    op interface \
    ports { ggm_keys_61_2_0_out { O 128 vector } ggm_keys_61_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name ggm_keys_61_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_61_3_0_out \
    op interface \
    ports { ggm_keys_61_3_0_out { O 128 vector } ggm_keys_61_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name ggm_keys_61_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_61_4_0_out \
    op interface \
    ports { ggm_keys_61_4_0_out { O 128 vector } ggm_keys_61_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name ggm_keys_61_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_61_5_0_out \
    op interface \
    ports { ggm_keys_61_5_0_out { O 128 vector } ggm_keys_61_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 766 \
    name ggm_keys_61_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_61_6_0_out \
    op interface \
    ports { ggm_keys_61_6_0_out { O 128 vector } ggm_keys_61_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name ggm_keys_62_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_62_1_0_out \
    op interface \
    ports { ggm_keys_62_1_0_out { O 128 vector } ggm_keys_62_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name ggm_keys_62_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_62_2_0_out \
    op interface \
    ports { ggm_keys_62_2_0_out { O 128 vector } ggm_keys_62_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name ggm_keys_62_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_62_3_0_out \
    op interface \
    ports { ggm_keys_62_3_0_out { O 128 vector } ggm_keys_62_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name ggm_keys_62_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_62_4_0_out \
    op interface \
    ports { ggm_keys_62_4_0_out { O 128 vector } ggm_keys_62_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name ggm_keys_62_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_62_5_0_out \
    op interface \
    ports { ggm_keys_62_5_0_out { O 128 vector } ggm_keys_62_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name ggm_keys_62_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_62_6_0_out \
    op interface \
    ports { ggm_keys_62_6_0_out { O 128 vector } ggm_keys_62_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name ggm_keys_63_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_63_1_0_out \
    op interface \
    ports { ggm_keys_63_1_0_out { O 128 vector } ggm_keys_63_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name ggm_keys_63_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_63_2_0_out \
    op interface \
    ports { ggm_keys_63_2_0_out { O 128 vector } ggm_keys_63_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name ggm_keys_63_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_63_3_0_out \
    op interface \
    ports { ggm_keys_63_3_0_out { O 128 vector } ggm_keys_63_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name ggm_keys_63_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_63_4_0_out \
    op interface \
    ports { ggm_keys_63_4_0_out { O 128 vector } ggm_keys_63_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name ggm_keys_63_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_63_5_0_out \
    op interface \
    ports { ggm_keys_63_5_0_out { O 128 vector } ggm_keys_63_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name ggm_keys_63_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ggm_keys_63_6_0_out \
    op interface \
    ports { ggm_keys_63_6_0_out { O 128 vector } ggm_keys_63_6_0_out_ap_vld { O 1 bit } } \
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


