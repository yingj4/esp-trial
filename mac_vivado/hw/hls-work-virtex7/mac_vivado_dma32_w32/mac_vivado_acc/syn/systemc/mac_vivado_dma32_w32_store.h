// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mac_vivado_dma32_w32_store_HH_
#define _mac_vivado_dma32_w32_store_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct mac_vivado_dma32_w32_store : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<7> > p_outbuff_V_address0;
    sc_out< sc_logic > p_outbuff_V_ce0;
    sc_in< sc_lv<32> > p_outbuff_V_q0;
    sc_out< sc_lv<32> > out_word_V_din;
    sc_in< sc_logic > out_word_V_full_n;
    sc_out< sc_logic > out_word_V_write;
    sc_in< sc_lv<32> > mac_n_dout;
    sc_in< sc_logic > mac_n_empty_n;
    sc_out< sc_logic > mac_n_read;
    sc_in< sc_lv<32> > mac_vec_dout;
    sc_in< sc_logic > mac_vec_empty_n;
    sc_out< sc_logic > mac_vec_read;
    sc_in< sc_lv<32> > mac_len_dout;
    sc_in< sc_logic > mac_len_empty_n;
    sc_out< sc_logic > mac_len_read;
    sc_out< sc_lv<96> > store_ctrl;
    sc_out< sc_logic > store_ctrl_ap_vld;
    sc_in< sc_logic > store_ctrl_ap_ack;
    sc_in< sc_lv<32> > chunk_dout;
    sc_in< sc_logic > chunk_empty_n;
    sc_out< sc_logic > chunk_read;


    // Module declarations
    mac_vivado_dma32_w32_store(sc_module_name name);
    SC_HAS_PROCESS(mac_vivado_dma32_w32_store);

    ~mac_vivado_dma32_w32_store();

    sc_trace_file* mVcdFile;

    mac_vivado_dma32_w32_regslice_forward<96>* regslice_forward_store_ctrl_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > out_word_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > mac_n_blk_n;
    sc_signal< sc_logic > mac_vec_blk_n;
    sc_signal< sc_logic > mac_len_blk_n;
    sc_signal< sc_logic > store_ctrl_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > chunk_blk_n;
    sc_signal< sc_lv<32> > dma_length_reg_150;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > chunk_read_reg_157;
    sc_signal< sc_lv<32> > store_offset_fu_109_p2;
    sc_signal< sc_lv<32> > store_offset_reg_162;
    sc_signal< sc_lv<32> > i_fu_139_p2;
    sc_signal< sc_lv<32> > i_reg_175;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > regslice_forward_store_ctrl_U_apdone_blk;
    sc_signal< sc_lv<1> > icmp_ln56_fu_134_p2;
    sc_signal< sc_lv<32> > i_0_i_i_reg_98;
    sc_signal< sc_lv<64> > zext_ln58_fu_145_p1;
    sc_signal< sc_lv<32> > store_offset_fu_109_p0;
    sc_signal< sc_lv<32> > store_offset_fu_109_p1;
    sc_signal< sc_lv<32> > tmp_i_i_fu_115_p2;
    sc_signal< sc_lv<32> > index_fu_119_p2;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_lv<96> > store_ctrl_int;
    sc_signal< sc_logic > store_ctrl_ap_vld_int;
    sc_signal< sc_logic > store_ctrl_ap_ack_int;
    sc_signal< sc_logic > regslice_forward_store_ctrl_U_vld_out;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_chunk_blk_n();
    void thread_chunk_read();
    void thread_i_fu_139_p2();
    void thread_icmp_ln56_fu_134_p2();
    void thread_index_fu_119_p2();
    void thread_mac_len_blk_n();
    void thread_mac_len_read();
    void thread_mac_n_blk_n();
    void thread_mac_n_read();
    void thread_mac_vec_blk_n();
    void thread_mac_vec_read();
    void thread_out_word_V_blk_n();
    void thread_out_word_V_din();
    void thread_out_word_V_write();
    void thread_p_outbuff_V_address0();
    void thread_p_outbuff_V_ce0();
    void thread_store_ctrl_ap_vld();
    void thread_store_ctrl_ap_vld_int();
    void thread_store_ctrl_blk_n();
    void thread_store_ctrl_int();
    void thread_store_offset_fu_109_p0();
    void thread_store_offset_fu_109_p1();
    void thread_store_offset_fu_109_p2();
    void thread_tmp_i_i_fu_115_p2();
    void thread_zext_ln58_fu_145_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
