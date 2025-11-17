
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [1:0] proc_0_data_FIFO_blk;
    wire [1:0] proc_0_data_PIPO_blk;
    wire [1:0] proc_0_start_FIFO_blk;
    wire [1:0] proc_0_TLF_FIFO_blk;
    wire [1:0] proc_0_input_sync_blk;
    wire [1:0] proc_0_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_0;
    reg [1:0] proc_dep_vld_vec_0_reg;
    wire [1:0] in_chan_dep_vld_vec_0;
    wire [21:0] in_chan_dep_data_vec_0;
    wire [1:0] token_in_vec_0;
    wire [1:0] out_chan_dep_vld_vec_0;
    wire [10:0] out_chan_dep_data_0;
    wire [1:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [10:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [10:0] dep_chan_data_2_0;
    wire token_2_0;
    wire [2:0] proc_1_data_FIFO_blk;
    wire [2:0] proc_1_data_PIPO_blk;
    wire [2:0] proc_1_start_FIFO_blk;
    wire [2:0] proc_1_TLF_FIFO_blk;
    wire [2:0] proc_1_input_sync_blk;
    wire [2:0] proc_1_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_1;
    reg [2:0] proc_dep_vld_vec_1_reg;
    wire [2:0] in_chan_dep_vld_vec_1;
    wire [32:0] in_chan_dep_data_vec_1;
    wire [2:0] token_in_vec_1;
    wire [2:0] out_chan_dep_vld_vec_1;
    wire [10:0] out_chan_dep_data_1;
    wire [2:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [10:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [10:0] dep_chan_data_2_1;
    wire token_2_1;
    wire dep_chan_vld_3_1;
    wire [10:0] dep_chan_data_3_1;
    wire token_3_1;
    wire [2:0] proc_2_data_FIFO_blk;
    wire [2:0] proc_2_data_PIPO_blk;
    wire [2:0] proc_2_start_FIFO_blk;
    wire [2:0] proc_2_TLF_FIFO_blk;
    wire [2:0] proc_2_input_sync_blk;
    wire [2:0] proc_2_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_2;
    reg [2:0] proc_dep_vld_vec_2_reg;
    wire [2:0] in_chan_dep_vld_vec_2;
    wire [32:0] in_chan_dep_data_vec_2;
    wire [2:0] token_in_vec_2;
    wire [2:0] out_chan_dep_vld_vec_2;
    wire [10:0] out_chan_dep_data_2;
    wire [2:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [10:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_1_2;
    wire [10:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [10:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [1:0] proc_3_data_FIFO_blk;
    wire [1:0] proc_3_data_PIPO_blk;
    wire [1:0] proc_3_start_FIFO_blk;
    wire [1:0] proc_3_TLF_FIFO_blk;
    wire [1:0] proc_3_input_sync_blk;
    wire [1:0] proc_3_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_3;
    reg [1:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [21:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [1:0] out_chan_dep_vld_vec_3;
    wire [10:0] out_chan_dep_data_3;
    wire [1:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_1_3;
    wire [10:0] dep_chan_data_1_3;
    wire token_1_3;
    wire dep_chan_vld_2_3;
    wire [10:0] dep_chan_data_2_3;
    wire token_2_3;
    wire [0:0] proc_4_data_FIFO_blk;
    wire [0:0] proc_4_data_PIPO_blk;
    wire [0:0] proc_4_start_FIFO_blk;
    wire [0:0] proc_4_TLF_FIFO_blk;
    wire [0:0] proc_4_input_sync_blk;
    wire [0:0] proc_4_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_4;
    reg [0:0] proc_dep_vld_vec_4_reg;
    wire [0:0] in_chan_dep_vld_vec_4;
    wire [10:0] in_chan_dep_data_vec_4;
    wire [0:0] token_in_vec_4;
    wire [0:0] out_chan_dep_vld_vec_4;
    wire [10:0] out_chan_dep_data_4;
    wire [0:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_5_4;
    wire [10:0] dep_chan_data_5_4;
    wire token_5_4;
    wire [1:0] proc_5_data_FIFO_blk;
    wire [1:0] proc_5_data_PIPO_blk;
    wire [1:0] proc_5_start_FIFO_blk;
    wire [1:0] proc_5_TLF_FIFO_blk;
    wire [1:0] proc_5_input_sync_blk;
    wire [1:0] proc_5_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_5;
    reg [1:0] proc_dep_vld_vec_5_reg;
    wire [1:0] in_chan_dep_vld_vec_5;
    wire [21:0] in_chan_dep_data_vec_5;
    wire [1:0] token_in_vec_5;
    wire [1:0] out_chan_dep_vld_vec_5;
    wire [10:0] out_chan_dep_data_5;
    wire [1:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_4_5;
    wire [10:0] dep_chan_data_4_5;
    wire token_4_5;
    wire dep_chan_vld_6_5;
    wire [10:0] dep_chan_data_6_5;
    wire token_6_5;
    wire [0:0] proc_6_data_FIFO_blk;
    wire [0:0] proc_6_data_PIPO_blk;
    wire [0:0] proc_6_start_FIFO_blk;
    wire [0:0] proc_6_TLF_FIFO_blk;
    wire [0:0] proc_6_input_sync_blk;
    wire [0:0] proc_6_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_6;
    reg [0:0] proc_dep_vld_vec_6_reg;
    wire [0:0] in_chan_dep_vld_vec_6;
    wire [10:0] in_chan_dep_data_vec_6;
    wire [0:0] token_in_vec_6;
    wire [0:0] out_chan_dep_vld_vec_6;
    wire [10:0] out_chan_dep_data_6;
    wire [0:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_5_6;
    wire [10:0] dep_chan_data_5_6;
    wire token_5_6;
    wire [2:0] proc_7_data_FIFO_blk;
    wire [2:0] proc_7_data_PIPO_blk;
    wire [2:0] proc_7_start_FIFO_blk;
    wire [2:0] proc_7_TLF_FIFO_blk;
    wire [2:0] proc_7_input_sync_blk;
    wire [2:0] proc_7_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_7;
    reg [2:0] proc_dep_vld_vec_7_reg;
    wire [2:0] in_chan_dep_vld_vec_7;
    wire [32:0] in_chan_dep_data_vec_7;
    wire [2:0] token_in_vec_7;
    wire [2:0] out_chan_dep_vld_vec_7;
    wire [10:0] out_chan_dep_data_7;
    wire [2:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_8_7;
    wire [10:0] dep_chan_data_8_7;
    wire token_8_7;
    wire dep_chan_vld_9_7;
    wire [10:0] dep_chan_data_9_7;
    wire token_9_7;
    wire dep_chan_vld_10_7;
    wire [10:0] dep_chan_data_10_7;
    wire token_10_7;
    wire [1:0] proc_8_data_FIFO_blk;
    wire [1:0] proc_8_data_PIPO_blk;
    wire [1:0] proc_8_start_FIFO_blk;
    wire [1:0] proc_8_TLF_FIFO_blk;
    wire [1:0] proc_8_input_sync_blk;
    wire [1:0] proc_8_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_8;
    reg [1:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [21:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [1:0] out_chan_dep_vld_vec_8;
    wire [10:0] out_chan_dep_data_8;
    wire [1:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_7_8;
    wire [10:0] dep_chan_data_7_8;
    wire token_7_8;
    wire dep_chan_vld_10_8;
    wire [10:0] dep_chan_data_10_8;
    wire token_10_8;
    wire [1:0] proc_9_data_FIFO_blk;
    wire [1:0] proc_9_data_PIPO_blk;
    wire [1:0] proc_9_start_FIFO_blk;
    wire [1:0] proc_9_TLF_FIFO_blk;
    wire [1:0] proc_9_input_sync_blk;
    wire [1:0] proc_9_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_9;
    reg [1:0] proc_dep_vld_vec_9_reg;
    wire [1:0] in_chan_dep_vld_vec_9;
    wire [21:0] in_chan_dep_data_vec_9;
    wire [1:0] token_in_vec_9;
    wire [1:0] out_chan_dep_vld_vec_9;
    wire [10:0] out_chan_dep_data_9;
    wire [1:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_7_9;
    wire [10:0] dep_chan_data_7_9;
    wire token_7_9;
    wire dep_chan_vld_10_9;
    wire [10:0] dep_chan_data_10_9;
    wire token_10_9;
    wire [2:0] proc_10_data_FIFO_blk;
    wire [2:0] proc_10_data_PIPO_blk;
    wire [2:0] proc_10_start_FIFO_blk;
    wire [2:0] proc_10_TLF_FIFO_blk;
    wire [2:0] proc_10_input_sync_blk;
    wire [2:0] proc_10_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_10;
    reg [2:0] proc_dep_vld_vec_10_reg;
    wire [2:0] in_chan_dep_vld_vec_10;
    wire [32:0] in_chan_dep_data_vec_10;
    wire [2:0] token_in_vec_10;
    wire [2:0] out_chan_dep_vld_vec_10;
    wire [10:0] out_chan_dep_data_10;
    wire [2:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_7_10;
    wire [10:0] dep_chan_data_7_10;
    wire token_7_10;
    wire dep_chan_vld_8_10;
    wire [10:0] dep_chan_data_8_10;
    wire token_8_10;
    wire dep_chan_vld_9_10;
    wire [10:0] dep_chan_data_9_10;
    wire token_9_10;
    wire [10:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [10:0] origin;

    reg ap_done_reg_0;// for module grp_ProverCircuitEval_fu_148.aggregate_coef_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ap_done & ~grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_done & ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.ap_done == 1'b1 && grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_done == 1'b1 && grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.ap_done == 1'b1 && grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.ap_done == 1'b1 && grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

reg [15:0] trans_in_cnt_4;// for process grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_4 <= 16'h0;
    end
    else if (grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.start_write == 1'b1) begin
        trans_in_cnt_4 <= trans_in_cnt_4 + 16'h1;
    end
    else begin
        trans_in_cnt_4 <= trans_in_cnt_4;
    end
end

reg [15:0] trans_out_cnt_4;// for process grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_4 <= 16'h0;
    end
    else if (grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_done == 1'b1 && grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_4 <= trans_out_cnt_4 + 16'h1;
    end
    else begin
        trans_out_cnt_4 <= trans_out_cnt_4;
    end
end

    // Process: grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 0, 2, 2) GenerateProof_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.k_strm_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_key_to_mem_U0_U.if_full_n & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.ap_start & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_key_to_mem_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.leaf_strm_blk_n);
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_seed_gen_U0_U.if_full_n & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.ap_start & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.tree_expansion_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_seed_gen_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0;
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[10 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[21 : 11] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[0];
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[1];

    // Process: grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 1, 3, 3) GenerateProof_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.leaf_strm_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_seed_gen_U0_U.if_empty_n & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_idle & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_seed_gen_U0_U.if_write);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.com_strm_cp_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_com_to_mem_U0_U.if_full_n & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_start & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_com_to_mem_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0 | (ap_done_reg_1 & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_done);
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0;
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0;
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0;
    assign proc_1_output_sync_blk[2] = 1'b0 | (ap_done_reg_1 & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_done);
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[10 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[21 : 11] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_3_1;
    assign in_chan_dep_data_vec_1[32 : 22] = dep_chan_data_3_1;
    assign token_in_vec_1[2] = token_3_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_3 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_3 = out_chan_dep_data_1;
    assign token_1_3 = token_out_vec_1[1];
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[2];

    // Process: grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 2, 3, 3) GenerateProof_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.k_strm_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_key_to_mem_U0_U.if_empty_n & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_idle & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_key_to_mem_U0_U.if_write);
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0;
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0 | (ap_done_reg_2 & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_done);
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0;
    assign proc_2_output_sync_blk[2] = 1'b0 | (ap_done_reg_2 & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_done);
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[10 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[21 : 11] = dep_chan_data_1_2;
    assign token_in_vec_2[1] = token_1_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[32 : 22] = dep_chan_data_3_2;
    assign token_in_vec_2[2] = token_3_2;
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[0];
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[1];
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[2];

    // Process: grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 3, 2, 2) GenerateProof_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.com_strm_cp_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_com_to_mem_U0_U.if_empty_n & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_idle & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.start_for_com_to_mem_U0_U.if_write);
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0 | (ap_done_reg_3 & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.seed_gen_U0.ap_done);
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0;
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0 | (ap_done_reg_3 & grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.com_to_mem_U0.ap_done & ~grp_VOLECommit_fu_131.grp_ggm_tree_fu_2770.grp_ggm_large_fu_1338.key_to_mem_U0.ap_done);
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_1_3;
    assign in_chan_dep_data_vec_3[10 : 0] = dep_chan_data_1_3;
    assign token_in_vec_3[0] = token_1_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[21 : 11] = dep_chan_data_2_3;
    assign token_in_vec_3[1] = token_2_3;
    assign dep_chan_vld_3_1 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_1 = out_chan_dep_data_3;
    assign token_3_1 = token_out_vec_3[0];
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[1];

    // Process: grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 4, 1, 1) GenerateProof_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.grp_expand_seed_Pipeline_PROCESS_CHUNKS_fu_102.r_strm_0_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.grp_expand_seed_Pipeline_PROCESS_CHUNKS_fu_102.r_strm_1_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.start_for_build_VOLE_U0_U.if_full_n & grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.ap_start & ~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.expand_seed_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.start_for_build_VOLE_U0_U.if_read);
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[10 : 0] = dep_chan_data_5_4;
    assign token_in_vec_4[0] = token_5_4;
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[0];

    // Process: grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 5, 2, 2) GenerateProof_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.r_strm_0_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.r_strm_1_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.start_for_build_VOLE_U0_U.if_empty_n & grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.ap_idle & ~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.start_for_build_VOLE_U0_U.if_write);
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.u_strm_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_0_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_1_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_2_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_3_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_4_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_5_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_6_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_7_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_8_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_9_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_10_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_11_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_12_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_13_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_14_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_15_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_16_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_17_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_18_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_19_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_20_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_21_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_22_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_23_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_24_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_25_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_26_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_27_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_28_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_29_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_30_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_31_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_32_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_33_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_34_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_35_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_36_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_37_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_38_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_39_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_40_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_41_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_42_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_43_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_44_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_45_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_46_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_47_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_48_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_49_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_50_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_51_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_52_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_53_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_54_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_55_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_56_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_57_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_58_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_59_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_60_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_61_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_62_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_63_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_64_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_65_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_66_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_67_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_68_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_69_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_70_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_71_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_72_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_73_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_74_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_75_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_76_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_77_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_78_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_79_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_80_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_81_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_82_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_83_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_84_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_85_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_86_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_87_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_88_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_89_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_90_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_91_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_92_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_93_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_94_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_95_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_96_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_97_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_98_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_99_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_100_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_101_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_102_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_103_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_104_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_105_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_106_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_107_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_108_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_109_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_110_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_111_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_112_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_113_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_114_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_115_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_116_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_117_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_118_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_119_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_120_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_121_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_122_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_123_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_124_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_125_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_126_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.v_strm_127_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.start_for_mem_transfer_U0_U.if_full_n & grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.ap_start & ~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.build_VOLE_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.start_for_mem_transfer_U0_U.if_read);
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[10 : 0] = dep_chan_data_4_5;
    assign token_in_vec_5[0] = token_4_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[21 : 11] = dep_chan_data_6_5;
    assign token_in_vec_5[1] = token_6_5;
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[0];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[1];

    // Process: grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 6, 1, 1) GenerateProof_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.u_strm_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_0_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_1_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_2_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_3_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_4_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_5_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_6_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_7_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_8_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_9_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_10_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_11_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_12_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_13_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_14_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_15_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_16_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_17_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_18_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_19_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_20_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_21_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_22_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_23_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_24_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_25_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_26_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_27_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_28_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_29_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_30_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_31_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_32_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_33_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_34_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_35_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_36_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_37_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_38_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_39_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_40_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_41_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_42_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_43_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_44_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_45_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_46_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_47_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_48_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_49_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_50_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_51_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_52_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_53_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_54_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_55_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_56_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_57_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_58_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_59_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_60_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_61_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_62_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_63_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_64_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_65_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_66_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_67_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_68_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_69_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_70_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_71_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_72_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_73_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_74_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_75_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_76_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_77_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_78_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_79_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_80_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_81_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_82_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_83_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_84_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_85_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_86_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_87_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_88_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_89_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_90_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_91_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_92_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_93_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_94_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_95_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_96_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_97_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_98_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_99_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_100_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_101_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_102_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_103_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_104_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_105_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_106_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_107_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_108_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_109_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_110_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_111_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_112_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_113_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_114_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_115_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_116_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_117_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_118_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_119_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_120_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_121_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_122_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_123_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_124_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_125_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_126_blk_n) | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.v_strm_127_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0 | (~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.start_for_mem_transfer_U0_U.if_empty_n & grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.mem_transfer_U0.ap_idle & ~grp_VOLECommit_fu_131.grp_ConvertToVOLE_fu_3305.start_for_mem_transfer_U0_U.if_write);
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[10 : 0] = dep_chan_data_5_6;
    assign token_in_vec_6[0] = token_5_6;
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[0];

    // Process: grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 7, 3, 3) GenerateProof_hls_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_100_1_fu_56.d_strm_cp_blk_n) | (~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_107_2_fu_72.d_strm_cp_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0 | (~grp_ProverCircuitEval_fu_148.start_for_chal2_U0_U.if_full_n & grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_start & ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~grp_ProverCircuitEval_fu_148.start_for_chal2_U0_U.if_read);
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0 | (~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_107_2_fu_72.a0_strm_blk_n) | (~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.grp_EvalCircuit_fu_60.grp_EvalCircuit_Pipeline_VITIS_LOOP_107_2_fu_72.a1_strm_blk_n);
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0 | (~grp_ProverCircuitEval_fu_148.start_for_ToField_U0_U.if_full_n & grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_start & ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~grp_ProverCircuitEval_fu_148.start_for_ToField_U0_U.if_read);
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    assign proc_7_data_FIFO_blk[2] = 1'b0;
    assign proc_7_data_PIPO_blk[2] = 1'b0;
    assign proc_7_start_FIFO_blk[2] = 1'b0;
    assign proc_7_TLF_FIFO_blk[2] = 1'b0;
    assign proc_7_input_sync_blk[2] = 1'b0;
    assign proc_7_output_sync_blk[2] = 1'b0 | (ap_done_reg_4 & grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_done & ~grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ap_done);
    assign proc_dep_vld_vec_7[2] = dl_detect_out ? proc_dep_vld_vec_7_reg[2] : (proc_7_data_FIFO_blk[2] | proc_7_data_PIPO_blk[2] | proc_7_start_FIFO_blk[2] | proc_7_TLF_FIFO_blk[2] | proc_7_input_sync_blk[2] | proc_7_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[10 : 0] = dep_chan_data_8_7;
    assign token_in_vec_7[0] = token_8_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_9_7;
    assign in_chan_dep_data_vec_7[21 : 11] = dep_chan_data_9_7;
    assign token_in_vec_7[1] = token_9_7;
    assign in_chan_dep_vld_vec_7[2] = dep_chan_vld_10_7;
    assign in_chan_dep_data_vec_7[32 : 22] = dep_chan_data_10_7;
    assign token_in_vec_7[2] = token_10_7;
    assign dep_chan_vld_7_9 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_9 = out_chan_dep_data_7;
    assign token_7_9 = token_out_vec_7[0];
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[1];
    assign dep_chan_vld_7_10 = out_chan_dep_vld_vec_7[2];
    assign dep_chan_data_7_10 = out_chan_dep_data_7;
    assign token_7_10 = token_out_vec_7[2];

    // Process: grp_ProverCircuitEval_fu_148.ToField_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 8, 2, 2) GenerateProof_hls_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~grp_ProverCircuitEval_fu_148.ToField_U0.a0_strm_blk_n) | (~grp_ProverCircuitEval_fu_148.ToField_U0.a1_strm_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0 | (~grp_ProverCircuitEval_fu_148.start_for_ToField_U0_U.if_empty_n & grp_ProverCircuitEval_fu_148.ToField_U0.ap_idle & ~grp_ProverCircuitEval_fu_148.start_for_ToField_U0_U.if_write);
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~grp_ProverCircuitEval_fu_148.ToField_U0.a_strm_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[10 : 0] = dep_chan_data_7_8;
    assign token_in_vec_8[0] = token_7_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_10_8;
    assign in_chan_dep_data_vec_8[21 : 11] = dep_chan_data_10_8;
    assign token_in_vec_8[1] = token_10_8;
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[0];
    assign dep_chan_vld_8_10 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_10 = out_chan_dep_data_8;
    assign token_8_10 = token_out_vec_8[1];

    // Process: grp_ProverCircuitEval_fu_148.chal2_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 9, 2, 2) GenerateProof_hls_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~grp_ProverCircuitEval_fu_148.chal2_U0.d_strm_cp_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0 | (~grp_ProverCircuitEval_fu_148.start_for_chal2_U0_U.if_empty_n & grp_ProverCircuitEval_fu_148.chal2_U0.ap_idle & ~grp_ProverCircuitEval_fu_148.start_for_chal2_U0_U.if_write);
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~grp_ProverCircuitEval_fu_148.chal2_U0.grp_shake_extensible_fu_195.ch2_strm_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_7_9;
    assign in_chan_dep_data_vec_9[10 : 0] = dep_chan_data_7_9;
    assign token_in_vec_9[0] = token_7_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[21 : 11] = dep_chan_data_10_9;
    assign token_in_vec_9[1] = token_10_9;
    assign dep_chan_vld_9_7 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_7 = out_chan_dep_data_9;
    assign token_9_7 = token_out_vec_9[0];
    assign dep_chan_vld_9_10 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_10 = out_chan_dep_data_9;
    assign token_9_10 = token_out_vec_9[1];

    // Process: grp_ProverCircuitEval_fu_148.aggregate_coef_U0
    GenerateProof_hls_deadlock_detect_unit #(11, 10, 3, 3) GenerateProof_hls_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0;
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0 | (~grp_ProverCircuitEval_fu_148.u_mask_U.if_empty_n & grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ap_idle & ~grp_ProverCircuitEval_fu_148.u_mask_U.if_write) | (~grp_ProverCircuitEval_fu_148.v_mask_U.if_empty_n & grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ap_idle & ~grp_ProverCircuitEval_fu_148.v_mask_U.if_write);
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0 | (ap_done_reg_0 & grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ap_done & ~grp_ProverCircuitEval_fu_148.ProverCircuitEval_Block_entry_u_0_arg_proc_U0.ap_done);
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~grp_ProverCircuitEval_fu_148.aggregate_coef_U0.a_strm_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    assign proc_10_data_FIFO_blk[2] = 1'b0 | (~grp_ProverCircuitEval_fu_148.aggregate_coef_U0.ch2_strm_blk_n);
    assign proc_10_data_PIPO_blk[2] = 1'b0;
    assign proc_10_start_FIFO_blk[2] = 1'b0;
    assign proc_10_TLF_FIFO_blk[2] = 1'b0;
    assign proc_10_input_sync_blk[2] = 1'b0;
    assign proc_10_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_10[2] = dl_detect_out ? proc_dep_vld_vec_10_reg[2] : (proc_10_data_FIFO_blk[2] | proc_10_data_PIPO_blk[2] | proc_10_start_FIFO_blk[2] | proc_10_TLF_FIFO_blk[2] | proc_10_input_sync_blk[2] | proc_10_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_7_10;
    assign in_chan_dep_data_vec_10[10 : 0] = dep_chan_data_7_10;
    assign token_in_vec_10[0] = token_7_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_8_10;
    assign in_chan_dep_data_vec_10[21 : 11] = dep_chan_data_8_10;
    assign token_in_vec_10[1] = token_8_10;
    assign in_chan_dep_vld_vec_10[2] = dep_chan_vld_9_10;
    assign in_chan_dep_data_vec_10[32 : 22] = dep_chan_data_9_10;
    assign token_in_vec_10[2] = token_9_10;
    assign dep_chan_vld_10_7 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_7 = out_chan_dep_data_10;
    assign token_10_7 = token_out_vec_10[0];
    assign dep_chan_vld_10_8 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_8 = out_chan_dep_data_10;
    assign token_10_8 = token_out_vec_10[1];
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[2];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[2];


`include "GenerateProof_hls_deadlock_report_unit.vh"
