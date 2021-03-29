// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mac_vivado_dma32_w32_store (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_outbuff_V_address0,
        p_outbuff_V_ce0,
        p_outbuff_V_q0,
        out_word_V_din,
        out_word_V_full_n,
        out_word_V_write,
        mac_n_dout,
        mac_n_empty_n,
        mac_n_read,
        mac_vec_dout,
        mac_vec_empty_n,
        mac_vec_read,
        mac_len_dout,
        mac_len_empty_n,
        mac_len_read,
        store_ctrl,
        store_ctrl_ap_vld,
        store_ctrl_ap_ack,
        chunk_dout,
        chunk_empty_n,
        chunk_read
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] p_outbuff_V_address0;
output   p_outbuff_V_ce0;
input  [31:0] p_outbuff_V_q0;
output  [31:0] out_word_V_din;
input   out_word_V_full_n;
output   out_word_V_write;
input  [31:0] mac_n_dout;
input   mac_n_empty_n;
output   mac_n_read;
input  [31:0] mac_vec_dout;
input   mac_vec_empty_n;
output   mac_vec_read;
input  [31:0] mac_len_dout;
input   mac_len_empty_n;
output   mac_len_read;
output  [95:0] store_ctrl;
output   store_ctrl_ap_vld;
input   store_ctrl_ap_ack;
input  [31:0] chunk_dout;
input   chunk_empty_n;
output   chunk_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_outbuff_V_ce0;
reg out_word_V_write;
reg mac_n_read;
reg mac_vec_read;
reg mac_len_read;
reg chunk_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    out_word_V_blk_n;
wire    ap_CS_fsm_state5;
reg    mac_n_blk_n;
reg    mac_vec_blk_n;
reg    mac_len_blk_n;
reg    store_ctrl_blk_n;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    chunk_blk_n;
reg  signed [31:0] dma_length_reg_150;
reg    ap_block_state1;
reg   [31:0] chunk_read_reg_157;
wire   [31:0] store_offset_fu_109_p2;
reg   [31:0] store_offset_reg_162;
wire   [31:0] i_fu_139_p2;
reg   [31:0] i_reg_175;
wire    ap_CS_fsm_state4;
wire    regslice_forward_store_ctrl_U_apdone_blk;
wire   [0:0] icmp_ln56_fu_134_p2;
reg   [31:0] i_0_i_i_reg_98;
wire   [63:0] zext_ln58_fu_145_p1;
wire  signed [31:0] store_offset_fu_109_p0;
wire  signed [31:0] store_offset_fu_109_p1;
wire  signed [31:0] tmp_i_i_fu_115_p2;
wire   [31:0] index_fu_119_p2;
reg   [4:0] ap_NS_fsm;
wire   [95:0] store_ctrl_int;
reg    store_ctrl_ap_vld_int;
wire    store_ctrl_ap_ack_int;
wire    regslice_forward_store_ctrl_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
end

regslice_forward #(
    .DataWidth( 96 ))
regslice_forward_store_ctrl_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(store_ctrl_int),
    .vld_in(store_ctrl_ap_vld_int),
    .ack_in(store_ctrl_ap_ack_int),
    .data_out(store_ctrl),
    .vld_out(regslice_forward_store_ctrl_U_vld_out),
    .ack_out(store_ctrl_ap_ack),
    .apdone_blk(regslice_forward_store_ctrl_U_apdone_blk)
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln56_fu_134_p2 == 1'd1) & (regslice_forward_store_ctrl_U_apdone_blk == 1'b0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((out_word_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        i_0_i_i_reg_98 <= i_reg_175;
    end else if (((1'b1 == ap_CS_fsm_state3) & (store_ctrl_ap_ack_int == 1'b1))) begin
        i_0_i_i_reg_98 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((chunk_empty_n == 1'b0) | (mac_len_empty_n == 1'b0) | (mac_vec_empty_n == 1'b0) | (mac_n_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        chunk_read_reg_157 <= chunk_dout;
        dma_length_reg_150 <= mac_vec_dout;
        store_offset_reg_162 <= store_offset_fu_109_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (regslice_forward_store_ctrl_U_apdone_blk == 1'b0))) begin
        i_reg_175 <= i_fu_139_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln56_fu_134_p2 == 1'd1) & (regslice_forward_store_ctrl_U_apdone_blk == 1'b0))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln56_fu_134_p2 == 1'd1) & (regslice_forward_store_ctrl_U_apdone_blk == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        chunk_blk_n = chunk_empty_n;
    end else begin
        chunk_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((chunk_empty_n == 1'b0) | (mac_len_empty_n == 1'b0) | (mac_vec_empty_n == 1'b0) | (mac_n_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        chunk_read = 1'b1;
    end else begin
        chunk_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_len_blk_n = mac_len_empty_n;
    end else begin
        mac_len_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((chunk_empty_n == 1'b0) | (mac_len_empty_n == 1'b0) | (mac_vec_empty_n == 1'b0) | (mac_n_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_len_read = 1'b1;
    end else begin
        mac_len_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_n_blk_n = mac_n_empty_n;
    end else begin
        mac_n_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((chunk_empty_n == 1'b0) | (mac_len_empty_n == 1'b0) | (mac_vec_empty_n == 1'b0) | (mac_n_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_n_read = 1'b1;
    end else begin
        mac_n_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_vec_blk_n = mac_vec_empty_n;
    end else begin
        mac_vec_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((chunk_empty_n == 1'b0) | (mac_len_empty_n == 1'b0) | (mac_vec_empty_n == 1'b0) | (mac_n_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mac_vec_read = 1'b1;
    end else begin
        mac_vec_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_word_V_blk_n = out_word_V_full_n;
    end else begin
        out_word_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_word_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_word_V_write = 1'b1;
    end else begin
        out_word_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (regslice_forward_store_ctrl_U_apdone_blk == 1'b0))) begin
        p_outbuff_V_ce0 = 1'b1;
    end else begin
        p_outbuff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (store_ctrl_ap_ack_int == 1'b1))) begin
        store_ctrl_ap_vld_int = 1'b1;
    end else begin
        store_ctrl_ap_vld_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        store_ctrl_blk_n = store_ctrl_ap_ack_int;
    end else begin
        store_ctrl_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((chunk_empty_n == 1'b0) | (mac_len_empty_n == 1'b0) | (mac_vec_empty_n == 1'b0) | (mac_n_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (store_ctrl_ap_ack_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (store_ctrl_ap_ack_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln56_fu_134_p2 == 1'd1) & (regslice_forward_store_ctrl_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln56_fu_134_p2 == 1'd0) & (regslice_forward_store_ctrl_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((out_word_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
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

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((chunk_empty_n == 1'b0) | (mac_len_empty_n == 1'b0) | (mac_vec_empty_n == 1'b0) | (mac_n_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign i_fu_139_p2 = (i_0_i_i_reg_98 + 32'd1);

assign icmp_ln56_fu_134_p2 = ((i_0_i_i_reg_98 == dma_length_reg_150) ? 1'b1 : 1'b0);

assign index_fu_119_p2 = ($signed(dma_length_reg_150) * $signed(tmp_i_i_fu_115_p2));

assign out_word_V_din = p_outbuff_V_q0;

assign p_outbuff_V_address0 = zext_ln58_fu_145_p1;

assign store_ctrl_ap_vld = regslice_forward_store_ctrl_U_vld_out;

assign store_ctrl_int = {{{{32'd2}, {dma_length_reg_150}}}, {index_fu_119_p2}};

assign store_offset_fu_109_p0 = mac_n_dout;

assign store_offset_fu_109_p1 = mac_len_dout;

assign store_offset_fu_109_p2 = ($signed(store_offset_fu_109_p0) * $signed(store_offset_fu_109_p1));

assign tmp_i_i_fu_115_p2 = (chunk_read_reg_157 + store_offset_reg_162);

assign zext_ln58_fu_145_p1 = i_0_i_i_reg_98;

endmodule //mac_vivado_dma32_w32_store