// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mac_vivado_dma64_w32_dataflow_in_loop_bat_HH_
#define _mac_vivado_dma64_w32_dataflow_in_loop_bat_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "mac_vivado_dma64_w32_load32.h"
#include "mac_vivado_dma64_w32_compute.h"
#include "mac_vivado_dma64_w32_store.h"
#include "mac_vivado_dma64_w32_dataflow_in_loop_bkb.h"
#include "mac_vivado_dma64_w32_dataflow_in_loop_dEe.h"
#include "mac_vivado_dma64_w32_fifo_w32_d2_A.h"
#include "mac_vivado_dma64_w32_fifo_w32_d3_A.h"

namespace ap_rtl {

struct mac_vivado_dma64_w32_dataflow_in_loop_bat : public sc_module {
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<64> > in1_word_V_dout;
    sc_in< sc_logic > in1_word_V_empty_n;
    sc_out< sc_logic > in1_word_V_read;
    sc_in< sc_lv<32> > conf_info_mac_vec;
    sc_in< sc_lv<32> > conf_info_mac_len;
    sc_out< sc_lv<96> > load_ctrl;
    sc_in< sc_lv<32> > b_0;
    sc_out< sc_lv<64> > out_word_V_din;
    sc_in< sc_logic > out_word_V_full_n;
    sc_out< sc_logic > out_word_V_write;
    sc_in< sc_lv<32> > conf_info_mac_n;
    sc_out< sc_lv<96> > store_ctrl;
    sc_in< sc_logic > conf_info_mac_vec_ap_vld;
    sc_in< sc_logic > conf_info_mac_len_ap_vld;
    sc_out< sc_logic > load_ctrl_ap_vld;
    sc_in< sc_logic > load_ctrl_ap_ack;
    sc_in< sc_logic > b_0_ap_vld;
    sc_in< sc_logic > conf_info_mac_n_ap_vld;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > store_ctrl_ap_vld;
    sc_in< sc_logic > store_ctrl_ap_ack;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_in< sc_logic > ap_continue;
    sc_signal< sc_logic > ap_var_for_const2;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;


    // Module declarations
    mac_vivado_dma64_w32_dataflow_in_loop_bat(sc_module_name name);
    SC_HAS_PROCESS(mac_vivado_dma64_w32_dataflow_in_loop_bat);

    ~mac_vivado_dma64_w32_dataflow_in_loop_bat();

    sc_trace_file* mVcdFile;

    mac_vivado_dma64_w32_dataflow_in_loop_bkb* p_inbuff_0_V_U;
    mac_vivado_dma64_w32_dataflow_in_loop_bkb* p_inbuff_1_V_U;
    mac_vivado_dma64_w32_dataflow_in_loop_dEe* p_outbuff_0_V_U;
    mac_vivado_dma64_w32_dataflow_in_loop_dEe* p_outbuff_1_V_U;
    mac_vivado_dma64_w32_load32* load32_U0;
    mac_vivado_dma64_w32_compute* compute_U0;
    mac_vivado_dma64_w32_store* store_U0;
    mac_vivado_dma64_w32_fifo_w32_d2_A* conf_info_mac_vec_c_U;
    mac_vivado_dma64_w32_fifo_w32_d2_A* conf_info_mac_len_c_U;
    mac_vivado_dma64_w32_fifo_w32_d3_A* b_0_c_U;
    mac_vivado_dma64_w32_fifo_w32_d3_A* conf_info_mac_n_c_U;
    mac_vivado_dma64_w32_fifo_w32_d2_A* conf_info_mac_vec_c1_1_U;
    mac_vivado_dma64_w32_fifo_w32_d2_A* conf_info_mac_len_c2_1_U;
    sc_signal< sc_lv<32> > p_inbuff_0_V_i_q0;
    sc_signal< sc_lv<32> > p_inbuff_0_V_t_q0;
    sc_signal< sc_lv<32> > p_inbuff_1_V_i_q0;
    sc_signal< sc_lv<32> > p_inbuff_1_V_t_q0;
    sc_signal< sc_lv<32> > p_outbuff_0_V_i_q0;
    sc_signal< sc_lv<32> > p_outbuff_0_V_t_q0;
    sc_signal< sc_lv<32> > p_outbuff_1_V_i_q0;
    sc_signal< sc_lv<32> > p_outbuff_1_V_t_q0;
    sc_signal< sc_logic > load32_U0_ap_start;
    sc_signal< sc_logic > load32_U0_ap_done;
    sc_signal< sc_logic > load32_U0_ap_continue;
    sc_signal< sc_logic > load32_U0_ap_idle;
    sc_signal< sc_logic > load32_U0_ap_ready;
    sc_signal< sc_lv<12> > load32_U0_p_inbuff_0_V_address0;
    sc_signal< sc_logic > load32_U0_p_inbuff_0_V_ce0;
    sc_signal< sc_logic > load32_U0_p_inbuff_0_V_we0;
    sc_signal< sc_lv<32> > load32_U0_p_inbuff_0_V_d0;
    sc_signal< sc_lv<12> > load32_U0_p_inbuff_1_V_address0;
    sc_signal< sc_logic > load32_U0_p_inbuff_1_V_ce0;
    sc_signal< sc_logic > load32_U0_p_inbuff_1_V_we0;
    sc_signal< sc_lv<32> > load32_U0_p_inbuff_1_V_d0;
    sc_signal< sc_logic > load32_U0_in1_word_V_read;
    sc_signal< sc_lv<96> > load32_U0_load_ctrl;
    sc_signal< sc_logic > load32_U0_load_ctrl_ap_vld;
    sc_signal< sc_lv<32> > load32_U0_mac_vec_out_din;
    sc_signal< sc_logic > load32_U0_mac_vec_out_write;
    sc_signal< sc_lv<32> > load32_U0_mac_len_out_din;
    sc_signal< sc_logic > load32_U0_mac_len_out_write;
    sc_signal< sc_lv<32> > load32_U0_chunk_out_din;
    sc_signal< sc_logic > load32_U0_chunk_out_write;
    sc_signal< sc_lv<32> > load32_U0_conf_info_mac_n_out_din;
    sc_signal< sc_logic > load32_U0_conf_info_mac_n_out_write;
    sc_signal< sc_logic > ap_channel_done_p_inbuff_1_V;
    sc_signal< sc_logic > load32_U0_p_inbuff_1_V_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_p_inbuff_1_V;
    sc_signal< sc_logic > ap_sync_channel_write_p_inbuff_1_V;
    sc_signal< sc_logic > ap_channel_done_p_inbuff_0_V;
    sc_signal< sc_logic > load32_U0_p_inbuff_0_V_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_p_inbuff_0_V;
    sc_signal< sc_logic > ap_sync_channel_write_p_inbuff_0_V;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > compute_U0_ap_start;
    sc_signal< sc_logic > compute_U0_ap_done;
    sc_signal< sc_logic > compute_U0_ap_continue;
    sc_signal< sc_logic > compute_U0_ap_idle;
    sc_signal< sc_logic > compute_U0_ap_ready;
    sc_signal< sc_lv<12> > compute_U0_p_inbuff_0_V_address0;
    sc_signal< sc_logic > compute_U0_p_inbuff_0_V_ce0;
    sc_signal< sc_lv<12> > compute_U0_p_inbuff_1_V_address0;
    sc_signal< sc_logic > compute_U0_p_inbuff_1_V_ce0;
    sc_signal< sc_logic > compute_U0_mac_vec_read;
    sc_signal< sc_logic > compute_U0_mac_len_read;
    sc_signal< sc_lv<6> > compute_U0_p_outbuff_0_V_address0;
    sc_signal< sc_logic > compute_U0_p_outbuff_0_V_ce0;
    sc_signal< sc_logic > compute_U0_p_outbuff_0_V_we0;
    sc_signal< sc_lv<32> > compute_U0_p_outbuff_0_V_d0;
    sc_signal< sc_lv<6> > compute_U0_p_outbuff_1_V_address0;
    sc_signal< sc_logic > compute_U0_p_outbuff_1_V_ce0;
    sc_signal< sc_logic > compute_U0_p_outbuff_1_V_we0;
    sc_signal< sc_lv<32> > compute_U0_p_outbuff_1_V_d0;
    sc_signal< sc_lv<32> > compute_U0_mac_vec_out_din;
    sc_signal< sc_logic > compute_U0_mac_vec_out_write;
    sc_signal< sc_lv<32> > compute_U0_mac_len_out_din;
    sc_signal< sc_logic > compute_U0_mac_len_out_write;
    sc_signal< sc_logic > ap_channel_done_p_outbuff_1_V;
    sc_signal< sc_logic > compute_U0_p_outbuff_1_V_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_p_outbuff_1_V;
    sc_signal< sc_logic > ap_sync_channel_write_p_outbuff_1_V;
    sc_signal< sc_logic > ap_channel_done_p_outbuff_0_V;
    sc_signal< sc_logic > compute_U0_p_outbuff_0_V_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_p_outbuff_0_V;
    sc_signal< sc_logic > ap_sync_channel_write_p_outbuff_0_V;
    sc_signal< sc_logic > store_U0_ap_start;
    sc_signal< sc_logic > store_U0_ap_done;
    sc_signal< sc_logic > store_U0_ap_continue;
    sc_signal< sc_logic > store_U0_ap_idle;
    sc_signal< sc_logic > store_U0_ap_ready;
    sc_signal< sc_lv<6> > store_U0_p_outbuff_0_V_address0;
    sc_signal< sc_logic > store_U0_p_outbuff_0_V_ce0;
    sc_signal< sc_lv<6> > store_U0_p_outbuff_1_V_address0;
    sc_signal< sc_logic > store_U0_p_outbuff_1_V_ce0;
    sc_signal< sc_lv<64> > store_U0_out_word_V_din;
    sc_signal< sc_logic > store_U0_out_word_V_write;
    sc_signal< sc_logic > store_U0_mac_n_read;
    sc_signal< sc_logic > store_U0_mac_vec_read;
    sc_signal< sc_logic > store_U0_mac_len_read;
    sc_signal< sc_lv<96> > store_U0_store_ctrl;
    sc_signal< sc_logic > store_U0_store_ctrl_ap_vld;
    sc_signal< sc_logic > store_U0_chunk_read;
    sc_signal< sc_logic > p_inbuff_0_V_i_full_n;
    sc_signal< sc_logic > p_inbuff_0_V_t_empty_n;
    sc_signal< sc_logic > p_inbuff_1_V_i_full_n;
    sc_signal< sc_logic > p_inbuff_1_V_t_empty_n;
    sc_signal< sc_logic > p_outbuff_0_V_i_full_n;
    sc_signal< sc_logic > p_outbuff_0_V_t_empty_n;
    sc_signal< sc_logic > p_outbuff_1_V_i_full_n;
    sc_signal< sc_logic > p_outbuff_1_V_t_empty_n;
    sc_signal< sc_logic > conf_info_mac_vec_c_full_n;
    sc_signal< sc_lv<32> > conf_info_mac_vec_c_dout;
    sc_signal< sc_logic > conf_info_mac_vec_c_empty_n;
    sc_signal< sc_logic > conf_info_mac_len_c_full_n;
    sc_signal< sc_lv<32> > conf_info_mac_len_c_dout;
    sc_signal< sc_logic > conf_info_mac_len_c_empty_n;
    sc_signal< sc_logic > b_0_c_full_n;
    sc_signal< sc_lv<32> > b_0_c_dout;
    sc_signal< sc_logic > b_0_c_empty_n;
    sc_signal< sc_logic > conf_info_mac_n_c_full_n;
    sc_signal< sc_lv<32> > conf_info_mac_n_c_dout;
    sc_signal< sc_logic > conf_info_mac_n_c_empty_n;
    sc_signal< sc_logic > conf_info_mac_vec_c1_1_full_n;
    sc_signal< sc_lv<32> > conf_info_mac_vec_c1_1_dout;
    sc_signal< sc_logic > conf_info_mac_vec_c1_1_empty_n;
    sc_signal< sc_logic > conf_info_mac_len_c2_1_full_n;
    sc_signal< sc_lv<32> > conf_info_mac_len_c2_1_dout;
    sc_signal< sc_logic > conf_info_mac_len_c2_1_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > load32_U0_start_full_n;
    sc_signal< sc_logic > load32_U0_start_write;
    sc_signal< sc_logic > compute_U0_start_full_n;
    sc_signal< sc_logic > compute_U0_start_write;
    sc_signal< sc_logic > store_U0_start_full_n;
    sc_signal< sc_logic > store_U0_start_write;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<96> ap_const_lv96_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_channel_done_p_inbuff_0_V();
    void thread_ap_channel_done_p_inbuff_1_V();
    void thread_ap_channel_done_p_outbuff_0_V();
    void thread_ap_channel_done_p_outbuff_1_V();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_channel_write_p_inbuff_0_V();
    void thread_ap_sync_channel_write_p_inbuff_1_V();
    void thread_ap_sync_channel_write_p_outbuff_0_V();
    void thread_ap_sync_channel_write_p_outbuff_1_V();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_compute_U0_ap_continue();
    void thread_compute_U0_ap_start();
    void thread_compute_U0_p_outbuff_0_V_full_n();
    void thread_compute_U0_p_outbuff_1_V_full_n();
    void thread_compute_U0_start_full_n();
    void thread_compute_U0_start_write();
    void thread_in1_word_V_read();
    void thread_load32_U0_ap_continue();
    void thread_load32_U0_ap_start();
    void thread_load32_U0_p_inbuff_0_V_full_n();
    void thread_load32_U0_p_inbuff_1_V_full_n();
    void thread_load32_U0_start_full_n();
    void thread_load32_U0_start_write();
    void thread_load_ctrl();
    void thread_load_ctrl_ap_vld();
    void thread_out_word_V_din();
    void thread_out_word_V_write();
    void thread_store_U0_ap_continue();
    void thread_store_U0_ap_start();
    void thread_store_U0_start_full_n();
    void thread_store_U0_start_write();
    void thread_store_ctrl();
    void thread_store_ctrl_ap_vld();
};

}

using namespace ap_rtl;

#endif