/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/

#ifdef NCSC
#include <string>
typedef std::string sc_string;
#define SYSTEMC_VERSION 20070314
#endif

#include "mac_cycsim.h"
#include "esc_catrace.h"
#include "verilated.h"
#include "Vmac_rtl.h"


class Vmac_rtl;

class mac_cycsimV : public mac_cycsim
{
    // Port declarations inherited from parent class

    // These signals are used to connect ports that need type conversion to the RTL ports
    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    sc_signal< uint32_t > dma_read_chnl_data_conv_I;
    sc_signal< uint32_t > conf_info_mac_n_conv_I;
    sc_signal< uint32_t > conf_info_mac_vec_conv_I;
    sc_signal< uint32_t > conf_info_mac_len_conv_I;
    sc_signal< uint32_t > debug_conv_O;
    sc_signal< uint32_t > dma_read_ctrl_data_index_conv_O;
    sc_signal< uint32_t > dma_read_ctrl_data_length_conv_O;
    sc_signal< uint32_t > dma_read_ctrl_data_size_conv_O;
    sc_signal< uint32_t > dma_write_ctrl_data_index_conv_O;
    sc_signal< uint32_t > dma_write_ctrl_data_length_conv_O;
    sc_signal< uint32_t > dma_write_ctrl_data_size_conv_O;
    sc_signal< uint32_t > dma_write_chnl_data_conv_O;
    
    
#else
    
    sc_signal< uint64_t > dma_read_chnl_data_conv_I;
    sc_signal< uint32_t > conf_info_mac_n_conv_I;
    sc_signal< uint32_t > conf_info_mac_vec_conv_I;
    sc_signal< uint32_t > conf_info_mac_len_conv_I;
    sc_signal< uint32_t > debug_conv_O;
    sc_signal< uint32_t > dma_read_ctrl_data_index_conv_O;
    sc_signal< uint32_t > dma_read_ctrl_data_length_conv_O;
    sc_signal< uint32_t > dma_read_ctrl_data_size_conv_O;
    sc_signal< uint32_t > dma_write_ctrl_data_index_conv_O;
    sc_signal< uint32_t > dma_write_ctrl_data_length_conv_O;
    sc_signal< uint32_t > dma_write_ctrl_data_size_conv_O;
    sc_signal< uint64_t > dma_write_chnl_data_conv_O;
    
#endif


    // The following threads are used to do the type conversion.
    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    inline void thread_dma_read_chnl_data_I() {
        dma_read_chnl_data_conv_I = (sc_uint<32>)dma_read_chnl_data.read();
    };
    inline void thread_conf_info_mac_n_I() {
        conf_info_mac_n_conv_I = (sc_uint<32>)conf_info_mac_n.read();
    };
    inline void thread_conf_info_mac_vec_I() {
        conf_info_mac_vec_conv_I = (sc_uint<32>)conf_info_mac_vec.read();
    };
    inline void thread_conf_info_mac_len_I() {
        conf_info_mac_len_conv_I = (sc_uint<32>)conf_info_mac_len.read();
    };
    inline void thread_debug_O() {
        debug = debug_conv_O.read();
    };
    inline void thread_dma_read_ctrl_data_index_O() {
        dma_read_ctrl_data_index = dma_read_ctrl_data_index_conv_O.read();
    };
    inline void thread_dma_read_ctrl_data_length_O() {
        dma_read_ctrl_data_length = dma_read_ctrl_data_length_conv_O.read();
    };
    inline void thread_dma_read_ctrl_data_size_O() {
        dma_read_ctrl_data_size = dma_read_ctrl_data_size_conv_O.read();
    };
    inline void thread_dma_write_ctrl_data_index_O() {
        dma_write_ctrl_data_index = dma_write_ctrl_data_index_conv_O.read();
    };
    inline void thread_dma_write_ctrl_data_length_O() {
        dma_write_ctrl_data_length = dma_write_ctrl_data_length_conv_O.read();
    };
    inline void thread_dma_write_ctrl_data_size_O() {
        dma_write_ctrl_data_size = dma_write_ctrl_data_size_conv_O.read();
    };
    inline void thread_dma_write_chnl_data_O() {
        dma_write_chnl_data = dma_write_chnl_data_conv_O.read();
    };
    
    
#else
    
    inline void thread_dma_read_chnl_data_I() {
        dma_read_chnl_data_conv_I = (sc_uint<64>)dma_read_chnl_data.read();
    };
    inline void thread_conf_info_mac_n_I() {
        conf_info_mac_n_conv_I = (sc_uint<32>)conf_info_mac_n.read();
    };
    inline void thread_conf_info_mac_vec_I() {
        conf_info_mac_vec_conv_I = (sc_uint<32>)conf_info_mac_vec.read();
    };
    inline void thread_conf_info_mac_len_I() {
        conf_info_mac_len_conv_I = (sc_uint<32>)conf_info_mac_len.read();
    };
    inline void thread_debug_O() {
        debug = debug_conv_O.read();
    };
    inline void thread_dma_read_ctrl_data_index_O() {
        dma_read_ctrl_data_index = dma_read_ctrl_data_index_conv_O.read();
    };
    inline void thread_dma_read_ctrl_data_length_O() {
        dma_read_ctrl_data_length = dma_read_ctrl_data_length_conv_O.read();
    };
    inline void thread_dma_read_ctrl_data_size_O() {
        dma_read_ctrl_data_size = dma_read_ctrl_data_size_conv_O.read();
    };
    inline void thread_dma_write_ctrl_data_index_O() {
        dma_write_ctrl_data_index = dma_write_ctrl_data_index_conv_O.read();
    };
    inline void thread_dma_write_ctrl_data_length_O() {
        dma_write_ctrl_data_length = dma_write_ctrl_data_length_conv_O.read();
    };
    inline void thread_dma_write_ctrl_data_size_O() {
        dma_write_ctrl_data_size = dma_write_ctrl_data_size_conv_O.read();
    };
    inline void thread_dma_write_chnl_data_O() {
        dma_write_chnl_data = dma_write_chnl_data_conv_O.read();
    };
    
#endif


    SC_HAS_PROCESS(mac_cycsimV);

public:

    mac_cycsimV( sc_module_name in_name=sc_module_name(sc_gen_unique_name(" mac") ) )
        : mac_cycsim(in_name)
    {
        // instantiate the verilated module
        mac_cyc0 = new Vmac_rtl( "Vmac" );
        // generate port connections
        
#if defined ( ioConfig_IOCFG_DMA32 )
        
        mac_cyc0->clk(clk);
        mac_cyc0->rst(rst);
        mac_cyc0->dma_read_chnl_valid(dma_read_chnl_valid);
        mac_cyc0->dma_read_chnl_data(dma_read_chnl_data_conv_I);
        mac_cyc0->dma_read_chnl_ready(dma_read_chnl_ready);
        mac_cyc0->conf_info_mac_n(conf_info_mac_n_conv_I);
        mac_cyc0->conf_info_mac_vec(conf_info_mac_vec_conv_I);
        mac_cyc0->conf_info_mac_len(conf_info_mac_len_conv_I);
        mac_cyc0->conf_done(conf_done);
        mac_cyc0->acc_done(acc_done);
        mac_cyc0->debug(debug_conv_O);
        mac_cyc0->dma_read_ctrl_valid(dma_read_ctrl_valid);
        mac_cyc0->dma_read_ctrl_data_index(dma_read_ctrl_data_index_conv_O);
        mac_cyc0->dma_read_ctrl_data_length(dma_read_ctrl_data_length_conv_O);
        mac_cyc0->dma_read_ctrl_data_size(dma_read_ctrl_data_size_conv_O);
        mac_cyc0->dma_read_ctrl_ready(dma_read_ctrl_ready);
        mac_cyc0->dma_write_ctrl_valid(dma_write_ctrl_valid);
        mac_cyc0->dma_write_ctrl_data_index(dma_write_ctrl_data_index_conv_O);
        mac_cyc0->dma_write_ctrl_data_length(dma_write_ctrl_data_length_conv_O);
        mac_cyc0->dma_write_ctrl_data_size(dma_write_ctrl_data_size_conv_O);
        mac_cyc0->dma_write_ctrl_ready(dma_write_ctrl_ready);
        mac_cyc0->dma_write_chnl_valid(dma_write_chnl_valid);
        mac_cyc0->dma_write_chnl_data(dma_write_chnl_data_conv_O);
        mac_cyc0->dma_write_chnl_ready(dma_write_chnl_ready);
        
        
#else
        
        mac_cyc0->clk(clk);
        mac_cyc0->rst(rst);
        mac_cyc0->dma_read_chnl_valid(dma_read_chnl_valid);
        mac_cyc0->dma_read_chnl_data(dma_read_chnl_data_conv_I);
        mac_cyc0->dma_read_chnl_ready(dma_read_chnl_ready);
        mac_cyc0->conf_info_mac_n(conf_info_mac_n_conv_I);
        mac_cyc0->conf_info_mac_vec(conf_info_mac_vec_conv_I);
        mac_cyc0->conf_info_mac_len(conf_info_mac_len_conv_I);
        mac_cyc0->conf_done(conf_done);
        mac_cyc0->acc_done(acc_done);
        mac_cyc0->debug(debug_conv_O);
        mac_cyc0->dma_read_ctrl_valid(dma_read_ctrl_valid);
        mac_cyc0->dma_read_ctrl_data_index(dma_read_ctrl_data_index_conv_O);
        mac_cyc0->dma_read_ctrl_data_length(dma_read_ctrl_data_length_conv_O);
        mac_cyc0->dma_read_ctrl_data_size(dma_read_ctrl_data_size_conv_O);
        mac_cyc0->dma_read_ctrl_ready(dma_read_ctrl_ready);
        mac_cyc0->dma_write_ctrl_valid(dma_write_ctrl_valid);
        mac_cyc0->dma_write_ctrl_data_index(dma_write_ctrl_data_index_conv_O);
        mac_cyc0->dma_write_ctrl_data_length(dma_write_ctrl_data_length_conv_O);
        mac_cyc0->dma_write_ctrl_data_size(dma_write_ctrl_data_size_conv_O);
        mac_cyc0->dma_write_ctrl_ready(dma_write_ctrl_ready);
        mac_cyc0->dma_write_chnl_valid(dma_write_chnl_valid);
        mac_cyc0->dma_write_chnl_data(dma_write_chnl_data_conv_O);
        mac_cyc0->dma_write_chnl_ready(dma_write_chnl_ready);
        
#endif


        // setup the type conversion threads
        
#if defined ( ioConfig_IOCFG_DMA32 )
        
        SC_METHOD( thread_dma_read_chnl_data_I);
            sensitive << dma_read_chnl_data;
        SC_METHOD( thread_conf_info_mac_n_I);
            sensitive << conf_info_mac_n;
        SC_METHOD( thread_conf_info_mac_vec_I);
            sensitive << conf_info_mac_vec;
        SC_METHOD( thread_conf_info_mac_len_I);
            sensitive << conf_info_mac_len;
        SC_METHOD( thread_debug_O);
            sensitive << debug_conv_O;
        SC_METHOD( thread_dma_read_ctrl_data_index_O);
            sensitive << dma_read_ctrl_data_index_conv_O;
        SC_METHOD( thread_dma_read_ctrl_data_length_O);
            sensitive << dma_read_ctrl_data_length_conv_O;
        SC_METHOD( thread_dma_read_ctrl_data_size_O);
            sensitive << dma_read_ctrl_data_size_conv_O;
        SC_METHOD( thread_dma_write_ctrl_data_index_O);
            sensitive << dma_write_ctrl_data_index_conv_O;
        SC_METHOD( thread_dma_write_ctrl_data_length_O);
            sensitive << dma_write_ctrl_data_length_conv_O;
        SC_METHOD( thread_dma_write_ctrl_data_size_O);
            sensitive << dma_write_ctrl_data_size_conv_O;
        SC_METHOD( thread_dma_write_chnl_data_O);
            sensitive << dma_write_chnl_data_conv_O;
        
        
#else
        
        SC_METHOD( thread_dma_read_chnl_data_I);
            sensitive << dma_read_chnl_data;
        SC_METHOD( thread_conf_info_mac_n_I);
            sensitive << conf_info_mac_n;
        SC_METHOD( thread_conf_info_mac_vec_I);
            sensitive << conf_info_mac_vec;
        SC_METHOD( thread_conf_info_mac_len_I);
            sensitive << conf_info_mac_len;
        SC_METHOD( thread_debug_O);
            sensitive << debug_conv_O;
        SC_METHOD( thread_dma_read_ctrl_data_index_O);
            sensitive << dma_read_ctrl_data_index_conv_O;
        SC_METHOD( thread_dma_read_ctrl_data_length_O);
            sensitive << dma_read_ctrl_data_length_conv_O;
        SC_METHOD( thread_dma_read_ctrl_data_size_O);
            sensitive << dma_read_ctrl_data_size_conv_O;
        SC_METHOD( thread_dma_write_ctrl_data_index_O);
            sensitive << dma_write_ctrl_data_index_conv_O;
        SC_METHOD( thread_dma_write_ctrl_data_length_O);
            sensitive << dma_write_ctrl_data_length_conv_O;
        SC_METHOD( thread_dma_write_ctrl_data_size_O);
            sensitive << dma_write_ctrl_data_size_conv_O;
        SC_METHOD( thread_dma_write_chnl_data_O);
            sensitive << dma_write_chnl_data_conv_O;
        
#endif


        TraceFileType* tfp = esc_get_ca_trace_file();
        if ( tfp )
        {
            mac_cyc0->trace(tfp,99);
        }
    };

    ~mac_cycsimV()
    {
        delete mac_cyc0;
    }

    void end_of_elaboration()
    {
        esc_open_ca_trace_file();
    }

    void end_of_simulation()
    {
        esc_close_ca_trace_file();
    }

protected:
    Vmac_rtl* mac_cyc0;
};

mac_cycsim* mac_cycsim_factory()
{
    return new mac_cycsimV("mac");
}

class mac_linkup
{
public:
    mac_linkup() {
        extern mac_cycsim* (*mac_cycsim_factory_p)();
        mac_cycsim_factory_p = &mac_cycsim_factory;
    }
};

// Create the one instance of the factory for this verilated model.
mac_linkup mac_cycsimV_link;


