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
    id 820 \
    name r_strm_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_strm_0 \
    op interface \
    ports { r_strm_0_dout { I 256 vector } r_strm_0_empty_n { I 1 bit } r_strm_0_read { O 1 bit } r_strm_0_num_data_valid { I 3 vector } r_strm_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 821 \
    name r_strm_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_strm_1 \
    op interface \
    ports { r_strm_1_dout { I 256 vector } r_strm_1_empty_n { I 1 bit } r_strm_1_read { O 1 bit } r_strm_1_num_data_valid { I 3 vector } r_strm_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 822 \
    name r_strm_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_strm_2 \
    op interface \
    ports { r_strm_2_dout { I 256 vector } r_strm_2_empty_n { I 1 bit } r_strm_2_read { O 1 bit } r_strm_2_num_data_valid { I 3 vector } r_strm_2_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 823 \
    name r_strm_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_strm_3 \
    op interface \
    ports { r_strm_3_dout { I 256 vector } r_strm_3_empty_n { I 1 bit } r_strm_3_read { O 1 bit } r_strm_3_num_data_valid { I 3 vector } r_strm_3_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 824 \
    name u_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_u_strm \
    op interface \
    ports { u_strm_din { O 256 vector } u_strm_full_n { I 1 bit } u_strm_write { O 1 bit } u_strm_num_data_valid { I 32 vector } u_strm_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 825 \
    name v_strm_0_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_0_0 \
    op interface \
    ports { v_strm_0_0_din { O 256 vector } v_strm_0_0_full_n { I 1 bit } v_strm_0_0_write { O 1 bit } v_strm_0_0_num_data_valid { I 32 vector } v_strm_0_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 826 \
    name v_strm_0_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_0_1 \
    op interface \
    ports { v_strm_0_1_din { O 256 vector } v_strm_0_1_full_n { I 1 bit } v_strm_0_1_write { O 1 bit } v_strm_0_1_num_data_valid { I 32 vector } v_strm_0_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 827 \
    name v_strm_1_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_1_0 \
    op interface \
    ports { v_strm_1_0_din { O 256 vector } v_strm_1_0_full_n { I 1 bit } v_strm_1_0_write { O 1 bit } v_strm_1_0_num_data_valid { I 32 vector } v_strm_1_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 828 \
    name v_strm_1_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_1_1 \
    op interface \
    ports { v_strm_1_1_din { O 256 vector } v_strm_1_1_full_n { I 1 bit } v_strm_1_1_write { O 1 bit } v_strm_1_1_num_data_valid { I 32 vector } v_strm_1_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 829 \
    name v_strm_2_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_2_0 \
    op interface \
    ports { v_strm_2_0_din { O 256 vector } v_strm_2_0_full_n { I 1 bit } v_strm_2_0_write { O 1 bit } v_strm_2_0_num_data_valid { I 32 vector } v_strm_2_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 830 \
    name v_strm_2_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_2_1 \
    op interface \
    ports { v_strm_2_1_din { O 256 vector } v_strm_2_1_full_n { I 1 bit } v_strm_2_1_write { O 1 bit } v_strm_2_1_num_data_valid { I 32 vector } v_strm_2_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 831 \
    name v_strm_3_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_3_0 \
    op interface \
    ports { v_strm_3_0_din { O 256 vector } v_strm_3_0_full_n { I 1 bit } v_strm_3_0_write { O 1 bit } v_strm_3_0_num_data_valid { I 32 vector } v_strm_3_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 832 \
    name v_strm_3_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_3_1 \
    op interface \
    ports { v_strm_3_1_din { O 256 vector } v_strm_3_1_full_n { I 1 bit } v_strm_3_1_write { O 1 bit } v_strm_3_1_num_data_valid { I 32 vector } v_strm_3_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 833 \
    name v_strm_4_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_4_0 \
    op interface \
    ports { v_strm_4_0_din { O 256 vector } v_strm_4_0_full_n { I 1 bit } v_strm_4_0_write { O 1 bit } v_strm_4_0_num_data_valid { I 32 vector } v_strm_4_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 834 \
    name v_strm_4_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_4_1 \
    op interface \
    ports { v_strm_4_1_din { O 256 vector } v_strm_4_1_full_n { I 1 bit } v_strm_4_1_write { O 1 bit } v_strm_4_1_num_data_valid { I 32 vector } v_strm_4_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 835 \
    name v_strm_5_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_5_0 \
    op interface \
    ports { v_strm_5_0_din { O 256 vector } v_strm_5_0_full_n { I 1 bit } v_strm_5_0_write { O 1 bit } v_strm_5_0_num_data_valid { I 32 vector } v_strm_5_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 836 \
    name v_strm_5_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_5_1 \
    op interface \
    ports { v_strm_5_1_din { O 256 vector } v_strm_5_1_full_n { I 1 bit } v_strm_5_1_write { O 1 bit } v_strm_5_1_num_data_valid { I 32 vector } v_strm_5_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 837 \
    name v_strm_6_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_6_0 \
    op interface \
    ports { v_strm_6_0_din { O 256 vector } v_strm_6_0_full_n { I 1 bit } v_strm_6_0_write { O 1 bit } v_strm_6_0_num_data_valid { I 32 vector } v_strm_6_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 838 \
    name v_strm_6_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_6_1 \
    op interface \
    ports { v_strm_6_1_din { O 256 vector } v_strm_6_1_full_n { I 1 bit } v_strm_6_1_write { O 1 bit } v_strm_6_1_num_data_valid { I 32 vector } v_strm_6_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 839 \
    name v_strm_7_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_7_0 \
    op interface \
    ports { v_strm_7_0_din { O 256 vector } v_strm_7_0_full_n { I 1 bit } v_strm_7_0_write { O 1 bit } v_strm_7_0_num_data_valid { I 32 vector } v_strm_7_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 840 \
    name v_strm_7_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_7_1 \
    op interface \
    ports { v_strm_7_1_din { O 256 vector } v_strm_7_1_full_n { I 1 bit } v_strm_7_1_write { O 1 bit } v_strm_7_1_num_data_valid { I 32 vector } v_strm_7_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 841 \
    name v_strm_8_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_8_0 \
    op interface \
    ports { v_strm_8_0_din { O 256 vector } v_strm_8_0_full_n { I 1 bit } v_strm_8_0_write { O 1 bit } v_strm_8_0_num_data_valid { I 32 vector } v_strm_8_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 842 \
    name v_strm_8_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_8_1 \
    op interface \
    ports { v_strm_8_1_din { O 256 vector } v_strm_8_1_full_n { I 1 bit } v_strm_8_1_write { O 1 bit } v_strm_8_1_num_data_valid { I 32 vector } v_strm_8_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 843 \
    name v_strm_9_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_9_0 \
    op interface \
    ports { v_strm_9_0_din { O 256 vector } v_strm_9_0_full_n { I 1 bit } v_strm_9_0_write { O 1 bit } v_strm_9_0_num_data_valid { I 32 vector } v_strm_9_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 844 \
    name v_strm_9_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_9_1 \
    op interface \
    ports { v_strm_9_1_din { O 256 vector } v_strm_9_1_full_n { I 1 bit } v_strm_9_1_write { O 1 bit } v_strm_9_1_num_data_valid { I 32 vector } v_strm_9_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 845 \
    name v_strm_10_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_10_0 \
    op interface \
    ports { v_strm_10_0_din { O 256 vector } v_strm_10_0_full_n { I 1 bit } v_strm_10_0_write { O 1 bit } v_strm_10_0_num_data_valid { I 32 vector } v_strm_10_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 846 \
    name v_strm_10_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_10_1 \
    op interface \
    ports { v_strm_10_1_din { O 256 vector } v_strm_10_1_full_n { I 1 bit } v_strm_10_1_write { O 1 bit } v_strm_10_1_num_data_valid { I 32 vector } v_strm_10_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 847 \
    name v_strm_11_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_11_0 \
    op interface \
    ports { v_strm_11_0_din { O 256 vector } v_strm_11_0_full_n { I 1 bit } v_strm_11_0_write { O 1 bit } v_strm_11_0_num_data_valid { I 32 vector } v_strm_11_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 848 \
    name v_strm_11_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_11_1 \
    op interface \
    ports { v_strm_11_1_din { O 256 vector } v_strm_11_1_full_n { I 1 bit } v_strm_11_1_write { O 1 bit } v_strm_11_1_num_data_valid { I 32 vector } v_strm_11_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 849 \
    name v_strm_12_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_12_0 \
    op interface \
    ports { v_strm_12_0_din { O 256 vector } v_strm_12_0_full_n { I 1 bit } v_strm_12_0_write { O 1 bit } v_strm_12_0_num_data_valid { I 32 vector } v_strm_12_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 850 \
    name v_strm_12_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_12_1 \
    op interface \
    ports { v_strm_12_1_din { O 256 vector } v_strm_12_1_full_n { I 1 bit } v_strm_12_1_write { O 1 bit } v_strm_12_1_num_data_valid { I 32 vector } v_strm_12_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 851 \
    name v_strm_13_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_13_0 \
    op interface \
    ports { v_strm_13_0_din { O 256 vector } v_strm_13_0_full_n { I 1 bit } v_strm_13_0_write { O 1 bit } v_strm_13_0_num_data_valid { I 32 vector } v_strm_13_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 852 \
    name v_strm_13_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_13_1 \
    op interface \
    ports { v_strm_13_1_din { O 256 vector } v_strm_13_1_full_n { I 1 bit } v_strm_13_1_write { O 1 bit } v_strm_13_1_num_data_valid { I 32 vector } v_strm_13_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 853 \
    name v_strm_14_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_14_0 \
    op interface \
    ports { v_strm_14_0_din { O 256 vector } v_strm_14_0_full_n { I 1 bit } v_strm_14_0_write { O 1 bit } v_strm_14_0_num_data_valid { I 32 vector } v_strm_14_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 854 \
    name v_strm_14_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_14_1 \
    op interface \
    ports { v_strm_14_1_din { O 256 vector } v_strm_14_1_full_n { I 1 bit } v_strm_14_1_write { O 1 bit } v_strm_14_1_num_data_valid { I 32 vector } v_strm_14_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 855 \
    name v_strm_15_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_15_0 \
    op interface \
    ports { v_strm_15_0_din { O 256 vector } v_strm_15_0_full_n { I 1 bit } v_strm_15_0_write { O 1 bit } v_strm_15_0_num_data_valid { I 32 vector } v_strm_15_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 856 \
    name v_strm_15_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_15_1 \
    op interface \
    ports { v_strm_15_1_din { O 256 vector } v_strm_15_1_full_n { I 1 bit } v_strm_15_1_write { O 1 bit } v_strm_15_1_num_data_valid { I 32 vector } v_strm_15_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 857 \
    name v_strm_16_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_16_0 \
    op interface \
    ports { v_strm_16_0_din { O 256 vector } v_strm_16_0_full_n { I 1 bit } v_strm_16_0_write { O 1 bit } v_strm_16_0_num_data_valid { I 32 vector } v_strm_16_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 858 \
    name v_strm_16_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_16_1 \
    op interface \
    ports { v_strm_16_1_din { O 256 vector } v_strm_16_1_full_n { I 1 bit } v_strm_16_1_write { O 1 bit } v_strm_16_1_num_data_valid { I 32 vector } v_strm_16_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 859 \
    name v_strm_17_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_17_0 \
    op interface \
    ports { v_strm_17_0_din { O 256 vector } v_strm_17_0_full_n { I 1 bit } v_strm_17_0_write { O 1 bit } v_strm_17_0_num_data_valid { I 32 vector } v_strm_17_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 860 \
    name v_strm_17_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_17_1 \
    op interface \
    ports { v_strm_17_1_din { O 256 vector } v_strm_17_1_full_n { I 1 bit } v_strm_17_1_write { O 1 bit } v_strm_17_1_num_data_valid { I 32 vector } v_strm_17_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 861 \
    name v_strm_18_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_18_0 \
    op interface \
    ports { v_strm_18_0_din { O 256 vector } v_strm_18_0_full_n { I 1 bit } v_strm_18_0_write { O 1 bit } v_strm_18_0_num_data_valid { I 32 vector } v_strm_18_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 862 \
    name v_strm_18_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_18_1 \
    op interface \
    ports { v_strm_18_1_din { O 256 vector } v_strm_18_1_full_n { I 1 bit } v_strm_18_1_write { O 1 bit } v_strm_18_1_num_data_valid { I 32 vector } v_strm_18_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 863 \
    name v_strm_19_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_19_0 \
    op interface \
    ports { v_strm_19_0_din { O 256 vector } v_strm_19_0_full_n { I 1 bit } v_strm_19_0_write { O 1 bit } v_strm_19_0_num_data_valid { I 32 vector } v_strm_19_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 864 \
    name v_strm_19_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_19_1 \
    op interface \
    ports { v_strm_19_1_din { O 256 vector } v_strm_19_1_full_n { I 1 bit } v_strm_19_1_write { O 1 bit } v_strm_19_1_num_data_valid { I 32 vector } v_strm_19_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 865 \
    name v_strm_20_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_20_0 \
    op interface \
    ports { v_strm_20_0_din { O 256 vector } v_strm_20_0_full_n { I 1 bit } v_strm_20_0_write { O 1 bit } v_strm_20_0_num_data_valid { I 32 vector } v_strm_20_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 866 \
    name v_strm_20_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_20_1 \
    op interface \
    ports { v_strm_20_1_din { O 256 vector } v_strm_20_1_full_n { I 1 bit } v_strm_20_1_write { O 1 bit } v_strm_20_1_num_data_valid { I 32 vector } v_strm_20_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 867 \
    name v_strm_21_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_21_0 \
    op interface \
    ports { v_strm_21_0_din { O 256 vector } v_strm_21_0_full_n { I 1 bit } v_strm_21_0_write { O 1 bit } v_strm_21_0_num_data_valid { I 32 vector } v_strm_21_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 868 \
    name v_strm_21_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_21_1 \
    op interface \
    ports { v_strm_21_1_din { O 256 vector } v_strm_21_1_full_n { I 1 bit } v_strm_21_1_write { O 1 bit } v_strm_21_1_num_data_valid { I 32 vector } v_strm_21_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 869 \
    name v_strm_22_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_22_0 \
    op interface \
    ports { v_strm_22_0_din { O 256 vector } v_strm_22_0_full_n { I 1 bit } v_strm_22_0_write { O 1 bit } v_strm_22_0_num_data_valid { I 32 vector } v_strm_22_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 870 \
    name v_strm_22_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_22_1 \
    op interface \
    ports { v_strm_22_1_din { O 256 vector } v_strm_22_1_full_n { I 1 bit } v_strm_22_1_write { O 1 bit } v_strm_22_1_num_data_valid { I 32 vector } v_strm_22_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 871 \
    name v_strm_23_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_23_0 \
    op interface \
    ports { v_strm_23_0_din { O 256 vector } v_strm_23_0_full_n { I 1 bit } v_strm_23_0_write { O 1 bit } v_strm_23_0_num_data_valid { I 32 vector } v_strm_23_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 872 \
    name v_strm_23_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_23_1 \
    op interface \
    ports { v_strm_23_1_din { O 256 vector } v_strm_23_1_full_n { I 1 bit } v_strm_23_1_write { O 1 bit } v_strm_23_1_num_data_valid { I 32 vector } v_strm_23_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 873 \
    name v_strm_24_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_24_0 \
    op interface \
    ports { v_strm_24_0_din { O 256 vector } v_strm_24_0_full_n { I 1 bit } v_strm_24_0_write { O 1 bit } v_strm_24_0_num_data_valid { I 32 vector } v_strm_24_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 874 \
    name v_strm_24_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_24_1 \
    op interface \
    ports { v_strm_24_1_din { O 256 vector } v_strm_24_1_full_n { I 1 bit } v_strm_24_1_write { O 1 bit } v_strm_24_1_num_data_valid { I 32 vector } v_strm_24_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 875 \
    name v_strm_25_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_25_0 \
    op interface \
    ports { v_strm_25_0_din { O 256 vector } v_strm_25_0_full_n { I 1 bit } v_strm_25_0_write { O 1 bit } v_strm_25_0_num_data_valid { I 32 vector } v_strm_25_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 876 \
    name v_strm_25_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_25_1 \
    op interface \
    ports { v_strm_25_1_din { O 256 vector } v_strm_25_1_full_n { I 1 bit } v_strm_25_1_write { O 1 bit } v_strm_25_1_num_data_valid { I 32 vector } v_strm_25_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 877 \
    name v_strm_26_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_26_0 \
    op interface \
    ports { v_strm_26_0_din { O 256 vector } v_strm_26_0_full_n { I 1 bit } v_strm_26_0_write { O 1 bit } v_strm_26_0_num_data_valid { I 32 vector } v_strm_26_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 878 \
    name v_strm_26_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_26_1 \
    op interface \
    ports { v_strm_26_1_din { O 256 vector } v_strm_26_1_full_n { I 1 bit } v_strm_26_1_write { O 1 bit } v_strm_26_1_num_data_valid { I 32 vector } v_strm_26_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 879 \
    name v_strm_27_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_27_0 \
    op interface \
    ports { v_strm_27_0_din { O 256 vector } v_strm_27_0_full_n { I 1 bit } v_strm_27_0_write { O 1 bit } v_strm_27_0_num_data_valid { I 32 vector } v_strm_27_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 880 \
    name v_strm_27_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_27_1 \
    op interface \
    ports { v_strm_27_1_din { O 256 vector } v_strm_27_1_full_n { I 1 bit } v_strm_27_1_write { O 1 bit } v_strm_27_1_num_data_valid { I 32 vector } v_strm_27_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 881 \
    name v_strm_28_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_28_0 \
    op interface \
    ports { v_strm_28_0_din { O 256 vector } v_strm_28_0_full_n { I 1 bit } v_strm_28_0_write { O 1 bit } v_strm_28_0_num_data_valid { I 32 vector } v_strm_28_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 882 \
    name v_strm_28_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_28_1 \
    op interface \
    ports { v_strm_28_1_din { O 256 vector } v_strm_28_1_full_n { I 1 bit } v_strm_28_1_write { O 1 bit } v_strm_28_1_num_data_valid { I 32 vector } v_strm_28_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 883 \
    name v_strm_29_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_29_0 \
    op interface \
    ports { v_strm_29_0_din { O 256 vector } v_strm_29_0_full_n { I 1 bit } v_strm_29_0_write { O 1 bit } v_strm_29_0_num_data_valid { I 32 vector } v_strm_29_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 884 \
    name v_strm_29_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_29_1 \
    op interface \
    ports { v_strm_29_1_din { O 256 vector } v_strm_29_1_full_n { I 1 bit } v_strm_29_1_write { O 1 bit } v_strm_29_1_num_data_valid { I 32 vector } v_strm_29_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 885 \
    name v_strm_30_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_30_0 \
    op interface \
    ports { v_strm_30_0_din { O 256 vector } v_strm_30_0_full_n { I 1 bit } v_strm_30_0_write { O 1 bit } v_strm_30_0_num_data_valid { I 32 vector } v_strm_30_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 886 \
    name v_strm_30_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_30_1 \
    op interface \
    ports { v_strm_30_1_din { O 256 vector } v_strm_30_1_full_n { I 1 bit } v_strm_30_1_write { O 1 bit } v_strm_30_1_num_data_valid { I 32 vector } v_strm_30_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 887 \
    name v_strm_31_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_31_0 \
    op interface \
    ports { v_strm_31_0_din { O 256 vector } v_strm_31_0_full_n { I 1 bit } v_strm_31_0_write { O 1 bit } v_strm_31_0_num_data_valid { I 32 vector } v_strm_31_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 888 \
    name v_strm_31_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_31_1 \
    op interface \
    ports { v_strm_31_1_din { O 256 vector } v_strm_31_1_full_n { I 1 bit } v_strm_31_1_write { O 1 bit } v_strm_31_1_num_data_valid { I 32 vector } v_strm_31_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 889 \
    name v_strm_32_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_32_0 \
    op interface \
    ports { v_strm_32_0_din { O 256 vector } v_strm_32_0_full_n { I 1 bit } v_strm_32_0_write { O 1 bit } v_strm_32_0_num_data_valid { I 32 vector } v_strm_32_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 890 \
    name v_strm_32_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_32_1 \
    op interface \
    ports { v_strm_32_1_din { O 256 vector } v_strm_32_1_full_n { I 1 bit } v_strm_32_1_write { O 1 bit } v_strm_32_1_num_data_valid { I 32 vector } v_strm_32_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 891 \
    name v_strm_33_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_33_0 \
    op interface \
    ports { v_strm_33_0_din { O 256 vector } v_strm_33_0_full_n { I 1 bit } v_strm_33_0_write { O 1 bit } v_strm_33_0_num_data_valid { I 32 vector } v_strm_33_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 892 \
    name v_strm_33_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_33_1 \
    op interface \
    ports { v_strm_33_1_din { O 256 vector } v_strm_33_1_full_n { I 1 bit } v_strm_33_1_write { O 1 bit } v_strm_33_1_num_data_valid { I 32 vector } v_strm_33_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 893 \
    name v_strm_34_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_34_0 \
    op interface \
    ports { v_strm_34_0_din { O 256 vector } v_strm_34_0_full_n { I 1 bit } v_strm_34_0_write { O 1 bit } v_strm_34_0_num_data_valid { I 32 vector } v_strm_34_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 894 \
    name v_strm_34_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_34_1 \
    op interface \
    ports { v_strm_34_1_din { O 256 vector } v_strm_34_1_full_n { I 1 bit } v_strm_34_1_write { O 1 bit } v_strm_34_1_num_data_valid { I 32 vector } v_strm_34_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 895 \
    name v_strm_35_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_35_0 \
    op interface \
    ports { v_strm_35_0_din { O 256 vector } v_strm_35_0_full_n { I 1 bit } v_strm_35_0_write { O 1 bit } v_strm_35_0_num_data_valid { I 32 vector } v_strm_35_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 896 \
    name v_strm_35_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_35_1 \
    op interface \
    ports { v_strm_35_1_din { O 256 vector } v_strm_35_1_full_n { I 1 bit } v_strm_35_1_write { O 1 bit } v_strm_35_1_num_data_valid { I 32 vector } v_strm_35_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 897 \
    name v_strm_36_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_36_0 \
    op interface \
    ports { v_strm_36_0_din { O 256 vector } v_strm_36_0_full_n { I 1 bit } v_strm_36_0_write { O 1 bit } v_strm_36_0_num_data_valid { I 32 vector } v_strm_36_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 898 \
    name v_strm_36_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_36_1 \
    op interface \
    ports { v_strm_36_1_din { O 256 vector } v_strm_36_1_full_n { I 1 bit } v_strm_36_1_write { O 1 bit } v_strm_36_1_num_data_valid { I 32 vector } v_strm_36_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 899 \
    name v_strm_37_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_37_0 \
    op interface \
    ports { v_strm_37_0_din { O 256 vector } v_strm_37_0_full_n { I 1 bit } v_strm_37_0_write { O 1 bit } v_strm_37_0_num_data_valid { I 32 vector } v_strm_37_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 900 \
    name v_strm_37_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_37_1 \
    op interface \
    ports { v_strm_37_1_din { O 256 vector } v_strm_37_1_full_n { I 1 bit } v_strm_37_1_write { O 1 bit } v_strm_37_1_num_data_valid { I 32 vector } v_strm_37_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 901 \
    name v_strm_38_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_38_0 \
    op interface \
    ports { v_strm_38_0_din { O 256 vector } v_strm_38_0_full_n { I 1 bit } v_strm_38_0_write { O 1 bit } v_strm_38_0_num_data_valid { I 32 vector } v_strm_38_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 902 \
    name v_strm_38_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_38_1 \
    op interface \
    ports { v_strm_38_1_din { O 256 vector } v_strm_38_1_full_n { I 1 bit } v_strm_38_1_write { O 1 bit } v_strm_38_1_num_data_valid { I 32 vector } v_strm_38_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 903 \
    name v_strm_39_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_39_0 \
    op interface \
    ports { v_strm_39_0_din { O 256 vector } v_strm_39_0_full_n { I 1 bit } v_strm_39_0_write { O 1 bit } v_strm_39_0_num_data_valid { I 32 vector } v_strm_39_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 904 \
    name v_strm_39_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_39_1 \
    op interface \
    ports { v_strm_39_1_din { O 256 vector } v_strm_39_1_full_n { I 1 bit } v_strm_39_1_write { O 1 bit } v_strm_39_1_num_data_valid { I 32 vector } v_strm_39_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 905 \
    name v_strm_40_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_40_0 \
    op interface \
    ports { v_strm_40_0_din { O 256 vector } v_strm_40_0_full_n { I 1 bit } v_strm_40_0_write { O 1 bit } v_strm_40_0_num_data_valid { I 32 vector } v_strm_40_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 906 \
    name v_strm_40_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_40_1 \
    op interface \
    ports { v_strm_40_1_din { O 256 vector } v_strm_40_1_full_n { I 1 bit } v_strm_40_1_write { O 1 bit } v_strm_40_1_num_data_valid { I 32 vector } v_strm_40_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 907 \
    name v_strm_41_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_41_0 \
    op interface \
    ports { v_strm_41_0_din { O 256 vector } v_strm_41_0_full_n { I 1 bit } v_strm_41_0_write { O 1 bit } v_strm_41_0_num_data_valid { I 32 vector } v_strm_41_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 908 \
    name v_strm_41_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_41_1 \
    op interface \
    ports { v_strm_41_1_din { O 256 vector } v_strm_41_1_full_n { I 1 bit } v_strm_41_1_write { O 1 bit } v_strm_41_1_num_data_valid { I 32 vector } v_strm_41_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 909 \
    name v_strm_42_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_42_0 \
    op interface \
    ports { v_strm_42_0_din { O 256 vector } v_strm_42_0_full_n { I 1 bit } v_strm_42_0_write { O 1 bit } v_strm_42_0_num_data_valid { I 32 vector } v_strm_42_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 910 \
    name v_strm_42_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_42_1 \
    op interface \
    ports { v_strm_42_1_din { O 256 vector } v_strm_42_1_full_n { I 1 bit } v_strm_42_1_write { O 1 bit } v_strm_42_1_num_data_valid { I 32 vector } v_strm_42_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 911 \
    name v_strm_43_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_43_0 \
    op interface \
    ports { v_strm_43_0_din { O 256 vector } v_strm_43_0_full_n { I 1 bit } v_strm_43_0_write { O 1 bit } v_strm_43_0_num_data_valid { I 32 vector } v_strm_43_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 912 \
    name v_strm_43_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_43_1 \
    op interface \
    ports { v_strm_43_1_din { O 256 vector } v_strm_43_1_full_n { I 1 bit } v_strm_43_1_write { O 1 bit } v_strm_43_1_num_data_valid { I 32 vector } v_strm_43_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 913 \
    name v_strm_44_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_44_0 \
    op interface \
    ports { v_strm_44_0_din { O 256 vector } v_strm_44_0_full_n { I 1 bit } v_strm_44_0_write { O 1 bit } v_strm_44_0_num_data_valid { I 32 vector } v_strm_44_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 914 \
    name v_strm_44_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_44_1 \
    op interface \
    ports { v_strm_44_1_din { O 256 vector } v_strm_44_1_full_n { I 1 bit } v_strm_44_1_write { O 1 bit } v_strm_44_1_num_data_valid { I 32 vector } v_strm_44_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 915 \
    name v_strm_45_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_45_0 \
    op interface \
    ports { v_strm_45_0_din { O 256 vector } v_strm_45_0_full_n { I 1 bit } v_strm_45_0_write { O 1 bit } v_strm_45_0_num_data_valid { I 32 vector } v_strm_45_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 916 \
    name v_strm_45_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_45_1 \
    op interface \
    ports { v_strm_45_1_din { O 256 vector } v_strm_45_1_full_n { I 1 bit } v_strm_45_1_write { O 1 bit } v_strm_45_1_num_data_valid { I 32 vector } v_strm_45_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 917 \
    name v_strm_46_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_46_0 \
    op interface \
    ports { v_strm_46_0_din { O 256 vector } v_strm_46_0_full_n { I 1 bit } v_strm_46_0_write { O 1 bit } v_strm_46_0_num_data_valid { I 32 vector } v_strm_46_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 918 \
    name v_strm_46_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_46_1 \
    op interface \
    ports { v_strm_46_1_din { O 256 vector } v_strm_46_1_full_n { I 1 bit } v_strm_46_1_write { O 1 bit } v_strm_46_1_num_data_valid { I 32 vector } v_strm_46_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 919 \
    name v_strm_47_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_47_0 \
    op interface \
    ports { v_strm_47_0_din { O 256 vector } v_strm_47_0_full_n { I 1 bit } v_strm_47_0_write { O 1 bit } v_strm_47_0_num_data_valid { I 32 vector } v_strm_47_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 920 \
    name v_strm_47_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_47_1 \
    op interface \
    ports { v_strm_47_1_din { O 256 vector } v_strm_47_1_full_n { I 1 bit } v_strm_47_1_write { O 1 bit } v_strm_47_1_num_data_valid { I 32 vector } v_strm_47_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 921 \
    name v_strm_48_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_48_0 \
    op interface \
    ports { v_strm_48_0_din { O 256 vector } v_strm_48_0_full_n { I 1 bit } v_strm_48_0_write { O 1 bit } v_strm_48_0_num_data_valid { I 32 vector } v_strm_48_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 922 \
    name v_strm_48_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_48_1 \
    op interface \
    ports { v_strm_48_1_din { O 256 vector } v_strm_48_1_full_n { I 1 bit } v_strm_48_1_write { O 1 bit } v_strm_48_1_num_data_valid { I 32 vector } v_strm_48_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 923 \
    name v_strm_49_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_49_0 \
    op interface \
    ports { v_strm_49_0_din { O 256 vector } v_strm_49_0_full_n { I 1 bit } v_strm_49_0_write { O 1 bit } v_strm_49_0_num_data_valid { I 32 vector } v_strm_49_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 924 \
    name v_strm_49_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_49_1 \
    op interface \
    ports { v_strm_49_1_din { O 256 vector } v_strm_49_1_full_n { I 1 bit } v_strm_49_1_write { O 1 bit } v_strm_49_1_num_data_valid { I 32 vector } v_strm_49_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 925 \
    name v_strm_50_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_50_0 \
    op interface \
    ports { v_strm_50_0_din { O 256 vector } v_strm_50_0_full_n { I 1 bit } v_strm_50_0_write { O 1 bit } v_strm_50_0_num_data_valid { I 32 vector } v_strm_50_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 926 \
    name v_strm_50_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_50_1 \
    op interface \
    ports { v_strm_50_1_din { O 256 vector } v_strm_50_1_full_n { I 1 bit } v_strm_50_1_write { O 1 bit } v_strm_50_1_num_data_valid { I 32 vector } v_strm_50_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 927 \
    name v_strm_51_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_51_0 \
    op interface \
    ports { v_strm_51_0_din { O 256 vector } v_strm_51_0_full_n { I 1 bit } v_strm_51_0_write { O 1 bit } v_strm_51_0_num_data_valid { I 32 vector } v_strm_51_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 928 \
    name v_strm_51_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_51_1 \
    op interface \
    ports { v_strm_51_1_din { O 256 vector } v_strm_51_1_full_n { I 1 bit } v_strm_51_1_write { O 1 bit } v_strm_51_1_num_data_valid { I 32 vector } v_strm_51_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 929 \
    name v_strm_52_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_52_0 \
    op interface \
    ports { v_strm_52_0_din { O 256 vector } v_strm_52_0_full_n { I 1 bit } v_strm_52_0_write { O 1 bit } v_strm_52_0_num_data_valid { I 32 vector } v_strm_52_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 930 \
    name v_strm_52_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_52_1 \
    op interface \
    ports { v_strm_52_1_din { O 256 vector } v_strm_52_1_full_n { I 1 bit } v_strm_52_1_write { O 1 bit } v_strm_52_1_num_data_valid { I 32 vector } v_strm_52_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 931 \
    name v_strm_53_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_53_0 \
    op interface \
    ports { v_strm_53_0_din { O 256 vector } v_strm_53_0_full_n { I 1 bit } v_strm_53_0_write { O 1 bit } v_strm_53_0_num_data_valid { I 32 vector } v_strm_53_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 932 \
    name v_strm_53_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_53_1 \
    op interface \
    ports { v_strm_53_1_din { O 256 vector } v_strm_53_1_full_n { I 1 bit } v_strm_53_1_write { O 1 bit } v_strm_53_1_num_data_valid { I 32 vector } v_strm_53_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 933 \
    name v_strm_54_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_54_0 \
    op interface \
    ports { v_strm_54_0_din { O 256 vector } v_strm_54_0_full_n { I 1 bit } v_strm_54_0_write { O 1 bit } v_strm_54_0_num_data_valid { I 32 vector } v_strm_54_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 934 \
    name v_strm_54_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_54_1 \
    op interface \
    ports { v_strm_54_1_din { O 256 vector } v_strm_54_1_full_n { I 1 bit } v_strm_54_1_write { O 1 bit } v_strm_54_1_num_data_valid { I 32 vector } v_strm_54_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 935 \
    name v_strm_55_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_55_0 \
    op interface \
    ports { v_strm_55_0_din { O 256 vector } v_strm_55_0_full_n { I 1 bit } v_strm_55_0_write { O 1 bit } v_strm_55_0_num_data_valid { I 32 vector } v_strm_55_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 936 \
    name v_strm_55_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_55_1 \
    op interface \
    ports { v_strm_55_1_din { O 256 vector } v_strm_55_1_full_n { I 1 bit } v_strm_55_1_write { O 1 bit } v_strm_55_1_num_data_valid { I 32 vector } v_strm_55_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 937 \
    name v_strm_56_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_56_0 \
    op interface \
    ports { v_strm_56_0_din { O 256 vector } v_strm_56_0_full_n { I 1 bit } v_strm_56_0_write { O 1 bit } v_strm_56_0_num_data_valid { I 32 vector } v_strm_56_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 938 \
    name v_strm_56_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_56_1 \
    op interface \
    ports { v_strm_56_1_din { O 256 vector } v_strm_56_1_full_n { I 1 bit } v_strm_56_1_write { O 1 bit } v_strm_56_1_num_data_valid { I 32 vector } v_strm_56_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 939 \
    name v_strm_57_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_57_0 \
    op interface \
    ports { v_strm_57_0_din { O 256 vector } v_strm_57_0_full_n { I 1 bit } v_strm_57_0_write { O 1 bit } v_strm_57_0_num_data_valid { I 32 vector } v_strm_57_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 940 \
    name v_strm_57_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_57_1 \
    op interface \
    ports { v_strm_57_1_din { O 256 vector } v_strm_57_1_full_n { I 1 bit } v_strm_57_1_write { O 1 bit } v_strm_57_1_num_data_valid { I 32 vector } v_strm_57_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 941 \
    name v_strm_58_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_58_0 \
    op interface \
    ports { v_strm_58_0_din { O 256 vector } v_strm_58_0_full_n { I 1 bit } v_strm_58_0_write { O 1 bit } v_strm_58_0_num_data_valid { I 32 vector } v_strm_58_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 942 \
    name v_strm_58_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_58_1 \
    op interface \
    ports { v_strm_58_1_din { O 256 vector } v_strm_58_1_full_n { I 1 bit } v_strm_58_1_write { O 1 bit } v_strm_58_1_num_data_valid { I 32 vector } v_strm_58_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 943 \
    name v_strm_59_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_59_0 \
    op interface \
    ports { v_strm_59_0_din { O 256 vector } v_strm_59_0_full_n { I 1 bit } v_strm_59_0_write { O 1 bit } v_strm_59_0_num_data_valid { I 32 vector } v_strm_59_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 944 \
    name v_strm_59_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_59_1 \
    op interface \
    ports { v_strm_59_1_din { O 256 vector } v_strm_59_1_full_n { I 1 bit } v_strm_59_1_write { O 1 bit } v_strm_59_1_num_data_valid { I 32 vector } v_strm_59_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 945 \
    name v_strm_60_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_60_0 \
    op interface \
    ports { v_strm_60_0_din { O 256 vector } v_strm_60_0_full_n { I 1 bit } v_strm_60_0_write { O 1 bit } v_strm_60_0_num_data_valid { I 32 vector } v_strm_60_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 946 \
    name v_strm_60_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_60_1 \
    op interface \
    ports { v_strm_60_1_din { O 256 vector } v_strm_60_1_full_n { I 1 bit } v_strm_60_1_write { O 1 bit } v_strm_60_1_num_data_valid { I 32 vector } v_strm_60_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 947 \
    name v_strm_61_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_61_0 \
    op interface \
    ports { v_strm_61_0_din { O 256 vector } v_strm_61_0_full_n { I 1 bit } v_strm_61_0_write { O 1 bit } v_strm_61_0_num_data_valid { I 32 vector } v_strm_61_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 948 \
    name v_strm_61_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_61_1 \
    op interface \
    ports { v_strm_61_1_din { O 256 vector } v_strm_61_1_full_n { I 1 bit } v_strm_61_1_write { O 1 bit } v_strm_61_1_num_data_valid { I 32 vector } v_strm_61_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 949 \
    name v_strm_62_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_62_0 \
    op interface \
    ports { v_strm_62_0_din { O 256 vector } v_strm_62_0_full_n { I 1 bit } v_strm_62_0_write { O 1 bit } v_strm_62_0_num_data_valid { I 32 vector } v_strm_62_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 950 \
    name v_strm_62_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_62_1 \
    op interface \
    ports { v_strm_62_1_din { O 256 vector } v_strm_62_1_full_n { I 1 bit } v_strm_62_1_write { O 1 bit } v_strm_62_1_num_data_valid { I 32 vector } v_strm_62_1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 951 \
    name v_strm_63_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_63_0 \
    op interface \
    ports { v_strm_63_0_din { O 256 vector } v_strm_63_0_full_n { I 1 bit } v_strm_63_0_write { O 1 bit } v_strm_63_0_num_data_valid { I 32 vector } v_strm_63_0_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 952 \
    name v_strm_63_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_63_1 \
    op interface \
    ports { v_strm_63_1_din { O 256 vector } v_strm_63_1_full_n { I 1 bit } v_strm_63_1_write { O 1 bit } v_strm_63_1_num_data_valid { I 32 vector } v_strm_63_1_fifo_cap { I 32 vector } } \
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


# flow_control definition:
set InstName GenerateProof_flow_control_loop_pipe_U
set CompName GenerateProof_flow_control_loop_pipe
set name flow_control_loop_pipe
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


