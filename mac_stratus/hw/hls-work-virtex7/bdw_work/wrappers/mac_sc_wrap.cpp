/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/
/****************************************************************************
*
* This file is used to wrap the three different versions of the DUT
* block called "mac". By default, it will include the behavioral
* model. Otherwise, it will include the RTL C++ or the RTL Verilog
* depending on the definition of either of "RTL" or "COSIM".
*
****************************************************************************/


#include	"mac_sc_wrap.h"
#include	"mac_sc_foreign.h"

// The following threads are used to connect structured ports to the actual
// RTL ports

#if defined ( ioConfig_IOCFG_DMA32 )

void mac_wrapper::thread_dma_read_chnl_data_conv()
{
   dma_read_chnl_data_conv = dma_read_chnl.data.read();
}
void mac_wrapper::thread_conf_info_mac_n()
{
   conf_info_mac_n = conf_info.read().mac_n;
}
void mac_wrapper::thread_conf_info_mac_vec()
{
   conf_info_mac_vec = conf_info.read().mac_vec;
}
void mac_wrapper::thread_conf_info_mac_len()
{
   conf_info_mac_len = conf_info.read().mac_len;
}
void mac_wrapper::thread_debug_conv()
{
   unsigned int tmp;
   tmp = debug_conv.read();
   debug.write(tmp);
}
void mac_wrapper::thread_dma_read_ctrl_data()
{
   dma_info_t tmp;
   tmp.index = dma_read_ctrl_data_index.read();
   tmp.length = dma_read_ctrl_data_length.read();
   tmp.size = dma_read_ctrl_data_size.read();
   dma_read_ctrl.data.write(tmp);
}
void mac_wrapper::thread_dma_write_ctrl_data()
{
   dma_info_t tmp;
   tmp.index = dma_write_ctrl_data_index.read();
   tmp.length = dma_write_ctrl_data_length.read();
   tmp.size = dma_write_ctrl_data_size.read();
   dma_write_ctrl.data.write(tmp);
}
void mac_wrapper::thread_dma_write_chnl_data_conv()
{
   sc_bv< 32 > tmp;
   tmp = dma_write_chnl_data_conv.read();
   dma_write_chnl.data.write(tmp);
}


#else

void mac_wrapper::thread_dma_read_chnl_data_conv()
{
   dma_read_chnl_data_conv = dma_read_chnl.data.read();
}
void mac_wrapper::thread_conf_info_mac_n()
{
   conf_info_mac_n = conf_info.read().mac_n;
}
void mac_wrapper::thread_conf_info_mac_vec()
{
   conf_info_mac_vec = conf_info.read().mac_vec;
}
void mac_wrapper::thread_conf_info_mac_len()
{
   conf_info_mac_len = conf_info.read().mac_len;
}
void mac_wrapper::thread_debug_conv()
{
   unsigned int tmp;
   tmp = debug_conv.read();
   debug.write(tmp);
}
void mac_wrapper::thread_dma_read_ctrl_data()
{
   dma_info_t tmp;
   tmp.index = dma_read_ctrl_data_index.read();
   tmp.length = dma_read_ctrl_data_length.read();
   tmp.size = dma_read_ctrl_data_size.read();
   dma_read_ctrl.data.write(tmp);
}
void mac_wrapper::thread_dma_write_ctrl_data()
{
   dma_info_t tmp;
   tmp.index = dma_write_ctrl_data_index.read();
   tmp.length = dma_write_ctrl_data_length.read();
   tmp.size = dma_write_ctrl_data_size.read();
   dma_write_ctrl.data.write(tmp);
}
void mac_wrapper::thread_dma_write_chnl_data_conv()
{
   sc_bv< 64 > tmp;
   tmp = dma_write_chnl_data_conv.read();
   dma_write_chnl.data.write(tmp);
}

#endif


void mac_wrapper::InitInstances(  )
{
	
#if defined ( ioConfig_IOCFG_DMA32 )
	
	
	
#else
	
	
#endif

            
    mac0 = new mac( "mac" );

    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    mac0->clk(clk);
    mac0->rst(rst);
    mac0->dma_read_chnl_valid(dma_read_chnl.valid);
    mac0->dma_read_chnl_data(dma_read_chnl_data_conv);
    mac0->dma_read_chnl_ready(dma_read_chnl.ready);
    mac0->conf_info_mac_n(conf_info_mac_n);
    mac0->conf_info_mac_vec(conf_info_mac_vec);
    mac0->conf_info_mac_len(conf_info_mac_len);
    mac0->conf_done(conf_done);
    mac0->acc_done(acc_done);
    mac0->debug(debug_conv);
    mac0->dma_read_ctrl_valid(dma_read_ctrl.valid);
    mac0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
    mac0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
    mac0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
    mac0->dma_read_ctrl_ready(dma_read_ctrl.ready);
    mac0->dma_write_ctrl_valid(dma_write_ctrl.valid);
    mac0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
    mac0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
    mac0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
    mac0->dma_write_ctrl_ready(dma_write_ctrl.ready);
    mac0->dma_write_chnl_valid(dma_write_chnl.valid);
    mac0->dma_write_chnl_data(dma_write_chnl_data_conv);
    mac0->dma_write_chnl_ready(dma_write_chnl.ready);
    
    
#else
    
    mac0->clk(clk);
    mac0->rst(rst);
    mac0->dma_read_chnl_valid(dma_read_chnl.valid);
    mac0->dma_read_chnl_data(dma_read_chnl_data_conv);
    mac0->dma_read_chnl_ready(dma_read_chnl.ready);
    mac0->conf_info_mac_n(conf_info_mac_n);
    mac0->conf_info_mac_vec(conf_info_mac_vec);
    mac0->conf_info_mac_len(conf_info_mac_len);
    mac0->conf_done(conf_done);
    mac0->acc_done(acc_done);
    mac0->debug(debug_conv);
    mac0->dma_read_ctrl_valid(dma_read_ctrl.valid);
    mac0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
    mac0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
    mac0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
    mac0->dma_read_ctrl_ready(dma_read_ctrl.ready);
    mac0->dma_write_ctrl_valid(dma_write_ctrl.valid);
    mac0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
    mac0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
    mac0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
    mac0->dma_write_ctrl_ready(dma_write_ctrl.ready);
    mac0->dma_write_chnl_valid(dma_write_chnl.valid);
    mac0->dma_write_chnl_data(dma_write_chnl_data_conv);
    mac0->dma_write_chnl_ready(dma_write_chnl.ready);
    
#endif

}

void mac_wrapper::InitThreads()
{
    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    SC_METHOD(thread_dma_read_chnl_data_conv);
      sensitive << dma_read_chnl.data;
    SC_METHOD(thread_conf_info_mac_n);
      sensitive << conf_info;
    SC_METHOD(thread_conf_info_mac_vec);
      sensitive << conf_info;
    SC_METHOD(thread_conf_info_mac_len);
      sensitive << conf_info;
    SC_METHOD(thread_debug_conv);
      sensitive << debug_conv;
    SC_METHOD(thread_dma_read_ctrl_data);
      sensitive << dma_read_ctrl_data_index;
      sensitive << dma_read_ctrl_data_length;
      sensitive << dma_read_ctrl_data_size;
    SC_METHOD(thread_dma_write_ctrl_data);
      sensitive << dma_write_ctrl_data_index;
      sensitive << dma_write_ctrl_data_length;
      sensitive << dma_write_ctrl_data_size;
    SC_METHOD(thread_dma_write_chnl_data_conv);
      sensitive << dma_write_chnl_data_conv;
    
    
#else
    
    SC_METHOD(thread_dma_read_chnl_data_conv);
      sensitive << dma_read_chnl.data;
    SC_METHOD(thread_conf_info_mac_n);
      sensitive << conf_info;
    SC_METHOD(thread_conf_info_mac_vec);
      sensitive << conf_info;
    SC_METHOD(thread_conf_info_mac_len);
      sensitive << conf_info;
    SC_METHOD(thread_debug_conv);
      sensitive << debug_conv;
    SC_METHOD(thread_dma_read_ctrl_data);
      sensitive << dma_read_ctrl_data_index;
      sensitive << dma_read_ctrl_data_length;
      sensitive << dma_read_ctrl_data_size;
    SC_METHOD(thread_dma_write_ctrl_data);
      sensitive << dma_write_ctrl_data_index;
      sensitive << dma_write_ctrl_data_length;
      sensitive << dma_write_ctrl_data_size;
    SC_METHOD(thread_dma_write_chnl_data_conv);
      sensitive << dma_write_chnl_data_conv;
    
#endif

}

void mac_wrapper::DeleteInstances()
{
    if (mac0)
    {
        delete mac0;
        mac0 = 0;
    }
}

