
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [7:0] axis_block_sigs;
wire [18:0] inst_idle_sigs;
wire [10:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~proof_strm_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_GenerateProof_Pipeline_INPUT_STREAM_fu_121.root_strm_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_GenerateProof_Pipeline_INPUT_STREAM_fu_121.iv_strm_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_100_1_fu_56.witness_TDATA_blk_n;
assign axis_block_sigs[4] = ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_100_1_fu_56.d_strm_TDATA_blk_n;
assign axis_block_sigs[5] = ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_107_2_fu_72.d_strm_TDATA_blk_n;
assign axis_block_sigs[6] = ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_107_2_fu_72.circuit_TDATA_blk_n;
assign axis_block_sigs[7] = ~grp_GenerateProof_Pipeline_TRANSFER_STREAM_fu_167.proof_strm_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.ap_idle;
assign inst_block_sigs[0] = (grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.ap_continue) | ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_100_1_fu_56.d_strm_cp_blk_n | ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_107_2_fu_72.d_strm_cp_blk_n | ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_107_2_fu_72.a0_strm_blk_n | ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_107_2_fu_72.a1_strm_blk_n;
assign inst_idle_sigs[1] = grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_idle;
assign inst_block_sigs[1] = (grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_continue) | ~grp_ProverCircuitEval_fu_148.ToField_U0.a0_strm_blk_n | ~grp_ProverCircuitEval_fu_148.ToField_U0.a1_strm_blk_n | ~grp_ProverCircuitEval_fu_148.ToField_U0.a_strm_blk_n;
assign inst_idle_sigs[2] = grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_idle;
assign inst_block_sigs[2] = (grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_continue) | ~grp_ProverCircuitEval_fu_148.chal2_U0.d_strm_cp_blk_n | ~grp_ProverCircuitEval_fu_148.chal2_U0.grp_shake_extensible_fu_195.ch2_strm_blk_n;
assign inst_idle_sigs[3] = grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_idle;
assign inst_block_sigs[3] = (grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_continue) | ~grp_ProverCircuitEval_fu_148.aggregate_coef_U0.a_strm_blk_n | ~grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ch2_strm_blk_n;
assign inst_idle_sigs[4] = grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.ap_idle;
assign inst_block_sigs[4] = (grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.ap_continue);
assign inst_idle_sigs[5] = grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.ap_idle;
assign inst_block_sigs[5] = (grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.ap_continue);
assign inst_idle_sigs[6] = grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.ap_idle;
assign inst_block_sigs[6] = (grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.ap_continue);
assign inst_idle_sigs[7] = grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_idle;
assign inst_block_sigs[7] = (grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_done & ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_continue);
assign inst_idle_sigs[8] = grp_ProverCircuitEval_fu_148.ToField_U0.ap_idle;
assign inst_block_sigs[8] = (grp_ProverCircuitEval_fu_148.ToField_U0.ap_done & ~grp_ProverCircuitEval_fu_148.ToField_U0.ap_continue);
assign inst_idle_sigs[9] = grp_ProverCircuitEval_fu_148.chal2_U0.ap_idle;
assign inst_block_sigs[9] = (grp_ProverCircuitEval_fu_148.chal2_U0.ap_done & ~grp_ProverCircuitEval_fu_148.chal2_U0.ap_continue);
assign inst_idle_sigs[10] = grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ap_idle;
assign inst_block_sigs[10] = (grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ap_done & ~grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ap_continue);

assign inst_idle_sigs[11] = 1'b0;
assign inst_idle_sigs[12] = grp_GenerateProof_Pipeline_INPUT_STREAM_fu_121.ap_idle;
assign inst_idle_sigs[13] = grp_ProverCircuitEval_fu_148.ap_idle;
assign inst_idle_sigs[14] = grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_idle;
assign inst_idle_sigs[15] = grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.ap_idle;
assign inst_idle_sigs[16] = grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_100_1_fu_56.ap_idle;
assign inst_idle_sigs[17] = grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_107_2_fu_72.ap_idle;
assign inst_idle_sigs[18] = grp_GenerateProof_Pipeline_TRANSFER_STREAM_fu_167.ap_idle;

GenerateProof_hls_deadlock_idx0_monitor GenerateProof_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
