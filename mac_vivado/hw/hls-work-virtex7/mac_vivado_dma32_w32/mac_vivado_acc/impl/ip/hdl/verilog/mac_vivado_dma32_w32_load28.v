// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mac_vivado_dma32_w32_load28 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_inbuff_V_address0,
        p_inbuff_V_ce0,
        p_inbuff_V_we0,
        p_inbuff_V_d0,
        in1_word_V_dout,
        in1_word_V_empty_n,
        in1_word_V_read,
        mac_vec,
        mac_len,
        load_ctrl,
        load_ctrl_ap_vld,
        load_ctrl_ap_ack,
        chunk,
        conf_info_mac_n,
        mac_vec_out_din,
        mac_vec_out_full_n,
        mac_vec_out_write,
        mac_len_out_din,
        mac_len_out_full_n,
        mac_len_out_write,
        chunk_out_din,
        chunk_out_full_n,
        chunk_out_write,
        conf_info_mac_n_out_din,
        conf_info_mac_n_out_full_n,
        conf_info_mac_n_out_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] p_inbuff_V_address0;
output   p_inbuff_V_ce0;
output   p_inbuff_V_we0;
output  [31:0] p_inbuff_V_d0;
input  [31:0] in1_word_V_dout;
input   in1_word_V_empty_n;
output   in1_word_V_read;
input  [31:0] mac_vec;
input  [31:0] mac_len;
output  [95:0] load_ctrl;
output   load_ctrl_ap_vld;
input   load_ctrl_ap_ack;
input  [31:0] chunk;
input  [31:0] conf_info_mac_n;
output  [31:0] mac_vec_out_din;
input   mac_vec_out_full_n;
output   mac_vec_out_write;
output  [31:0] mac_len_out_din;
input   mac_len_out_full_n;
output   mac_len_out_write;
output  [31:0] chunk_out_din;
input   chunk_out_full_n;
output   chunk_out_write;
output  [31:0] conf_info_mac_n_out_din;
input   conf_info_mac_n_out_full_n;
output   conf_info_mac_n_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_inbuff_V_ce0;
reg p_inbuff_V_we0;
reg in1_word_V_read;
reg mac_vec_out_write;
reg mac_len_out_write;
reg chunk_out_write;
reg conf_info_mac_n_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in1_word_V_blk_n;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln28_fu_170_p2;
reg    load_ctrl_blk_n;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    mac_vec_out_blk_n;
reg    mac_len_out_blk_n;
reg    chunk_out_blk_n;
reg    conf_info_mac_n_out_blk_n;
reg    ap_block_state1;
wire  signed [31:0] length_fu_150_p2;
reg  signed [31:0] length_reg_191;
wire   [31:0] i_fu_175_p2;
wire    regslice_forward_load_ctrl_U_apdone_blk;
reg    ap_block_state4;
reg   [31:0] i_0_i_i_i_reg_139;
wire   [63:0] zext_ln30_fu_181_p1;
wire  signed [31:0] length_fu_150_p0;
wire  signed [31:0] length_fu_150_p1;
wire  signed [31:0] index_fu_156_p1;
wire   [31:0] index_fu_156_p2;
reg   [3:0] ap_NS_fsm;
wire   [95:0] load_ctrl_int;
reg    load_ctrl_ap_vld_int;
wire    load_ctrl_ap_ack_int;
wire    regslice_forward_load_ctrl_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
end

regslice_forward #(
    .DataWidth( 96 ))
regslice_forward_load_ctrl_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(load_ctrl_int),
    .vld_in(load_ctrl_ap_vld_int),
    .ack_in(load_ctrl_ap_ack_int),
    .data_out(load_ctrl),
    .vld_out(regslice_forward_load_ctrl_U_vld_out),
    .ack_out(load_ctrl_ap_ack),
    .apdone_blk(regslice_forward_load_ctrl_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0))) & (icmp_ln28_fu_170_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0))) & (icmp_ln28_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i_0_i_i_i_reg_139 <= i_fu_175_p2;
    end else if (((1'b1 == ap_CS_fsm_state3) & (load_ctrl_ap_ack_int == 1'b1))) begin
        i_0_i_i_i_reg_139 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (conf_info_mac_n_out_full_n == 1'b0) | (chunk_out_full_n == 1'b0) | (mac_len_out_full_n == 1'b0) | (mac_vec_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        length_reg_191 <= length_fu_150_p2;
    end
end

always @ (*) begin
    if ((~((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0))) & (icmp_ln28_fu_170_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0))) & (icmp_ln28_fu_170_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        chunk_out_blk_n = chunk_out_full_n;
    end else begin
        chunk_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (conf_info_mac_n_out_full_n == 1'b0) | (chunk_out_full_n == 1'b0) | (mac_len_out_full_n == 1'b0) | (mac_vec_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        chunk_out_write = 1'b1;
    end else begin
        chunk_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        conf_info_mac_n_out_blk_n = conf_info_mac_n_out_full_n;
    end else begin
        conf_info_mac_n_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (conf_info_mac_n_out_full_n == 1'b0) | (chunk_out_full_n == 1'b0) | (mac_len_out_full_n == 1'b0) | (mac_vec_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        conf_info_mac_n_out_write = 1'b1;
    end else begin
        conf_info_mac_n_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln28_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        in1_word_V_blk_n = in1_word_V_empty_n;
    end else begin
        in1_word_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0))) & (icmp_ln28_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        in1_word_V_read = 1'b1;
    end else begin
        in1_word_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (load_ctrl_ap_ack_int == 1'b1))) begin
        load_ctrl_ap_vld_int = 1'b1;
    end else begin
        load_ctrl_ap_vld_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        load_ctrl_blk_n = load_ctrl_ap_ack_int;
    end else begin
        load_ctrl_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_len_out_blk_n = mac_len_out_full_n;
    end else begin
        mac_len_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (conf_info_mac_n_out_full_n == 1'b0) | (chunk_out_full_n == 1'b0) | (mac_len_out_full_n == 1'b0) | (mac_vec_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_len_out_write = 1'b1;
    end else begin
        mac_len_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_vec_out_blk_n = mac_vec_out_full_n;
    end else begin
        mac_vec_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (conf_info_mac_n_out_full_n == 1'b0) | (chunk_out_full_n == 1'b0) | (mac_len_out_full_n == 1'b0) | (mac_vec_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_vec_out_write = 1'b1;
    end else begin
        mac_vec_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
        p_inbuff_V_ce0 = 1'b1;
    end else begin
        p_inbuff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0))) & (icmp_ln28_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        p_inbuff_V_we0 = 1'b1;
    end else begin
        p_inbuff_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (conf_info_mac_n_out_full_n == 1'b0) | (chunk_out_full_n == 1'b0) | (mac_len_out_full_n == 1'b0) | (mac_vec_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (load_ctrl_ap_ack_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (load_ctrl_ap_ack_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0))) & (icmp_ln28_fu_170_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0))) & (icmp_ln28_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (conf_info_mac_n_out_full_n == 1'b0) | (chunk_out_full_n == 1'b0) | (mac_len_out_full_n == 1'b0) | (mac_vec_out_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state4 = ((regslice_forward_load_ctrl_U_apdone_blk == 1'b1) | ((icmp_ln28_fu_170_p2 == 1'd0) & (in1_word_V_empty_n == 1'b0)));
end

assign chunk_out_din = chunk;

assign conf_info_mac_n_out_din = conf_info_mac_n;

assign i_fu_175_p2 = (i_0_i_i_i_reg_139 + 32'd1);

assign icmp_ln28_fu_170_p2 = ((i_0_i_i_i_reg_139 == length_reg_191) ? 1'b1 : 1'b0);

assign index_fu_156_p1 = chunk;

assign index_fu_156_p2 = ($signed(length_reg_191) * $signed(index_fu_156_p1));

assign length_fu_150_p0 = mac_vec;

assign length_fu_150_p1 = mac_len;

assign length_fu_150_p2 = ($signed(length_fu_150_p0) * $signed(length_fu_150_p1));

assign load_ctrl_ap_vld = regslice_forward_load_ctrl_U_vld_out;

assign load_ctrl_int = {{{{32'd2}, {length_reg_191}}}, {index_fu_156_p2}};

assign mac_len_out_din = mac_len;

assign mac_vec_out_din = mac_vec;

assign p_inbuff_V_address0 = zext_ln30_fu_181_p1;

assign p_inbuff_V_d0 = in1_word_V_dout;

assign zext_ln30_fu_181_p1 = i_0_i_i_i_reg_139;

endmodule //mac_vivado_dma32_w32_load28