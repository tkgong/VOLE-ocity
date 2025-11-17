set SynModuleInfo {
  {SRCNAME GenerateProof_Pipeline_INPUT_STREAM MODELNAME GenerateProof_Pipeline_INPUT_STREAM RTLNAME GenerateProof_GenerateProof_Pipeline_INPUT_STREAM
    SUBMODULES {
      {MODELNAME GenerateProof_bitset_128ns_128ns_7ns_1ns_128_1_1 RTLNAME GenerateProof_bitset_128ns_128ns_7ns_1ns_128_1_1 BINDTYPE op TYPE bitset IMPL auto}
      {MODELNAME GenerateProof_flow_control_loop_pipe_sequential_init RTLNAME GenerateProof_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME GenerateProof_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME updateKey MODELNAME updateKey RTLNAME GenerateProof_updateKey
    SUBMODULES {
      {MODELNAME GenerateProof_updateKey_cipher_0_ssbox40_ROM_NP_BRAM_1R RTLNAME GenerateProof_updateKey_cipher_0_ssbox40_ROM_NP_BRAM_1R BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME GFMul2 MODELNAME GFMul2 RTLNAME GenerateProof_GFMul2}
  {SRCNAME process MODELNAME process_r RTLNAME GenerateProof_process_r
    SUBMODULES {
      {MODELNAME GenerateProof_process_r_cipher_0_ssbox_ROM_NP_BRAM_1R RTLNAME GenerateProof_process_r_cipher_0_ssbox_ROM_NP_BRAM_1R BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME encrypt MODELNAME encrypt RTLNAME GenerateProof_encrypt}
  {SRCNAME PRG.1 MODELNAME PRG_1 RTLNAME GenerateProof_PRG_1}
  {SRCNAME PRG MODELNAME PRG RTLNAME GenerateProof_PRG}
  {SRCNAME KECCAK_f MODELNAME KECCAK_f RTLNAME GenerateProof_KECCAK_f}
  {SRCNAME shakeXOF<32u> MODELNAME shakeXOF_32u_s RTLNAME GenerateProof_shakeXOF_32u_s
    SUBMODULES {
      {MODELNAME GenerateProof_udiv_128ns_9ns_128_132_1 RTLNAME GenerateProof_udiv_128ns_9ns_128_132_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 131 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ggm_small MODELNAME ggm_small RTLNAME GenerateProof_ggm_small
    SUBMODULES {
      {MODELNAME GenerateProof_fifo_w64_d4_S RTLNAME GenerateProof_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgStrm_U}
      {MODELNAME GenerateProof_fifo_w128_d2_S RTLNAME GenerateProof_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgLenStrm_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S RTLNAME GenerateProof_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endMsgLenStrm_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S RTLNAME GenerateProof_fifo_w256_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME digestStrm_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S RTLNAME GenerateProof_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endDigestStrm_U}
    }
  }
  {SRCNAME ggm_tree_Pipeline_VITIS_LOOP_188_1 MODELNAME ggm_tree_Pipeline_VITIS_LOOP_188_1 RTLNAME GenerateProof_ggm_tree_Pipeline_VITIS_LOOP_188_1}
  {SRCNAME ggm_tree MODELNAME ggm_tree RTLNAME GenerateProof_ggm_tree
    SUBMODULES {
      {MODELNAME GenerateProof_fifo_w64_d2_S RTLNAME GenerateProof_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgStrm_U}
      {MODELNAME GenerateProof_fifo_w128_d2_S_x RTLNAME GenerateProof_fifo_w128_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgLenStrm_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S_x RTLNAME GenerateProof_fifo_w1_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endMsgLenStrm_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x RTLNAME GenerateProof_fifo_w256_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME digestStrm_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S_x RTLNAME GenerateProof_fifo_w1_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endDigestStrm_U}
      {MODELNAME GenerateProof_fifo_w64_d2_S RTLNAME GenerateProof_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgStrm_1_U}
      {MODELNAME GenerateProof_fifo_w128_d2_S_x RTLNAME GenerateProof_fifo_w128_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgLenStrm_1_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S_x RTLNAME GenerateProof_fifo_w1_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endMsgLenStrm_1_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x RTLNAME GenerateProof_fifo_w256_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME digestStrm_1_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S_x RTLNAME GenerateProof_fifo_w1_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endDigestStrm_1_U}
      {MODELNAME GenerateProof_fifo_w128_d4_S RTLNAME GenerateProof_fifo_w128_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME root_strm_U}
      {MODELNAME GenerateProof_fifo_w128_d4_S RTLNAME GenerateProof_fifo_w128_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME com_strm_U}
      {MODELNAME GenerateProof_fifo_w256_d4_S RTLNAME GenerateProof_fifo_w256_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME h_strm_U}
    }
  }
  {SRCNAME chal1 MODELNAME chal1 RTLNAME GenerateProof_chal1
    SUBMODULES {
      {MODELNAME GenerateProof_fifo_w64_d16_S RTLNAME GenerateProof_fifo_w64_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgStrm_U}
      {MODELNAME GenerateProof_fifo_w128_d2_S_x0 RTLNAME GenerateProof_fifo_w128_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgLenStrm_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S_x0 RTLNAME GenerateProof_fifo_w1_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endMsgLenStrm_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x0 RTLNAME GenerateProof_fifo_w256_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME digestStrm_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S_x0 RTLNAME GenerateProof_fifo_w1_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endDigestStrm_U}
    }
  }
  {SRCNAME expand_seed_Pipeline_READ_SEEDS MODELNAME expand_seed_Pipeline_READ_SEEDS RTLNAME GenerateProof_expand_seed_Pipeline_READ_SEEDS}
  {SRCNAME expand_seed_Pipeline_PROCESS_CHUNKS MODELNAME expand_seed_Pipeline_PROCESS_CHUNKS RTLNAME GenerateProof_expand_seed_Pipeline_PROCESS_CHUNKS}
  {SRCNAME expand_seed MODELNAME expand_seed RTLNAME GenerateProof_expand_seed
    SUBMODULES {
      {MODELNAME GenerateProof_expand_seed_sd_RAM_AUTO_1R1W RTLNAME GenerateProof_expand_seed_sd_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME build_VOLE MODELNAME build_VOLE RTLNAME GenerateProof_build_VOLE
    SUBMODULES {
      {MODELNAME GenerateProof_flow_control_loop_pipe RTLNAME GenerateProof_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME GenerateProof_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME mem_transfer_Pipeline_UNPACK_U MODELNAME mem_transfer_Pipeline_UNPACK_U RTLNAME GenerateProof_mem_transfer_Pipeline_UNPACK_U
    SUBMODULES {
      {MODELNAME GenerateProof_bitselect_1ns_256ns_8ns_1_1_1 RTLNAME GenerateProof_bitselect_1ns_256ns_8ns_1_1_1 BINDTYPE op TYPE bitselect IMPL auto}
    }
  }
  {SRCNAME mem_transfer_Pipeline_WRITE_V MODELNAME mem_transfer_Pipeline_WRITE_V RTLNAME GenerateProof_mem_transfer_Pipeline_WRITE_V}
  {SRCNAME mem_transfer MODELNAME mem_transfer RTLNAME GenerateProof_mem_transfer}
  {SRCNAME ConvertToVOLE MODELNAME ConvertToVOLE RTLNAME GenerateProof_ConvertToVOLE
    SUBMODULES {
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_strm_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_strm_1_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_strm_2_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_strm_3_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME u_strm_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_1_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_2_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_3_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_4_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_5_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_6_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_7_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_8_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_9_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_10_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_11_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_12_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_13_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_14_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_15_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_16_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_17_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_18_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_19_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_20_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_21_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_22_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_23_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_24_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_25_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_26_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_27_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_28_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_29_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_30_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_31_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_32_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_33_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_34_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_35_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_36_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_37_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_38_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_39_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_40_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_41_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_42_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_43_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_44_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_45_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_46_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_47_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_48_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_49_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_50_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_51_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_52_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_53_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_54_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_55_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_56_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_57_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_58_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_59_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_60_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_61_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_62_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_63_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_64_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_65_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_66_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_67_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_68_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_69_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_70_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_71_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_72_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_73_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_74_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_75_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_76_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_77_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_78_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_79_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_80_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_81_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_82_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_83_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_84_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_85_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_86_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_87_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_88_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_89_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_90_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_91_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_92_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_93_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_94_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_95_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_96_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_97_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_98_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_99_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_100_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_101_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_102_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_103_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_104_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_105_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_106_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_107_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_108_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_109_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_110_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_111_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_112_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_113_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_114_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_115_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_116_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_117_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_118_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_119_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_120_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_121_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_122_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_123_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_124_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_125_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_126_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x1 RTLNAME GenerateProof_fifo_w256_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_strm_127_U}
      {MODELNAME GenerateProof_start_for_build_VOLE_U0 RTLNAME GenerateProof_start_for_build_VOLE_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_build_VOLE_U0_U}
      {MODELNAME GenerateProof_start_for_mem_transfer_U0 RTLNAME GenerateProof_start_for_mem_transfer_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_mem_transfer_U0_U}
    }
  }
  {SRCNAME VOLECommit MODELNAME VOLECommit RTLNAME GenerateProof_VOLECommit
    SUBMODULES {
      {MODELNAME GenerateProof_sparsemux_129_6_2_1_1 RTLNAME GenerateProof_sparsemux_129_6_2_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME GenerateProof_sparsemux_13_3_128_1_1 RTLNAME GenerateProof_sparsemux_13_3_128_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME GenerateProof_sparsemux_129_6_128_1_1 RTLNAME GenerateProof_sparsemux_129_6_128_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME GenerateProof_sparsemux_9_2_128_1_1 RTLNAME GenerateProof_sparsemux_9_2_128_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME GenerateProof_fifo_w128_d2_S_x1 RTLNAME GenerateProof_fifo_w128_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME seed_strm_U}
    }
  }
  {SRCNAME gf128_clmul MODELNAME gf128_clmul RTLNAME GenerateProof_gf128_clmul}
  {SRCNAME gf128_multiply MODELNAME gf128_multiply RTLNAME GenerateProof_gf128_multiply}
  {SRCNAME combineVOLEs MODELNAME combineVOLEs RTLNAME GenerateProof_combineVOLEs}
  {SRCNAME compute_mask MODELNAME compute_mask RTLNAME GenerateProof_compute_mask
    SUBMODULES {
      {MODELNAME GenerateProof_compute_mask_ur_RAM_AUTO_1R1W RTLNAME GenerateProof_compute_mask_ur_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME EvalCircuit_Pipeline_VITIS_LOOP_100_1 MODELNAME EvalCircuit_Pipeline_VITIS_LOOP_100_1 RTLNAME GenerateProof_EvalCircuit_Pipeline_VITIS_LOOP_100_1}
  {SRCNAME EvalCircuit_Pipeline_VITIS_LOOP_107_2 MODELNAME EvalCircuit_Pipeline_VITIS_LOOP_107_2 RTLNAME GenerateProof_EvalCircuit_Pipeline_VITIS_LOOP_107_2}
  {SRCNAME EvalCircuit MODELNAME EvalCircuit RTLNAME GenerateProof_EvalCircuit
    SUBMODULES {
      {MODELNAME GenerateProof_EvalCircuit_extended_witness_RAM_1WNR_AUTO_1R1W RTLNAME GenerateProof_EvalCircuit_extended_witness_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ProverCircuitEval_Block_entry_u_0_arg_proc MODELNAME ProverCircuitEval_Block_entry_u_0_arg_proc RTLNAME GenerateProof_ProverCircuitEval_Block_entry_u_0_arg_proc}
  {SRCNAME ToField MODELNAME ToField RTLNAME GenerateProof_ToField}
  {SRCNAME shake_extensible_Pipeline_VITIS_LOOP_784_4 MODELNAME shake_extensible_Pipeline_VITIS_LOOP_784_4 RTLNAME GenerateProof_shake_extensible_Pipeline_VITIS_LOOP_784_4
    SUBMODULES {
      {MODELNAME GenerateProof_sparsemux_35_5_64_1_1 RTLNAME GenerateProof_sparsemux_35_5_64_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME shake_extensible_Pipeline_VITIS_LOOP_776_3 MODELNAME shake_extensible_Pipeline_VITIS_LOOP_776_3 RTLNAME GenerateProof_shake_extensible_Pipeline_VITIS_LOOP_776_3}
  {SRCNAME shake_extensible MODELNAME shake_extensible RTLNAME GenerateProof_shake_extensible}
  {SRCNAME chal2 MODELNAME chal2 RTLNAME GenerateProof_chal2
    SUBMODULES {
      {MODELNAME GenerateProof_bitset_64ns_64ns_6ns_1ns_64_1_1 RTLNAME GenerateProof_bitset_64ns_64ns_6ns_1ns_64_1_1 BINDTYPE op TYPE bitset IMPL auto}
      {MODELNAME GenerateProof_fifo_w64_d2_S_x RTLNAME GenerateProof_fifo_w64_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgStrm_U}
      {MODELNAME GenerateProof_fifo_w128_d2_S_x2 RTLNAME GenerateProof_fifo_w128_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME msgLenStrm_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S_x1 RTLNAME GenerateProof_fifo_w1_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endMsgLenStrm_U}
      {MODELNAME GenerateProof_fifo_w128_d2_S_x2 RTLNAME GenerateProof_fifo_w128_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME outLenStrm_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S_x1 RTLNAME GenerateProof_fifo_w1_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endOutLenStrm_U}
      {MODELNAME GenerateProof_fifo_w1_d2_S_x1 RTLNAME GenerateProof_fifo_w1_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME endDigestStrm_internal_U}
    }
  }
  {SRCNAME aggregate_coef MODELNAME aggregate_coef RTLNAME GenerateProof_aggregate_coef}
  {SRCNAME ProverCircuitEval MODELNAME ProverCircuitEval RTLNAME GenerateProof_ProverCircuitEval
    SUBMODULES {
      {MODELNAME GenerateProof_fifo_w1_d2_S_x2 RTLNAME GenerateProof_fifo_w1_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME d_strm_cp_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x2 RTLNAME GenerateProof_fifo_w256_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME a0_strm_U}
      {MODELNAME GenerateProof_fifo_w128_d2_S_x3 RTLNAME GenerateProof_fifo_w128_d2_S_x3 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME a1_strm_U}
      {MODELNAME GenerateProof_fifo_w128_d3_S RTLNAME GenerateProof_fifo_w128_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME u_mask_U}
      {MODELNAME GenerateProof_fifo_w128_d3_S RTLNAME GenerateProof_fifo_w128_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_mask_U}
      {MODELNAME GenerateProof_fifo_w256_d2_S_x2 RTLNAME GenerateProof_fifo_w256_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME a_strm_U}
      {MODELNAME GenerateProof_fifo_w128_d2_S_x3 RTLNAME GenerateProof_fifo_w128_d2_S_x3 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ch2_strm_U}
      {MODELNAME GenerateProof_start_for_ToField_U0 RTLNAME GenerateProof_start_for_ToField_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ToField_U0_U}
      {MODELNAME GenerateProof_start_for_chal2_U0 RTLNAME GenerateProof_start_for_chal2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_chal2_U0_U}
    }
  }
  {SRCNAME GenerateProof_Pipeline_TRANSFER_STREAM MODELNAME GenerateProof_Pipeline_TRANSFER_STREAM RTLNAME GenerateProof_GenerateProof_Pipeline_TRANSFER_STREAM}
  {SRCNAME GenerateProof MODELNAME GenerateProof RTLNAME GenerateProof IS_TOP 1
    SUBMODULES {
      {MODELNAME GenerateProof_u_RAM_2P_BRAM_1R1W RTLNAME GenerateProof_u_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GenerateProof_V_RAM_2P_URAM_1R1W RTLNAME GenerateProof_V_RAM_2P_URAM_1R1W BINDTYPE storage TYPE ram_2p IMPL uram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GenerateProof_fifo_w128_d2_S_x4 RTLNAME GenerateProof_fifo_w128_d2_S_x4 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME path_strm_U}
      {MODELNAME GenerateProof_control_s_axi RTLNAME GenerateProof_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME GenerateProof_regslice_both RTLNAME GenerateProof_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
