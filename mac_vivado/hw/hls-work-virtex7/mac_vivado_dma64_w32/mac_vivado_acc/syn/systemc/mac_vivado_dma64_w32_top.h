// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mac_vivado_dma64_w32_top_HH_
#define _mac_vivado_dma64_w32_top_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "mac_vivado_dma64_w32_dataflow_in_loop_bat.h"

namespace ap_rtl {

struct mac_vivado_dma64_w32_top : public sc_module {
    // Port declarations 21
    sc_out< sc_lv<64> > out_word_V_din;
    sc_in< sc_logic > out_word_V_full_n;
    sc_out< sc_logic > out_word_V_write;
    sc_in< sc_lv<64> > in1_word_V_dout;
    sc_in< sc_logic > in1_word_V_empty_n;
    sc_out< sc_logic > in1_word_V_read;
    sc_in< sc_lv<32> > conf_info_mac_n;
    sc_in< sc_lv<32> > conf_info_mac_vec;
    sc_in< sc_lv<32> > conf_info_mac_len;
    sc_out< sc_lv<96> > load_ctrl;
    sc_out< sc_lv<96> > store_ctrl;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_out< sc_logic > load_ctrl_ap_vld;
    sc_in< sc_logic > load_ctrl_ap_ack;
    sc_out< sc_logic > store_ctrl_ap_vld;
    sc_in< sc_logic > store_ctrl_ap_ack;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    mac_vivado_dma64_w32_top(sc_module_name name);
    SC_HAS_PROCESS(mac_vivado_dma64_w32_top);

    ~mac_vivado_dma64_w32_top();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    mac_vivado_dma64_w32_dataflow_in_loop_bat* dataflow_in_loop_bat_U0;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_in1_word_V_read;
    sc_signal< sc_lv<96> > dataflow_in_loop_bat_U0_load_ctrl;
    sc_signal< sc_lv<64> > dataflow_in_loop_bat_U0_out_word_V_din;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_out_word_V_write;
    sc_signal< sc_lv<96> > dataflow_in_loop_bat_U0_store_ctrl;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_load_ctrl_ap_vld;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_ap_start;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_ap_done;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_store_ctrl_ap_vld;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_ap_ready;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_ap_idle;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_ap_continue;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_lv<32> > loop_dataflow_input_count;
    sc_signal< sc_lv<32> > loop_dataflow_output_count;
    sc_signal< sc_lv<32> > bound_minus_1;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_start_full_n;
    sc_signal< sc_logic > dataflow_in_loop_bat_U0_start_write;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<96> ap_const_lv96_0;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_bound_minus_1();
    void thread_dataflow_in_loop_bat_U0_ap_continue();
    void thread_dataflow_in_loop_bat_U0_ap_start();
    void thread_dataflow_in_loop_bat_U0_start_full_n();
    void thread_dataflow_in_loop_bat_U0_start_write();
    void thread_in1_word_V_read();
    void thread_load_ctrl();
    void thread_load_ctrl_ap_vld();
    void thread_out_word_V_din();
    void thread_out_word_V_write();
    void thread_store_ctrl();
    void thread_store_ctrl_ap_vld();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
