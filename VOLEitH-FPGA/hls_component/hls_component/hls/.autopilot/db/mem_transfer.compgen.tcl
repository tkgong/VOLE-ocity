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
    id 1478 \
    name u_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename u_0 \
    op interface \
    ports { u_0_address1 { O 18 vector } u_0_ce1 { O 1 bit } u_0_we1 { O 1 bit } u_0_d1 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'u_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1479 \
    name u_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename u_1 \
    op interface \
    ports { u_1_address1 { O 18 vector } u_1_ce1 { O 1 bit } u_1_we1 { O 1 bit } u_1_d1 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'u_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1480 \
    name V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename V_0 \
    op interface \
    ports { V_0_address1 { O 18 vector } V_0_ce1 { O 1 bit } V_0_we1 { O 1 bit } V_0_d1 { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1481 \
    name V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename V_1 \
    op interface \
    ports { V_1_address1 { O 18 vector } V_1_ce1 { O 1 bit } V_1_we1 { O 1 bit } V_1_d1 { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'V_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1349 \
    name u_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_strm \
    op interface \
    ports { u_strm_dout { I 256 vector } u_strm_empty_n { I 1 bit } u_strm_read { O 1 bit } u_strm_num_data_valid { I 3 vector } u_strm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1350 \
    name v_strm_0_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_0_0 \
    op interface \
    ports { v_strm_0_0_dout { I 256 vector } v_strm_0_0_empty_n { I 1 bit } v_strm_0_0_read { O 1 bit } v_strm_0_0_num_data_valid { I 3 vector } v_strm_0_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1351 \
    name v_strm_0_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_0_1 \
    op interface \
    ports { v_strm_0_1_dout { I 256 vector } v_strm_0_1_empty_n { I 1 bit } v_strm_0_1_read { O 1 bit } v_strm_0_1_num_data_valid { I 3 vector } v_strm_0_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1352 \
    name v_strm_1_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_1_0 \
    op interface \
    ports { v_strm_1_0_dout { I 256 vector } v_strm_1_0_empty_n { I 1 bit } v_strm_1_0_read { O 1 bit } v_strm_1_0_num_data_valid { I 3 vector } v_strm_1_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1353 \
    name v_strm_1_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_1_1 \
    op interface \
    ports { v_strm_1_1_dout { I 256 vector } v_strm_1_1_empty_n { I 1 bit } v_strm_1_1_read { O 1 bit } v_strm_1_1_num_data_valid { I 3 vector } v_strm_1_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1354 \
    name v_strm_2_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_2_0 \
    op interface \
    ports { v_strm_2_0_dout { I 256 vector } v_strm_2_0_empty_n { I 1 bit } v_strm_2_0_read { O 1 bit } v_strm_2_0_num_data_valid { I 3 vector } v_strm_2_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1355 \
    name v_strm_2_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_2_1 \
    op interface \
    ports { v_strm_2_1_dout { I 256 vector } v_strm_2_1_empty_n { I 1 bit } v_strm_2_1_read { O 1 bit } v_strm_2_1_num_data_valid { I 3 vector } v_strm_2_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1356 \
    name v_strm_3_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_3_0 \
    op interface \
    ports { v_strm_3_0_dout { I 256 vector } v_strm_3_0_empty_n { I 1 bit } v_strm_3_0_read { O 1 bit } v_strm_3_0_num_data_valid { I 3 vector } v_strm_3_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1357 \
    name v_strm_3_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_3_1 \
    op interface \
    ports { v_strm_3_1_dout { I 256 vector } v_strm_3_1_empty_n { I 1 bit } v_strm_3_1_read { O 1 bit } v_strm_3_1_num_data_valid { I 3 vector } v_strm_3_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1358 \
    name v_strm_4_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_4_0 \
    op interface \
    ports { v_strm_4_0_dout { I 256 vector } v_strm_4_0_empty_n { I 1 bit } v_strm_4_0_read { O 1 bit } v_strm_4_0_num_data_valid { I 3 vector } v_strm_4_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1359 \
    name v_strm_4_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_4_1 \
    op interface \
    ports { v_strm_4_1_dout { I 256 vector } v_strm_4_1_empty_n { I 1 bit } v_strm_4_1_read { O 1 bit } v_strm_4_1_num_data_valid { I 3 vector } v_strm_4_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1360 \
    name v_strm_5_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_5_0 \
    op interface \
    ports { v_strm_5_0_dout { I 256 vector } v_strm_5_0_empty_n { I 1 bit } v_strm_5_0_read { O 1 bit } v_strm_5_0_num_data_valid { I 3 vector } v_strm_5_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1361 \
    name v_strm_5_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_5_1 \
    op interface \
    ports { v_strm_5_1_dout { I 256 vector } v_strm_5_1_empty_n { I 1 bit } v_strm_5_1_read { O 1 bit } v_strm_5_1_num_data_valid { I 3 vector } v_strm_5_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1362 \
    name v_strm_6_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_6_0 \
    op interface \
    ports { v_strm_6_0_dout { I 256 vector } v_strm_6_0_empty_n { I 1 bit } v_strm_6_0_read { O 1 bit } v_strm_6_0_num_data_valid { I 3 vector } v_strm_6_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1363 \
    name v_strm_6_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_6_1 \
    op interface \
    ports { v_strm_6_1_dout { I 256 vector } v_strm_6_1_empty_n { I 1 bit } v_strm_6_1_read { O 1 bit } v_strm_6_1_num_data_valid { I 3 vector } v_strm_6_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1364 \
    name v_strm_7_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_7_0 \
    op interface \
    ports { v_strm_7_0_dout { I 256 vector } v_strm_7_0_empty_n { I 1 bit } v_strm_7_0_read { O 1 bit } v_strm_7_0_num_data_valid { I 3 vector } v_strm_7_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1365 \
    name v_strm_7_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_7_1 \
    op interface \
    ports { v_strm_7_1_dout { I 256 vector } v_strm_7_1_empty_n { I 1 bit } v_strm_7_1_read { O 1 bit } v_strm_7_1_num_data_valid { I 3 vector } v_strm_7_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1366 \
    name v_strm_8_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_8_0 \
    op interface \
    ports { v_strm_8_0_dout { I 256 vector } v_strm_8_0_empty_n { I 1 bit } v_strm_8_0_read { O 1 bit } v_strm_8_0_num_data_valid { I 3 vector } v_strm_8_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1367 \
    name v_strm_8_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_8_1 \
    op interface \
    ports { v_strm_8_1_dout { I 256 vector } v_strm_8_1_empty_n { I 1 bit } v_strm_8_1_read { O 1 bit } v_strm_8_1_num_data_valid { I 3 vector } v_strm_8_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1368 \
    name v_strm_9_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_9_0 \
    op interface \
    ports { v_strm_9_0_dout { I 256 vector } v_strm_9_0_empty_n { I 1 bit } v_strm_9_0_read { O 1 bit } v_strm_9_0_num_data_valid { I 3 vector } v_strm_9_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1369 \
    name v_strm_9_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_9_1 \
    op interface \
    ports { v_strm_9_1_dout { I 256 vector } v_strm_9_1_empty_n { I 1 bit } v_strm_9_1_read { O 1 bit } v_strm_9_1_num_data_valid { I 3 vector } v_strm_9_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1370 \
    name v_strm_10_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_10_0 \
    op interface \
    ports { v_strm_10_0_dout { I 256 vector } v_strm_10_0_empty_n { I 1 bit } v_strm_10_0_read { O 1 bit } v_strm_10_0_num_data_valid { I 3 vector } v_strm_10_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1371 \
    name v_strm_10_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_10_1 \
    op interface \
    ports { v_strm_10_1_dout { I 256 vector } v_strm_10_1_empty_n { I 1 bit } v_strm_10_1_read { O 1 bit } v_strm_10_1_num_data_valid { I 3 vector } v_strm_10_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1372 \
    name v_strm_11_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_11_0 \
    op interface \
    ports { v_strm_11_0_dout { I 256 vector } v_strm_11_0_empty_n { I 1 bit } v_strm_11_0_read { O 1 bit } v_strm_11_0_num_data_valid { I 3 vector } v_strm_11_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1373 \
    name v_strm_11_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_11_1 \
    op interface \
    ports { v_strm_11_1_dout { I 256 vector } v_strm_11_1_empty_n { I 1 bit } v_strm_11_1_read { O 1 bit } v_strm_11_1_num_data_valid { I 3 vector } v_strm_11_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1374 \
    name v_strm_12_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_12_0 \
    op interface \
    ports { v_strm_12_0_dout { I 256 vector } v_strm_12_0_empty_n { I 1 bit } v_strm_12_0_read { O 1 bit } v_strm_12_0_num_data_valid { I 3 vector } v_strm_12_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1375 \
    name v_strm_12_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_12_1 \
    op interface \
    ports { v_strm_12_1_dout { I 256 vector } v_strm_12_1_empty_n { I 1 bit } v_strm_12_1_read { O 1 bit } v_strm_12_1_num_data_valid { I 3 vector } v_strm_12_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1376 \
    name v_strm_13_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_13_0 \
    op interface \
    ports { v_strm_13_0_dout { I 256 vector } v_strm_13_0_empty_n { I 1 bit } v_strm_13_0_read { O 1 bit } v_strm_13_0_num_data_valid { I 3 vector } v_strm_13_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1377 \
    name v_strm_13_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_13_1 \
    op interface \
    ports { v_strm_13_1_dout { I 256 vector } v_strm_13_1_empty_n { I 1 bit } v_strm_13_1_read { O 1 bit } v_strm_13_1_num_data_valid { I 3 vector } v_strm_13_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1378 \
    name v_strm_14_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_14_0 \
    op interface \
    ports { v_strm_14_0_dout { I 256 vector } v_strm_14_0_empty_n { I 1 bit } v_strm_14_0_read { O 1 bit } v_strm_14_0_num_data_valid { I 3 vector } v_strm_14_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1379 \
    name v_strm_14_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_14_1 \
    op interface \
    ports { v_strm_14_1_dout { I 256 vector } v_strm_14_1_empty_n { I 1 bit } v_strm_14_1_read { O 1 bit } v_strm_14_1_num_data_valid { I 3 vector } v_strm_14_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1380 \
    name v_strm_15_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_15_0 \
    op interface \
    ports { v_strm_15_0_dout { I 256 vector } v_strm_15_0_empty_n { I 1 bit } v_strm_15_0_read { O 1 bit } v_strm_15_0_num_data_valid { I 3 vector } v_strm_15_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1381 \
    name v_strm_15_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_15_1 \
    op interface \
    ports { v_strm_15_1_dout { I 256 vector } v_strm_15_1_empty_n { I 1 bit } v_strm_15_1_read { O 1 bit } v_strm_15_1_num_data_valid { I 3 vector } v_strm_15_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1382 \
    name v_strm_16_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_16_0 \
    op interface \
    ports { v_strm_16_0_dout { I 256 vector } v_strm_16_0_empty_n { I 1 bit } v_strm_16_0_read { O 1 bit } v_strm_16_0_num_data_valid { I 3 vector } v_strm_16_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1383 \
    name v_strm_16_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_16_1 \
    op interface \
    ports { v_strm_16_1_dout { I 256 vector } v_strm_16_1_empty_n { I 1 bit } v_strm_16_1_read { O 1 bit } v_strm_16_1_num_data_valid { I 3 vector } v_strm_16_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1384 \
    name v_strm_17_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_17_0 \
    op interface \
    ports { v_strm_17_0_dout { I 256 vector } v_strm_17_0_empty_n { I 1 bit } v_strm_17_0_read { O 1 bit } v_strm_17_0_num_data_valid { I 3 vector } v_strm_17_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1385 \
    name v_strm_17_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_17_1 \
    op interface \
    ports { v_strm_17_1_dout { I 256 vector } v_strm_17_1_empty_n { I 1 bit } v_strm_17_1_read { O 1 bit } v_strm_17_1_num_data_valid { I 3 vector } v_strm_17_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1386 \
    name v_strm_18_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_18_0 \
    op interface \
    ports { v_strm_18_0_dout { I 256 vector } v_strm_18_0_empty_n { I 1 bit } v_strm_18_0_read { O 1 bit } v_strm_18_0_num_data_valid { I 3 vector } v_strm_18_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1387 \
    name v_strm_18_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_18_1 \
    op interface \
    ports { v_strm_18_1_dout { I 256 vector } v_strm_18_1_empty_n { I 1 bit } v_strm_18_1_read { O 1 bit } v_strm_18_1_num_data_valid { I 3 vector } v_strm_18_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1388 \
    name v_strm_19_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_19_0 \
    op interface \
    ports { v_strm_19_0_dout { I 256 vector } v_strm_19_0_empty_n { I 1 bit } v_strm_19_0_read { O 1 bit } v_strm_19_0_num_data_valid { I 3 vector } v_strm_19_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1389 \
    name v_strm_19_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_19_1 \
    op interface \
    ports { v_strm_19_1_dout { I 256 vector } v_strm_19_1_empty_n { I 1 bit } v_strm_19_1_read { O 1 bit } v_strm_19_1_num_data_valid { I 3 vector } v_strm_19_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1390 \
    name v_strm_20_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_20_0 \
    op interface \
    ports { v_strm_20_0_dout { I 256 vector } v_strm_20_0_empty_n { I 1 bit } v_strm_20_0_read { O 1 bit } v_strm_20_0_num_data_valid { I 3 vector } v_strm_20_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1391 \
    name v_strm_20_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_20_1 \
    op interface \
    ports { v_strm_20_1_dout { I 256 vector } v_strm_20_1_empty_n { I 1 bit } v_strm_20_1_read { O 1 bit } v_strm_20_1_num_data_valid { I 3 vector } v_strm_20_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1392 \
    name v_strm_21_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_21_0 \
    op interface \
    ports { v_strm_21_0_dout { I 256 vector } v_strm_21_0_empty_n { I 1 bit } v_strm_21_0_read { O 1 bit } v_strm_21_0_num_data_valid { I 3 vector } v_strm_21_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1393 \
    name v_strm_21_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_21_1 \
    op interface \
    ports { v_strm_21_1_dout { I 256 vector } v_strm_21_1_empty_n { I 1 bit } v_strm_21_1_read { O 1 bit } v_strm_21_1_num_data_valid { I 3 vector } v_strm_21_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1394 \
    name v_strm_22_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_22_0 \
    op interface \
    ports { v_strm_22_0_dout { I 256 vector } v_strm_22_0_empty_n { I 1 bit } v_strm_22_0_read { O 1 bit } v_strm_22_0_num_data_valid { I 3 vector } v_strm_22_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1395 \
    name v_strm_22_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_22_1 \
    op interface \
    ports { v_strm_22_1_dout { I 256 vector } v_strm_22_1_empty_n { I 1 bit } v_strm_22_1_read { O 1 bit } v_strm_22_1_num_data_valid { I 3 vector } v_strm_22_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1396 \
    name v_strm_23_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_23_0 \
    op interface \
    ports { v_strm_23_0_dout { I 256 vector } v_strm_23_0_empty_n { I 1 bit } v_strm_23_0_read { O 1 bit } v_strm_23_0_num_data_valid { I 3 vector } v_strm_23_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1397 \
    name v_strm_23_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_23_1 \
    op interface \
    ports { v_strm_23_1_dout { I 256 vector } v_strm_23_1_empty_n { I 1 bit } v_strm_23_1_read { O 1 bit } v_strm_23_1_num_data_valid { I 3 vector } v_strm_23_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1398 \
    name v_strm_24_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_24_0 \
    op interface \
    ports { v_strm_24_0_dout { I 256 vector } v_strm_24_0_empty_n { I 1 bit } v_strm_24_0_read { O 1 bit } v_strm_24_0_num_data_valid { I 3 vector } v_strm_24_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1399 \
    name v_strm_24_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_24_1 \
    op interface \
    ports { v_strm_24_1_dout { I 256 vector } v_strm_24_1_empty_n { I 1 bit } v_strm_24_1_read { O 1 bit } v_strm_24_1_num_data_valid { I 3 vector } v_strm_24_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1400 \
    name v_strm_25_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_25_0 \
    op interface \
    ports { v_strm_25_0_dout { I 256 vector } v_strm_25_0_empty_n { I 1 bit } v_strm_25_0_read { O 1 bit } v_strm_25_0_num_data_valid { I 3 vector } v_strm_25_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1401 \
    name v_strm_25_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_25_1 \
    op interface \
    ports { v_strm_25_1_dout { I 256 vector } v_strm_25_1_empty_n { I 1 bit } v_strm_25_1_read { O 1 bit } v_strm_25_1_num_data_valid { I 3 vector } v_strm_25_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1402 \
    name v_strm_26_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_26_0 \
    op interface \
    ports { v_strm_26_0_dout { I 256 vector } v_strm_26_0_empty_n { I 1 bit } v_strm_26_0_read { O 1 bit } v_strm_26_0_num_data_valid { I 3 vector } v_strm_26_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1403 \
    name v_strm_26_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_26_1 \
    op interface \
    ports { v_strm_26_1_dout { I 256 vector } v_strm_26_1_empty_n { I 1 bit } v_strm_26_1_read { O 1 bit } v_strm_26_1_num_data_valid { I 3 vector } v_strm_26_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1404 \
    name v_strm_27_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_27_0 \
    op interface \
    ports { v_strm_27_0_dout { I 256 vector } v_strm_27_0_empty_n { I 1 bit } v_strm_27_0_read { O 1 bit } v_strm_27_0_num_data_valid { I 3 vector } v_strm_27_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1405 \
    name v_strm_27_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_27_1 \
    op interface \
    ports { v_strm_27_1_dout { I 256 vector } v_strm_27_1_empty_n { I 1 bit } v_strm_27_1_read { O 1 bit } v_strm_27_1_num_data_valid { I 3 vector } v_strm_27_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1406 \
    name v_strm_28_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_28_0 \
    op interface \
    ports { v_strm_28_0_dout { I 256 vector } v_strm_28_0_empty_n { I 1 bit } v_strm_28_0_read { O 1 bit } v_strm_28_0_num_data_valid { I 3 vector } v_strm_28_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1407 \
    name v_strm_28_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_28_1 \
    op interface \
    ports { v_strm_28_1_dout { I 256 vector } v_strm_28_1_empty_n { I 1 bit } v_strm_28_1_read { O 1 bit } v_strm_28_1_num_data_valid { I 3 vector } v_strm_28_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1408 \
    name v_strm_29_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_29_0 \
    op interface \
    ports { v_strm_29_0_dout { I 256 vector } v_strm_29_0_empty_n { I 1 bit } v_strm_29_0_read { O 1 bit } v_strm_29_0_num_data_valid { I 3 vector } v_strm_29_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1409 \
    name v_strm_29_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_29_1 \
    op interface \
    ports { v_strm_29_1_dout { I 256 vector } v_strm_29_1_empty_n { I 1 bit } v_strm_29_1_read { O 1 bit } v_strm_29_1_num_data_valid { I 3 vector } v_strm_29_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1410 \
    name v_strm_30_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_30_0 \
    op interface \
    ports { v_strm_30_0_dout { I 256 vector } v_strm_30_0_empty_n { I 1 bit } v_strm_30_0_read { O 1 bit } v_strm_30_0_num_data_valid { I 3 vector } v_strm_30_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1411 \
    name v_strm_30_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_30_1 \
    op interface \
    ports { v_strm_30_1_dout { I 256 vector } v_strm_30_1_empty_n { I 1 bit } v_strm_30_1_read { O 1 bit } v_strm_30_1_num_data_valid { I 3 vector } v_strm_30_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1412 \
    name v_strm_31_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_31_0 \
    op interface \
    ports { v_strm_31_0_dout { I 256 vector } v_strm_31_0_empty_n { I 1 bit } v_strm_31_0_read { O 1 bit } v_strm_31_0_num_data_valid { I 3 vector } v_strm_31_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1413 \
    name v_strm_31_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_31_1 \
    op interface \
    ports { v_strm_31_1_dout { I 256 vector } v_strm_31_1_empty_n { I 1 bit } v_strm_31_1_read { O 1 bit } v_strm_31_1_num_data_valid { I 3 vector } v_strm_31_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1414 \
    name v_strm_32_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_32_0 \
    op interface \
    ports { v_strm_32_0_dout { I 256 vector } v_strm_32_0_empty_n { I 1 bit } v_strm_32_0_read { O 1 bit } v_strm_32_0_num_data_valid { I 3 vector } v_strm_32_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1415 \
    name v_strm_32_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_32_1 \
    op interface \
    ports { v_strm_32_1_dout { I 256 vector } v_strm_32_1_empty_n { I 1 bit } v_strm_32_1_read { O 1 bit } v_strm_32_1_num_data_valid { I 3 vector } v_strm_32_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1416 \
    name v_strm_33_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_33_0 \
    op interface \
    ports { v_strm_33_0_dout { I 256 vector } v_strm_33_0_empty_n { I 1 bit } v_strm_33_0_read { O 1 bit } v_strm_33_0_num_data_valid { I 3 vector } v_strm_33_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1417 \
    name v_strm_33_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_33_1 \
    op interface \
    ports { v_strm_33_1_dout { I 256 vector } v_strm_33_1_empty_n { I 1 bit } v_strm_33_1_read { O 1 bit } v_strm_33_1_num_data_valid { I 3 vector } v_strm_33_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1418 \
    name v_strm_34_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_34_0 \
    op interface \
    ports { v_strm_34_0_dout { I 256 vector } v_strm_34_0_empty_n { I 1 bit } v_strm_34_0_read { O 1 bit } v_strm_34_0_num_data_valid { I 3 vector } v_strm_34_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1419 \
    name v_strm_34_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_34_1 \
    op interface \
    ports { v_strm_34_1_dout { I 256 vector } v_strm_34_1_empty_n { I 1 bit } v_strm_34_1_read { O 1 bit } v_strm_34_1_num_data_valid { I 3 vector } v_strm_34_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1420 \
    name v_strm_35_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_35_0 \
    op interface \
    ports { v_strm_35_0_dout { I 256 vector } v_strm_35_0_empty_n { I 1 bit } v_strm_35_0_read { O 1 bit } v_strm_35_0_num_data_valid { I 3 vector } v_strm_35_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1421 \
    name v_strm_35_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_35_1 \
    op interface \
    ports { v_strm_35_1_dout { I 256 vector } v_strm_35_1_empty_n { I 1 bit } v_strm_35_1_read { O 1 bit } v_strm_35_1_num_data_valid { I 3 vector } v_strm_35_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1422 \
    name v_strm_36_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_36_0 \
    op interface \
    ports { v_strm_36_0_dout { I 256 vector } v_strm_36_0_empty_n { I 1 bit } v_strm_36_0_read { O 1 bit } v_strm_36_0_num_data_valid { I 3 vector } v_strm_36_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1423 \
    name v_strm_36_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_36_1 \
    op interface \
    ports { v_strm_36_1_dout { I 256 vector } v_strm_36_1_empty_n { I 1 bit } v_strm_36_1_read { O 1 bit } v_strm_36_1_num_data_valid { I 3 vector } v_strm_36_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1424 \
    name v_strm_37_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_37_0 \
    op interface \
    ports { v_strm_37_0_dout { I 256 vector } v_strm_37_0_empty_n { I 1 bit } v_strm_37_0_read { O 1 bit } v_strm_37_0_num_data_valid { I 3 vector } v_strm_37_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1425 \
    name v_strm_37_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_37_1 \
    op interface \
    ports { v_strm_37_1_dout { I 256 vector } v_strm_37_1_empty_n { I 1 bit } v_strm_37_1_read { O 1 bit } v_strm_37_1_num_data_valid { I 3 vector } v_strm_37_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1426 \
    name v_strm_38_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_38_0 \
    op interface \
    ports { v_strm_38_0_dout { I 256 vector } v_strm_38_0_empty_n { I 1 bit } v_strm_38_0_read { O 1 bit } v_strm_38_0_num_data_valid { I 3 vector } v_strm_38_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1427 \
    name v_strm_38_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_38_1 \
    op interface \
    ports { v_strm_38_1_dout { I 256 vector } v_strm_38_1_empty_n { I 1 bit } v_strm_38_1_read { O 1 bit } v_strm_38_1_num_data_valid { I 3 vector } v_strm_38_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1428 \
    name v_strm_39_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_39_0 \
    op interface \
    ports { v_strm_39_0_dout { I 256 vector } v_strm_39_0_empty_n { I 1 bit } v_strm_39_0_read { O 1 bit } v_strm_39_0_num_data_valid { I 3 vector } v_strm_39_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1429 \
    name v_strm_39_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_39_1 \
    op interface \
    ports { v_strm_39_1_dout { I 256 vector } v_strm_39_1_empty_n { I 1 bit } v_strm_39_1_read { O 1 bit } v_strm_39_1_num_data_valid { I 3 vector } v_strm_39_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1430 \
    name v_strm_40_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_40_0 \
    op interface \
    ports { v_strm_40_0_dout { I 256 vector } v_strm_40_0_empty_n { I 1 bit } v_strm_40_0_read { O 1 bit } v_strm_40_0_num_data_valid { I 3 vector } v_strm_40_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1431 \
    name v_strm_40_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_40_1 \
    op interface \
    ports { v_strm_40_1_dout { I 256 vector } v_strm_40_1_empty_n { I 1 bit } v_strm_40_1_read { O 1 bit } v_strm_40_1_num_data_valid { I 3 vector } v_strm_40_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1432 \
    name v_strm_41_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_41_0 \
    op interface \
    ports { v_strm_41_0_dout { I 256 vector } v_strm_41_0_empty_n { I 1 bit } v_strm_41_0_read { O 1 bit } v_strm_41_0_num_data_valid { I 3 vector } v_strm_41_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1433 \
    name v_strm_41_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_41_1 \
    op interface \
    ports { v_strm_41_1_dout { I 256 vector } v_strm_41_1_empty_n { I 1 bit } v_strm_41_1_read { O 1 bit } v_strm_41_1_num_data_valid { I 3 vector } v_strm_41_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1434 \
    name v_strm_42_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_42_0 \
    op interface \
    ports { v_strm_42_0_dout { I 256 vector } v_strm_42_0_empty_n { I 1 bit } v_strm_42_0_read { O 1 bit } v_strm_42_0_num_data_valid { I 3 vector } v_strm_42_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1435 \
    name v_strm_42_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_42_1 \
    op interface \
    ports { v_strm_42_1_dout { I 256 vector } v_strm_42_1_empty_n { I 1 bit } v_strm_42_1_read { O 1 bit } v_strm_42_1_num_data_valid { I 3 vector } v_strm_42_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1436 \
    name v_strm_43_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_43_0 \
    op interface \
    ports { v_strm_43_0_dout { I 256 vector } v_strm_43_0_empty_n { I 1 bit } v_strm_43_0_read { O 1 bit } v_strm_43_0_num_data_valid { I 3 vector } v_strm_43_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1437 \
    name v_strm_43_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_43_1 \
    op interface \
    ports { v_strm_43_1_dout { I 256 vector } v_strm_43_1_empty_n { I 1 bit } v_strm_43_1_read { O 1 bit } v_strm_43_1_num_data_valid { I 3 vector } v_strm_43_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1438 \
    name v_strm_44_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_44_0 \
    op interface \
    ports { v_strm_44_0_dout { I 256 vector } v_strm_44_0_empty_n { I 1 bit } v_strm_44_0_read { O 1 bit } v_strm_44_0_num_data_valid { I 3 vector } v_strm_44_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1439 \
    name v_strm_44_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_44_1 \
    op interface \
    ports { v_strm_44_1_dout { I 256 vector } v_strm_44_1_empty_n { I 1 bit } v_strm_44_1_read { O 1 bit } v_strm_44_1_num_data_valid { I 3 vector } v_strm_44_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1440 \
    name v_strm_45_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_45_0 \
    op interface \
    ports { v_strm_45_0_dout { I 256 vector } v_strm_45_0_empty_n { I 1 bit } v_strm_45_0_read { O 1 bit } v_strm_45_0_num_data_valid { I 3 vector } v_strm_45_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1441 \
    name v_strm_45_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_45_1 \
    op interface \
    ports { v_strm_45_1_dout { I 256 vector } v_strm_45_1_empty_n { I 1 bit } v_strm_45_1_read { O 1 bit } v_strm_45_1_num_data_valid { I 3 vector } v_strm_45_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1442 \
    name v_strm_46_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_46_0 \
    op interface \
    ports { v_strm_46_0_dout { I 256 vector } v_strm_46_0_empty_n { I 1 bit } v_strm_46_0_read { O 1 bit } v_strm_46_0_num_data_valid { I 3 vector } v_strm_46_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1443 \
    name v_strm_46_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_46_1 \
    op interface \
    ports { v_strm_46_1_dout { I 256 vector } v_strm_46_1_empty_n { I 1 bit } v_strm_46_1_read { O 1 bit } v_strm_46_1_num_data_valid { I 3 vector } v_strm_46_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1444 \
    name v_strm_47_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_47_0 \
    op interface \
    ports { v_strm_47_0_dout { I 256 vector } v_strm_47_0_empty_n { I 1 bit } v_strm_47_0_read { O 1 bit } v_strm_47_0_num_data_valid { I 3 vector } v_strm_47_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1445 \
    name v_strm_47_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_47_1 \
    op interface \
    ports { v_strm_47_1_dout { I 256 vector } v_strm_47_1_empty_n { I 1 bit } v_strm_47_1_read { O 1 bit } v_strm_47_1_num_data_valid { I 3 vector } v_strm_47_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1446 \
    name v_strm_48_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_48_0 \
    op interface \
    ports { v_strm_48_0_dout { I 256 vector } v_strm_48_0_empty_n { I 1 bit } v_strm_48_0_read { O 1 bit } v_strm_48_0_num_data_valid { I 3 vector } v_strm_48_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1447 \
    name v_strm_48_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_48_1 \
    op interface \
    ports { v_strm_48_1_dout { I 256 vector } v_strm_48_1_empty_n { I 1 bit } v_strm_48_1_read { O 1 bit } v_strm_48_1_num_data_valid { I 3 vector } v_strm_48_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1448 \
    name v_strm_49_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_49_0 \
    op interface \
    ports { v_strm_49_0_dout { I 256 vector } v_strm_49_0_empty_n { I 1 bit } v_strm_49_0_read { O 1 bit } v_strm_49_0_num_data_valid { I 3 vector } v_strm_49_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1449 \
    name v_strm_49_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_49_1 \
    op interface \
    ports { v_strm_49_1_dout { I 256 vector } v_strm_49_1_empty_n { I 1 bit } v_strm_49_1_read { O 1 bit } v_strm_49_1_num_data_valid { I 3 vector } v_strm_49_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1450 \
    name v_strm_50_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_50_0 \
    op interface \
    ports { v_strm_50_0_dout { I 256 vector } v_strm_50_0_empty_n { I 1 bit } v_strm_50_0_read { O 1 bit } v_strm_50_0_num_data_valid { I 3 vector } v_strm_50_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1451 \
    name v_strm_50_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_50_1 \
    op interface \
    ports { v_strm_50_1_dout { I 256 vector } v_strm_50_1_empty_n { I 1 bit } v_strm_50_1_read { O 1 bit } v_strm_50_1_num_data_valid { I 3 vector } v_strm_50_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1452 \
    name v_strm_51_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_51_0 \
    op interface \
    ports { v_strm_51_0_dout { I 256 vector } v_strm_51_0_empty_n { I 1 bit } v_strm_51_0_read { O 1 bit } v_strm_51_0_num_data_valid { I 3 vector } v_strm_51_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1453 \
    name v_strm_51_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_51_1 \
    op interface \
    ports { v_strm_51_1_dout { I 256 vector } v_strm_51_1_empty_n { I 1 bit } v_strm_51_1_read { O 1 bit } v_strm_51_1_num_data_valid { I 3 vector } v_strm_51_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1454 \
    name v_strm_52_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_52_0 \
    op interface \
    ports { v_strm_52_0_dout { I 256 vector } v_strm_52_0_empty_n { I 1 bit } v_strm_52_0_read { O 1 bit } v_strm_52_0_num_data_valid { I 3 vector } v_strm_52_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1455 \
    name v_strm_52_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_52_1 \
    op interface \
    ports { v_strm_52_1_dout { I 256 vector } v_strm_52_1_empty_n { I 1 bit } v_strm_52_1_read { O 1 bit } v_strm_52_1_num_data_valid { I 3 vector } v_strm_52_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1456 \
    name v_strm_53_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_53_0 \
    op interface \
    ports { v_strm_53_0_dout { I 256 vector } v_strm_53_0_empty_n { I 1 bit } v_strm_53_0_read { O 1 bit } v_strm_53_0_num_data_valid { I 3 vector } v_strm_53_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1457 \
    name v_strm_53_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_53_1 \
    op interface \
    ports { v_strm_53_1_dout { I 256 vector } v_strm_53_1_empty_n { I 1 bit } v_strm_53_1_read { O 1 bit } v_strm_53_1_num_data_valid { I 3 vector } v_strm_53_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1458 \
    name v_strm_54_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_54_0 \
    op interface \
    ports { v_strm_54_0_dout { I 256 vector } v_strm_54_0_empty_n { I 1 bit } v_strm_54_0_read { O 1 bit } v_strm_54_0_num_data_valid { I 3 vector } v_strm_54_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1459 \
    name v_strm_54_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_54_1 \
    op interface \
    ports { v_strm_54_1_dout { I 256 vector } v_strm_54_1_empty_n { I 1 bit } v_strm_54_1_read { O 1 bit } v_strm_54_1_num_data_valid { I 3 vector } v_strm_54_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1460 \
    name v_strm_55_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_55_0 \
    op interface \
    ports { v_strm_55_0_dout { I 256 vector } v_strm_55_0_empty_n { I 1 bit } v_strm_55_0_read { O 1 bit } v_strm_55_0_num_data_valid { I 3 vector } v_strm_55_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1461 \
    name v_strm_55_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_55_1 \
    op interface \
    ports { v_strm_55_1_dout { I 256 vector } v_strm_55_1_empty_n { I 1 bit } v_strm_55_1_read { O 1 bit } v_strm_55_1_num_data_valid { I 3 vector } v_strm_55_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1462 \
    name v_strm_56_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_56_0 \
    op interface \
    ports { v_strm_56_0_dout { I 256 vector } v_strm_56_0_empty_n { I 1 bit } v_strm_56_0_read { O 1 bit } v_strm_56_0_num_data_valid { I 3 vector } v_strm_56_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1463 \
    name v_strm_56_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_56_1 \
    op interface \
    ports { v_strm_56_1_dout { I 256 vector } v_strm_56_1_empty_n { I 1 bit } v_strm_56_1_read { O 1 bit } v_strm_56_1_num_data_valid { I 3 vector } v_strm_56_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1464 \
    name v_strm_57_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_57_0 \
    op interface \
    ports { v_strm_57_0_dout { I 256 vector } v_strm_57_0_empty_n { I 1 bit } v_strm_57_0_read { O 1 bit } v_strm_57_0_num_data_valid { I 3 vector } v_strm_57_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1465 \
    name v_strm_57_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_57_1 \
    op interface \
    ports { v_strm_57_1_dout { I 256 vector } v_strm_57_1_empty_n { I 1 bit } v_strm_57_1_read { O 1 bit } v_strm_57_1_num_data_valid { I 3 vector } v_strm_57_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1466 \
    name v_strm_58_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_58_0 \
    op interface \
    ports { v_strm_58_0_dout { I 256 vector } v_strm_58_0_empty_n { I 1 bit } v_strm_58_0_read { O 1 bit } v_strm_58_0_num_data_valid { I 3 vector } v_strm_58_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1467 \
    name v_strm_58_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_58_1 \
    op interface \
    ports { v_strm_58_1_dout { I 256 vector } v_strm_58_1_empty_n { I 1 bit } v_strm_58_1_read { O 1 bit } v_strm_58_1_num_data_valid { I 3 vector } v_strm_58_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1468 \
    name v_strm_59_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_59_0 \
    op interface \
    ports { v_strm_59_0_dout { I 256 vector } v_strm_59_0_empty_n { I 1 bit } v_strm_59_0_read { O 1 bit } v_strm_59_0_num_data_valid { I 3 vector } v_strm_59_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1469 \
    name v_strm_59_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_59_1 \
    op interface \
    ports { v_strm_59_1_dout { I 256 vector } v_strm_59_1_empty_n { I 1 bit } v_strm_59_1_read { O 1 bit } v_strm_59_1_num_data_valid { I 3 vector } v_strm_59_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1470 \
    name v_strm_60_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_60_0 \
    op interface \
    ports { v_strm_60_0_dout { I 256 vector } v_strm_60_0_empty_n { I 1 bit } v_strm_60_0_read { O 1 bit } v_strm_60_0_num_data_valid { I 3 vector } v_strm_60_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1471 \
    name v_strm_60_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_60_1 \
    op interface \
    ports { v_strm_60_1_dout { I 256 vector } v_strm_60_1_empty_n { I 1 bit } v_strm_60_1_read { O 1 bit } v_strm_60_1_num_data_valid { I 3 vector } v_strm_60_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1472 \
    name v_strm_61_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_61_0 \
    op interface \
    ports { v_strm_61_0_dout { I 256 vector } v_strm_61_0_empty_n { I 1 bit } v_strm_61_0_read { O 1 bit } v_strm_61_0_num_data_valid { I 3 vector } v_strm_61_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1473 \
    name v_strm_61_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_61_1 \
    op interface \
    ports { v_strm_61_1_dout { I 256 vector } v_strm_61_1_empty_n { I 1 bit } v_strm_61_1_read { O 1 bit } v_strm_61_1_num_data_valid { I 3 vector } v_strm_61_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1474 \
    name v_strm_62_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_62_0 \
    op interface \
    ports { v_strm_62_0_dout { I 256 vector } v_strm_62_0_empty_n { I 1 bit } v_strm_62_0_read { O 1 bit } v_strm_62_0_num_data_valid { I 3 vector } v_strm_62_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1475 \
    name v_strm_62_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_62_1 \
    op interface \
    ports { v_strm_62_1_dout { I 256 vector } v_strm_62_1_empty_n { I 1 bit } v_strm_62_1_read { O 1 bit } v_strm_62_1_num_data_valid { I 3 vector } v_strm_62_1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1476 \
    name v_strm_63_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_63_0 \
    op interface \
    ports { v_strm_63_0_dout { I 256 vector } v_strm_63_0_empty_n { I 1 bit } v_strm_63_0_read { O 1 bit } v_strm_63_0_num_data_valid { I 3 vector } v_strm_63_0_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1477 \
    name v_strm_63_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_strm_63_1 \
    op interface \
    ports { v_strm_63_1_dout { I 256 vector } v_strm_63_1_empty_n { I 1 bit } v_strm_63_1_read { O 1 bit } v_strm_63_1_num_data_valid { I 3 vector } v_strm_63_1_fifo_cap { I 3 vector } } \
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


