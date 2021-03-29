// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mac_vivado_dma32_w32_dataflow_in_loop_bat (
        ap_clk,
        ap_rst,
        in1_word_V_dout,
        in1_word_V_empty_n,
        in1_word_V_read,
        conf_info_mac_vec,
        conf_info_mac_len,
        load_ctrl,
        b_0,
        out_word_V_din,
        out_word_V_full_n,
        out_word_V_write,
        conf_info_mac_n,
        store_ctrl,
        conf_info_mac_vec_ap_vld,
        conf_info_mac_len_ap_vld,
        load_ctrl_ap_vld,
        load_ctrl_ap_ack,
        b_0_ap_vld,
        conf_info_mac_n_ap_vld,
        ap_start,
        ap_done,
        store_ctrl_ap_vld,
        store_ctrl_ap_ack,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_clk;
input   ap_rst;
input  [31:0] in1_word_V_dout;
input   in1_word_V_empty_n;
output   in1_word_V_read;
input  [31:0] conf_info_mac_vec;
input  [31:0] conf_info_mac_len;
output  [95:0] load_ctrl;
input  [31:0] b_0;
output  [31:0] out_word_V_din;
input   out_word_V_full_n;
output   out_word_V_write;
input  [31:0] conf_info_mac_n;
output  [95:0] store_ctrl;
input   conf_info_mac_vec_ap_vld;
input   conf_info_mac_len_ap_vld;
output   load_ctrl_ap_vld;
input   load_ctrl_ap_ack;
input   b_0_ap_vld;
input   conf_info_mac_n_ap_vld;
input   ap_start;
output   ap_done;
output   store_ctrl_ap_vld;
input   store_ctrl_ap_ack;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire   [31:0] p_inbuff_V_i_q0;
wire   [31:0] p_inbuff_V_i_q1;
wire   [31:0] p_inbuff_V_t_q0;
wire   [31:0] p_inbuff_V_t_q1;
wire   [31:0] p_outbuff_V_i_q0;
wire   [31:0] p_outbuff_V_t_q0;
wire    load28_U0_ap_start;
wire    load28_U0_ap_done;
wire    load28_U0_ap_continue;
wire    load28_U0_ap_idle;
wire    load28_U0_ap_ready;
wire   [12:0] load28_U0_p_inbuff_V_address0;
wire    load28_U0_p_inbuff_V_ce0;
wire    load28_U0_p_inbuff_V_we0;
wire   [31:0] load28_U0_p_inbuff_V_d0;
wire    load28_U0_in1_word_V_read;
wire   [95:0] load28_U0_load_ctrl;
wire    load28_U0_load_ctrl_ap_vld;
wire   [31:0] load28_U0_mac_vec_out_din;
wire    load28_U0_mac_vec_out_write;
wire   [31:0] load28_U0_mac_len_out_din;
wire    load28_U0_mac_len_out_write;
wire   [31:0] load28_U0_chunk_out_din;
wire    load28_U0_chunk_out_write;
wire   [31:0] load28_U0_conf_info_mac_n_out_din;
wire    load28_U0_conf_info_mac_n_out_write;
wire    ap_channel_done_p_inbuff_V;
wire    load28_U0_p_inbuff_V_full_n;
reg    ap_sync_reg_channel_write_p_inbuff_V;
wire    ap_sync_channel_write_p_inbuff_V;
wire    ap_sync_continue;
wire    compute_U0_ap_start;
wire    compute_U0_ap_done;
wire    compute_U0_ap_continue;
wire    compute_U0_ap_idle;
wire    compute_U0_ap_ready;
wire   [12:0] compute_U0_p_inbuff_V_address0;
wire    compute_U0_p_inbuff_V_ce0;
wire   [12:0] compute_U0_p_inbuff_V_address1;
wire    compute_U0_p_inbuff_V_ce1;
wire    compute_U0_mac_vec_read;
wire    compute_U0_mac_len_read;
wire   [6:0] compute_U0_p_outbuff_V_address0;
wire    compute_U0_p_outbuff_V_ce0;
wire    compute_U0_p_outbuff_V_we0;
wire   [31:0] compute_U0_p_outbuff_V_d0;
wire   [31:0] compute_U0_mac_vec_out_din;
wire    compute_U0_mac_vec_out_write;
wire   [31:0] compute_U0_mac_len_out_din;
wire    compute_U0_mac_len_out_write;
wire    ap_channel_done_p_outbuff_V;
wire    compute_U0_p_outbuff_V_full_n;
wire    store_U0_ap_start;
wire    store_U0_ap_done;
wire    store_U0_ap_continue;
wire    store_U0_ap_idle;
wire    store_U0_ap_ready;
wire   [6:0] store_U0_p_outbuff_V_address0;
wire    store_U0_p_outbuff_V_ce0;
wire   [31:0] store_U0_out_word_V_din;
wire    store_U0_out_word_V_write;
wire    store_U0_mac_n_read;
wire    store_U0_mac_vec_read;
wire    store_U0_mac_len_read;
wire   [95:0] store_U0_store_ctrl;
wire    store_U0_store_ctrl_ap_vld;
wire    store_U0_chunk_read;
wire    p_inbuff_V_i_full_n;
wire    p_inbuff_V_t_empty_n;
wire   [31:0] p_inbuff_V_t_d1;
wire    p_inbuff_V_t_we1;
wire    p_outbuff_V_i_full_n;
wire    p_outbuff_V_t_empty_n;
wire    conf_info_mac_vec_c_full_n;
wire   [31:0] conf_info_mac_vec_c_dout;
wire    conf_info_mac_vec_c_empty_n;
wire    conf_info_mac_len_c_full_n;
wire   [31:0] conf_info_mac_len_c_dout;
wire    conf_info_mac_len_c_empty_n;
wire    b_0_c_full_n;
wire   [31:0] b_0_c_dout;
wire    b_0_c_empty_n;
wire    conf_info_mac_n_c_full_n;
wire   [31:0] conf_info_mac_n_c_dout;
wire    conf_info_mac_n_c_empty_n;
wire    conf_info_mac_vec_c1_1_full_n;
wire   [31:0] conf_info_mac_vec_c1_1_dout;
wire    conf_info_mac_vec_c1_1_empty_n;
wire    conf_info_mac_len_c2_1_full_n;
wire   [31:0] conf_info_mac_len_c2_1_dout;
wire    conf_info_mac_len_c2_1_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    load28_U0_start_full_n;
wire    load28_U0_start_write;
wire    compute_U0_start_full_n;
wire    compute_U0_start_write;
wire    store_U0_start_full_n;
wire    store_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_p_inbuff_V = 1'b0;
end

mac_vivado_dma32_w32_dataflow_in_loop_bkb #(
    .DataWidth( 32 ),
    .AddressRange( 6400 ),
    .AddressWidth( 13 ))
p_inbuff_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(load28_U0_p_inbuff_V_address0),
    .i_ce0(load28_U0_p_inbuff_V_ce0),
    .i_we0(load28_U0_p_inbuff_V_we0),
    .i_d0(load28_U0_p_inbuff_V_d0),
    .i_q0(p_inbuff_V_i_q0),
    .i_address1(13'd0),
    .i_ce1(1'b0),
    .i_q1(p_inbuff_V_i_q1),
    .t_address0(compute_U0_p_inbuff_V_address0),
    .t_ce0(compute_U0_p_inbuff_V_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(p_inbuff_V_t_q0),
    .t_address1(compute_U0_p_inbuff_V_address1),
    .t_ce1(compute_U0_p_inbuff_V_ce1),
    .t_q1(p_inbuff_V_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(p_inbuff_V_i_full_n),
    .i_write(ap_channel_done_p_inbuff_V),
    .t_empty_n(p_inbuff_V_t_empty_n),
    .t_read(compute_U0_ap_ready)
);

mac_vivado_dma32_w32_dataflow_in_loop_cud #(
    .DataWidth( 32 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
p_outbuff_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(compute_U0_p_outbuff_V_address0),
    .i_ce0(compute_U0_p_outbuff_V_ce0),
    .i_we0(compute_U0_p_outbuff_V_we0),
    .i_d0(compute_U0_p_outbuff_V_d0),
    .i_q0(p_outbuff_V_i_q0),
    .t_address0(store_U0_p_outbuff_V_address0),
    .t_ce0(store_U0_p_outbuff_V_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(p_outbuff_V_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(p_outbuff_V_i_full_n),
    .i_write(compute_U0_ap_done),
    .t_empty_n(p_outbuff_V_t_empty_n),
    .t_read(store_U0_ap_ready)
);

mac_vivado_dma32_w32_load28 load28_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(load28_U0_ap_start),
    .ap_done(load28_U0_ap_done),
    .ap_continue(load28_U0_ap_continue),
    .ap_idle(load28_U0_ap_idle),
    .ap_ready(load28_U0_ap_ready),
    .p_inbuff_V_address0(load28_U0_p_inbuff_V_address0),
    .p_inbuff_V_ce0(load28_U0_p_inbuff_V_ce0),
    .p_inbuff_V_we0(load28_U0_p_inbuff_V_we0),
    .p_inbuff_V_d0(load28_U0_p_inbuff_V_d0),
    .in1_word_V_dout(in1_word_V_dout),
    .in1_word_V_empty_n(in1_word_V_empty_n),
    .in1_word_V_read(load28_U0_in1_word_V_read),
    .mac_vec(conf_info_mac_vec),
    .mac_len(conf_info_mac_len),
    .load_ctrl(load28_U0_load_ctrl),
    .load_ctrl_ap_vld(load28_U0_load_ctrl_ap_vld),
    .load_ctrl_ap_ack(load_ctrl_ap_ack),
    .chunk(b_0),
    .conf_info_mac_n(conf_info_mac_n),
    .mac_vec_out_din(load28_U0_mac_vec_out_din),
    .mac_vec_out_full_n(conf_info_mac_vec_c_full_n),
    .mac_vec_out_write(load28_U0_mac_vec_out_write),
    .mac_len_out_din(load28_U0_mac_len_out_din),
    .mac_len_out_full_n(conf_info_mac_len_c_full_n),
    .mac_len_out_write(load28_U0_mac_len_out_write),
    .chunk_out_din(load28_U0_chunk_out_din),
    .chunk_out_full_n(b_0_c_full_n),
    .chunk_out_write(load28_U0_chunk_out_write),
    .conf_info_mac_n_out_din(load28_U0_conf_info_mac_n_out_din),
    .conf_info_mac_n_out_full_n(conf_info_mac_n_c_full_n),
    .conf_info_mac_n_out_write(load28_U0_conf_info_mac_n_out_write)
);

mac_vivado_dma32_w32_compute compute_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(compute_U0_ap_start),
    .ap_done(compute_U0_ap_done),
    .ap_continue(compute_U0_ap_continue),
    .ap_idle(compute_U0_ap_idle),
    .ap_ready(compute_U0_ap_ready),
    .p_inbuff_V_address0(compute_U0_p_inbuff_V_address0),
    .p_inbuff_V_ce0(compute_U0_p_inbuff_V_ce0),
    .p_inbuff_V_q0(p_inbuff_V_t_q0),
    .p_inbuff_V_address1(compute_U0_p_inbuff_V_address1),
    .p_inbuff_V_ce1(compute_U0_p_inbuff_V_ce1),
    .p_inbuff_V_q1(p_inbuff_V_t_q1),
    .mac_vec_dout(conf_info_mac_vec_c_dout),
    .mac_vec_empty_n(conf_info_mac_vec_c_empty_n),
    .mac_vec_read(compute_U0_mac_vec_read),
    .mac_len_dout(conf_info_mac_len_c_dout),
    .mac_len_empty_n(conf_info_mac_len_c_empty_n),
    .mac_len_read(compute_U0_mac_len_read),
    .p_outbuff_V_address0(compute_U0_p_outbuff_V_address0),
    .p_outbuff_V_ce0(compute_U0_p_outbuff_V_ce0),
    .p_outbuff_V_we0(compute_U0_p_outbuff_V_we0),
    .p_outbuff_V_d0(compute_U0_p_outbuff_V_d0),
    .mac_vec_out_din(compute_U0_mac_vec_out_din),
    .mac_vec_out_full_n(conf_info_mac_vec_c1_1_full_n),
    .mac_vec_out_write(compute_U0_mac_vec_out_write),
    .mac_len_out_din(compute_U0_mac_len_out_din),
    .mac_len_out_full_n(conf_info_mac_len_c2_1_full_n),
    .mac_len_out_write(compute_U0_mac_len_out_write)
);

mac_vivado_dma32_w32_store store_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(store_U0_ap_start),
    .ap_done(store_U0_ap_done),
    .ap_continue(store_U0_ap_continue),
    .ap_idle(store_U0_ap_idle),
    .ap_ready(store_U0_ap_ready),
    .p_outbuff_V_address0(store_U0_p_outbuff_V_address0),
    .p_outbuff_V_ce0(store_U0_p_outbuff_V_ce0),
    .p_outbuff_V_q0(p_outbuff_V_t_q0),
    .out_word_V_din(store_U0_out_word_V_din),
    .out_word_V_full_n(out_word_V_full_n),
    .out_word_V_write(store_U0_out_word_V_write),
    .mac_n_dout(conf_info_mac_n_c_dout),
    .mac_n_empty_n(conf_info_mac_n_c_empty_n),
    .mac_n_read(store_U0_mac_n_read),
    .mac_vec_dout(conf_info_mac_vec_c1_1_dout),
    .mac_vec_empty_n(conf_info_mac_vec_c1_1_empty_n),
    .mac_vec_read(store_U0_mac_vec_read),
    .mac_len_dout(conf_info_mac_len_c2_1_dout),
    .mac_len_empty_n(conf_info_mac_len_c2_1_empty_n),
    .mac_len_read(store_U0_mac_len_read),
    .store_ctrl(store_U0_store_ctrl),
    .store_ctrl_ap_vld(store_U0_store_ctrl_ap_vld),
    .store_ctrl_ap_ack(store_ctrl_ap_ack),
    .chunk_dout(b_0_c_dout),
    .chunk_empty_n(b_0_c_empty_n),
    .chunk_read(store_U0_chunk_read)
);

mac_vivado_dma32_w32_fifo_w32_d2_A conf_info_mac_vec_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load28_U0_mac_vec_out_din),
    .if_full_n(conf_info_mac_vec_c_full_n),
    .if_write(load28_U0_mac_vec_out_write),
    .if_dout(conf_info_mac_vec_c_dout),
    .if_empty_n(conf_info_mac_vec_c_empty_n),
    .if_read(compute_U0_mac_vec_read)
);

mac_vivado_dma32_w32_fifo_w32_d2_A conf_info_mac_len_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load28_U0_mac_len_out_din),
    .if_full_n(conf_info_mac_len_c_full_n),
    .if_write(load28_U0_mac_len_out_write),
    .if_dout(conf_info_mac_len_c_dout),
    .if_empty_n(conf_info_mac_len_c_empty_n),
    .if_read(compute_U0_mac_len_read)
);

mac_vivado_dma32_w32_fifo_w32_d3_A b_0_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load28_U0_chunk_out_din),
    .if_full_n(b_0_c_full_n),
    .if_write(load28_U0_chunk_out_write),
    .if_dout(b_0_c_dout),
    .if_empty_n(b_0_c_empty_n),
    .if_read(store_U0_chunk_read)
);

mac_vivado_dma32_w32_fifo_w32_d3_A conf_info_mac_n_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load28_U0_conf_info_mac_n_out_din),
    .if_full_n(conf_info_mac_n_c_full_n),
    .if_write(load28_U0_conf_info_mac_n_out_write),
    .if_dout(conf_info_mac_n_c_dout),
    .if_empty_n(conf_info_mac_n_c_empty_n),
    .if_read(store_U0_mac_n_read)
);

mac_vivado_dma32_w32_fifo_w32_d2_A conf_info_mac_vec_c1_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(compute_U0_mac_vec_out_din),
    .if_full_n(conf_info_mac_vec_c1_1_full_n),
    .if_write(compute_U0_mac_vec_out_write),
    .if_dout(conf_info_mac_vec_c1_1_dout),
    .if_empty_n(conf_info_mac_vec_c1_1_empty_n),
    .if_read(store_U0_mac_vec_read)
);

mac_vivado_dma32_w32_fifo_w32_d2_A conf_info_mac_len_c2_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(compute_U0_mac_len_out_din),
    .if_full_n(conf_info_mac_len_c2_1_full_n),
    .if_write(compute_U0_mac_len_out_write),
    .if_dout(conf_info_mac_len_c2_1_dout),
    .if_empty_n(conf_info_mac_len_c2_1_empty_n),
    .if_read(store_U0_mac_len_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_p_inbuff_V <= 1'b0;
    end else begin
        if (((load28_U0_ap_done & load28_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_p_inbuff_V <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_p_inbuff_V <= ap_sync_channel_write_p_inbuff_V;
        end
    end
end

assign ap_channel_done_p_inbuff_V = (load28_U0_ap_done & (ap_sync_reg_channel_write_p_inbuff_V ^ 1'b1));

assign ap_channel_done_p_outbuff_V = compute_U0_ap_done;

assign ap_done = ap_sync_done;

assign ap_idle = (store_U0_ap_idle & load28_U0_ap_idle & (p_outbuff_V_t_empty_n ^ 1'b1) & (p_inbuff_V_t_empty_n ^ 1'b1) & compute_U0_ap_idle);

assign ap_ready = load28_U0_ap_ready;

assign ap_sync_channel_write_p_inbuff_V = ((load28_U0_p_inbuff_V_full_n & ap_channel_done_p_inbuff_V) | ap_sync_reg_channel_write_p_inbuff_V);

assign ap_sync_continue = (ap_sync_done & ap_continue);

assign ap_sync_done = (store_U0_ap_done & load28_U0_ap_done);

assign ap_sync_ready = load28_U0_ap_ready;

assign compute_U0_ap_continue = p_outbuff_V_i_full_n;

assign compute_U0_ap_start = p_inbuff_V_t_empty_n;

assign compute_U0_p_outbuff_V_full_n = p_outbuff_V_i_full_n;

assign compute_U0_start_full_n = 1'b1;

assign compute_U0_start_write = 1'b0;

assign in1_word_V_read = load28_U0_in1_word_V_read;

assign load28_U0_ap_continue = (ap_sync_continue & ap_sync_channel_write_p_inbuff_V);

assign load28_U0_ap_start = ap_start;

assign load28_U0_p_inbuff_V_full_n = p_inbuff_V_i_full_n;

assign load28_U0_start_full_n = 1'b1;

assign load28_U0_start_write = 1'b0;

assign load_ctrl = load28_U0_load_ctrl;

assign load_ctrl_ap_vld = load28_U0_load_ctrl_ap_vld;

assign out_word_V_din = store_U0_out_word_V_din;

assign out_word_V_write = store_U0_out_word_V_write;

assign p_inbuff_V_t_d1 = 32'd0;

assign p_inbuff_V_t_we1 = 1'b0;

assign store_U0_ap_continue = ap_sync_continue;

assign store_U0_ap_start = p_outbuff_V_t_empty_n;

assign store_U0_start_full_n = 1'b1;

assign store_U0_start_write = 1'b0;

assign store_ctrl = store_U0_store_ctrl;

assign store_ctrl_ap_vld = store_U0_store_ctrl_ap_vld;

endmodule //mac_vivado_dma32_w32_dataflow_in_loop_bat
