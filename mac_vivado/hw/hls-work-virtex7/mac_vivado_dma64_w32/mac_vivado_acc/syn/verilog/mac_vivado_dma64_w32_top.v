// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mac_vivado_dma64_w32_top,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7v2000t-flg1925-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.508000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=18,HLS_SYN_DSP=21,HLS_SYN_FF=886,HLS_SYN_LUT=1998,HLS_VERSION=2019_2}" *)

module mac_vivado_dma64_w32_top (
        out_word_V_din,
        out_word_V_full_n,
        out_word_V_write,
        in1_word_V_dout,
        in1_word_V_empty_n,
        in1_word_V_read,
        conf_info_mac_n,
        conf_info_mac_vec,
        conf_info_mac_len,
        load_ctrl,
        store_ctrl,
        ap_clk,
        ap_rst,
        load_ctrl_ap_vld,
        load_ctrl_ap_ack,
        store_ctrl_ap_vld,
        store_ctrl_ap_ack,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle
);


output  [63:0] out_word_V_din;
input   out_word_V_full_n;
output   out_word_V_write;
input  [63:0] in1_word_V_dout;
input   in1_word_V_empty_n;
output   in1_word_V_read;
input  [31:0] conf_info_mac_n;
input  [31:0] conf_info_mac_vec;
input  [31:0] conf_info_mac_len;
output  [95:0] load_ctrl;
output  [95:0] store_ctrl;
input   ap_clk;
input   ap_rst;
output   load_ctrl_ap_vld;
input   load_ctrl_ap_ack;
output   store_ctrl_ap_vld;
input   store_ctrl_ap_ack;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;

reg ap_done;
reg ap_ready;
reg ap_idle;

wire    dataflow_in_loop_bat_U0_in1_word_V_read;
wire   [95:0] dataflow_in_loop_bat_U0_load_ctrl;
wire   [63:0] dataflow_in_loop_bat_U0_out_word_V_din;
wire    dataflow_in_loop_bat_U0_out_word_V_write;
wire   [95:0] dataflow_in_loop_bat_U0_store_ctrl;
wire    dataflow_in_loop_bat_U0_load_ctrl_ap_vld;
wire    dataflow_in_loop_bat_U0_ap_start;
wire    dataflow_in_loop_bat_U0_ap_done;
wire    dataflow_in_loop_bat_U0_store_ctrl_ap_vld;
wire    dataflow_in_loop_bat_U0_ap_ready;
wire    dataflow_in_loop_bat_U0_ap_idle;
wire    dataflow_in_loop_bat_U0_ap_continue;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
reg   [31:0] loop_dataflow_input_count;
reg   [31:0] loop_dataflow_output_count;
wire   [31:0] bound_minus_1;
wire    dataflow_in_loop_bat_U0_start_full_n;
wire    dataflow_in_loop_bat_U0_start_write;

// power-on initialization
initial begin
#0 loop_dataflow_input_count = 32'd0;
#0 loop_dataflow_output_count = 32'd0;
end

mac_vivado_dma64_w32_dataflow_in_loop_bat dataflow_in_loop_bat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .in1_word_V_dout(in1_word_V_dout),
    .in1_word_V_empty_n(in1_word_V_empty_n),
    .in1_word_V_read(dataflow_in_loop_bat_U0_in1_word_V_read),
    .conf_info_mac_vec(conf_info_mac_vec),
    .conf_info_mac_len(conf_info_mac_len),
    .load_ctrl(dataflow_in_loop_bat_U0_load_ctrl),
    .b_0(loop_dataflow_input_count),
    .out_word_V_din(dataflow_in_loop_bat_U0_out_word_V_din),
    .out_word_V_full_n(out_word_V_full_n),
    .out_word_V_write(dataflow_in_loop_bat_U0_out_word_V_write),
    .conf_info_mac_n(conf_info_mac_n),
    .store_ctrl(dataflow_in_loop_bat_U0_store_ctrl),
    .conf_info_mac_vec_ap_vld(1'b1),
    .conf_info_mac_len_ap_vld(1'b1),
    .load_ctrl_ap_vld(dataflow_in_loop_bat_U0_load_ctrl_ap_vld),
    .load_ctrl_ap_ack(load_ctrl_ap_ack),
    .b_0_ap_vld(1'b0),
    .conf_info_mac_n_ap_vld(1'b1),
    .ap_start(dataflow_in_loop_bat_U0_ap_start),
    .ap_done(dataflow_in_loop_bat_U0_ap_done),
    .store_ctrl_ap_vld(dataflow_in_loop_bat_U0_store_ctrl_ap_vld),
    .store_ctrl_ap_ack(store_ctrl_ap_ack),
    .ap_ready(dataflow_in_loop_bat_U0_ap_ready),
    .ap_idle(dataflow_in_loop_bat_U0_ap_idle),
    .ap_continue(dataflow_in_loop_bat_U0_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_input_count <= 32'd0;
    end else begin
        if ((~(loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_bat_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= (loop_dataflow_input_count + 32'd1);
        end else if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_bat_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_output_count <= 32'd0;
    end else begin
        if ((~(loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_bat_U0_ap_continue == 1'b1) & (dataflow_in_loop_bat_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= (loop_dataflow_output_count + 32'd1);
        end else if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_bat_U0_ap_continue == 1'b1) & (dataflow_in_loop_bat_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= 32'd0;
        end
    end
end

always @ (*) begin
    if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_bat_U0_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((loop_dataflow_output_count == 32'd0) & (ap_start == 1'b0) & (dataflow_in_loop_bat_U0_ap_idle == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_bat_U0_ap_ready == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

assign dataflow_in_loop_bat_U0_ap_continue = 1'b1;

assign ap_sync_continue = 1'b1;

assign ap_sync_done = dataflow_in_loop_bat_U0_ap_done;

assign ap_sync_ready = dataflow_in_loop_bat_U0_ap_ready;

assign bound_minus_1 = (conf_info_mac_n - 32'd1);

assign dataflow_in_loop_bat_U0_ap_start = ap_start;

assign dataflow_in_loop_bat_U0_start_full_n = 1'b1;

assign dataflow_in_loop_bat_U0_start_write = 1'b0;

assign in1_word_V_read = dataflow_in_loop_bat_U0_in1_word_V_read;

assign load_ctrl = dataflow_in_loop_bat_U0_load_ctrl;

assign load_ctrl_ap_vld = dataflow_in_loop_bat_U0_load_ctrl_ap_vld;

assign out_word_V_din = dataflow_in_loop_bat_U0_out_word_V_din;

assign out_word_V_write = dataflow_in_loop_bat_U0_out_word_V_write;

assign store_ctrl = dataflow_in_loop_bat_U0_store_ctrl;

assign store_ctrl_ap_vld = dataflow_in_loop_bat_U0_store_ctrl_ap_vld;

endmodule //mac_vivado_dma64_w32_top