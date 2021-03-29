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
* This file contains the mac_type_wrapper module
* for use in the verilog verification wrapper mac_vlwrapper.v
* It creats an instance of the mac module and has threads
* for converting the BEH ports to RTL level ports on the wrapper.
*
****************************************************************************/

#include "mac_type_wrapper.h"


SC_MODULE_EXPORT(mac_type_wrapper)

// The following threads are used to connect RTL ports to the actual
// structured ports

#if defined ( ioConfig_IOCFG_DMA32 )

void mac_type_wrapper::thread_dma_read_chnl_data_conv()
{
   dma_read_chnl_data_conv = dma_read_chnl_data.read();
}
void mac_type_wrapper::thread_conf_info()
{
   conf_info_t tmp;
   tmp.mac_n = conf_info_mac_n.read();
   tmp.mac_vec = conf_info_mac_vec.read();
   tmp.mac_len = conf_info_mac_len.read();
   conf_info.write(tmp);
}
void mac_type_wrapper::thread_debug_conv()
{
   sc_uint< 32 > tmp;
   tmp = debug_conv.read();
   debug.write(tmp);
}
void mac_type_wrapper::thread_dma_read_ctrl_data_index()
{
   dma_read_ctrl_data_index = dma_read_ctrl_data.read().index;
}
void mac_type_wrapper::thread_dma_read_ctrl_data_length()
{
   dma_read_ctrl_data_length = dma_read_ctrl_data.read().length;
}
void mac_type_wrapper::thread_dma_read_ctrl_data_size()
{
   dma_read_ctrl_data_size = dma_read_ctrl_data.read().size;
}
void mac_type_wrapper::thread_dma_write_ctrl_data_index()
{
   dma_write_ctrl_data_index = dma_write_ctrl_data.read().index;
}
void mac_type_wrapper::thread_dma_write_ctrl_data_length()
{
   dma_write_ctrl_data_length = dma_write_ctrl_data.read().length;
}
void mac_type_wrapper::thread_dma_write_ctrl_data_size()
{
   dma_write_ctrl_data_size = dma_write_ctrl_data.read().size;
}
void mac_type_wrapper::thread_dma_write_chnl_data_conv()
{
   sc_biguint< 32 > tmp;
   tmp = dma_write_chnl_data_conv.read();
   dma_write_chnl_data.write(tmp);
}


#else

void mac_type_wrapper::thread_dma_read_chnl_data_conv()
{
   dma_read_chnl_data_conv = dma_read_chnl_data.read();
}
void mac_type_wrapper::thread_conf_info()
{
   conf_info_t tmp;
   tmp.mac_n = conf_info_mac_n.read();
   tmp.mac_vec = conf_info_mac_vec.read();
   tmp.mac_len = conf_info_mac_len.read();
   conf_info.write(tmp);
}
void mac_type_wrapper::thread_debug_conv()
{
   sc_uint< 32 > tmp;
   tmp = debug_conv.read();
   debug.write(tmp);
}
void mac_type_wrapper::thread_dma_read_ctrl_data_index()
{
   dma_read_ctrl_data_index = dma_read_ctrl_data.read().index;
}
void mac_type_wrapper::thread_dma_read_ctrl_data_length()
{
   dma_read_ctrl_data_length = dma_read_ctrl_data.read().length;
}
void mac_type_wrapper::thread_dma_read_ctrl_data_size()
{
   dma_read_ctrl_data_size = dma_read_ctrl_data.read().size;
}
void mac_type_wrapper::thread_dma_write_ctrl_data_index()
{
   dma_write_ctrl_data_index = dma_write_ctrl_data.read().index;
}
void mac_type_wrapper::thread_dma_write_ctrl_data_length()
{
   dma_write_ctrl_data_length = dma_write_ctrl_data.read().length;
}
void mac_type_wrapper::thread_dma_write_ctrl_data_size()
{
   dma_write_ctrl_data_size = dma_write_ctrl_data.read().size;
}
void mac_type_wrapper::thread_dma_write_chnl_data_conv()
{
   sc_biguint< 64 > tmp;
   tmp = dma_write_chnl_data_conv.read();
   dma_write_chnl_data.write(tmp);
}

#endif


void mac_type_wrapper::InitInstances()
{
    mac0 = new mac( "mac" );

    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    mac0->clk(clk);
    mac0->rst(rst);
    mac0->dma_read_chnl.valid(dma_read_chnl_valid);
    mac0->dma_read_chnl.data(dma_read_chnl_data_conv);
    mac0->dma_read_chnl.ready(dma_read_chnl_ready);
    mac0->conf_info(conf_info);
    mac0->conf_done(conf_done);
    mac0->acc_done(acc_done);
    mac0->debug(debug_conv);
    mac0->dma_read_ctrl.valid(dma_read_ctrl_valid);
    mac0->dma_read_ctrl.data(dma_read_ctrl_data);
    mac0->dma_read_ctrl.ready(dma_read_ctrl_ready);
    mac0->dma_write_ctrl.valid(dma_write_ctrl_valid);
    mac0->dma_write_ctrl.data(dma_write_ctrl_data);
    mac0->dma_write_ctrl.ready(dma_write_ctrl_ready);
    mac0->dma_write_chnl.valid(dma_write_chnl_valid);
    mac0->dma_write_chnl.data(dma_write_chnl_data_conv);
    mac0->dma_write_chnl.ready(dma_write_chnl_ready);
    
    
#else
    
    mac0->clk(clk);
    mac0->rst(rst);
    mac0->dma_read_chnl.valid(dma_read_chnl_valid);
    mac0->dma_read_chnl.data(dma_read_chnl_data_conv);
    mac0->dma_read_chnl.ready(dma_read_chnl_ready);
    mac0->conf_info(conf_info);
    mac0->conf_done(conf_done);
    mac0->acc_done(acc_done);
    mac0->debug(debug_conv);
    mac0->dma_read_ctrl.valid(dma_read_ctrl_valid);
    mac0->dma_read_ctrl.data(dma_read_ctrl_data);
    mac0->dma_read_ctrl.ready(dma_read_ctrl_ready);
    mac0->dma_write_ctrl.valid(dma_write_ctrl_valid);
    mac0->dma_write_ctrl.data(dma_write_ctrl_data);
    mac0->dma_write_ctrl.ready(dma_write_ctrl_ready);
    mac0->dma_write_chnl.valid(dma_write_chnl_valid);
    mac0->dma_write_chnl.data(dma_write_chnl_data_conv);
    mac0->dma_write_chnl.ready(dma_write_chnl_ready);
    
#endif

}

void mac_type_wrapper::InitThreads()
{
    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    SC_METHOD(thread_dma_read_chnl_data_conv);
      sensitive << dma_read_chnl_data;
    SC_METHOD(thread_conf_info);
      sensitive << conf_info_mac_n;
      sensitive << conf_info_mac_vec;
      sensitive << conf_info_mac_len;
    SC_METHOD(thread_debug_conv);
      sensitive << debug_conv;
    SC_METHOD(thread_dma_read_ctrl_data_index);
      sensitive << dma_read_ctrl_data;
    SC_METHOD(thread_dma_read_ctrl_data_length);
      sensitive << dma_read_ctrl_data;
    SC_METHOD(thread_dma_read_ctrl_data_size);
      sensitive << dma_read_ctrl_data;
    SC_METHOD(thread_dma_write_ctrl_data_index);
      sensitive << dma_write_ctrl_data;
    SC_METHOD(thread_dma_write_ctrl_data_length);
      sensitive << dma_write_ctrl_data;
    SC_METHOD(thread_dma_write_ctrl_data_size);
      sensitive << dma_write_ctrl_data;
    SC_METHOD(thread_dma_write_chnl_data_conv);
      sensitive << dma_write_chnl_data_conv;
    
    
#else
    
    SC_METHOD(thread_dma_read_chnl_data_conv);
      sensitive << dma_read_chnl_data;
    SC_METHOD(thread_conf_info);
      sensitive << conf_info_mac_n;
      sensitive << conf_info_mac_vec;
      sensitive << conf_info_mac_len;
    SC_METHOD(thread_debug_conv);
      sensitive << debug_conv;
    SC_METHOD(thread_dma_read_ctrl_data_index);
      sensitive << dma_read_ctrl_data;
    SC_METHOD(thread_dma_read_ctrl_data_length);
      sensitive << dma_read_ctrl_data;
    SC_METHOD(thread_dma_read_ctrl_data_size);
      sensitive << dma_read_ctrl_data;
    SC_METHOD(thread_dma_write_ctrl_data_index);
      sensitive << dma_write_ctrl_data;
    SC_METHOD(thread_dma_write_ctrl_data_length);
      sensitive << dma_write_ctrl_data;
    SC_METHOD(thread_dma_write_ctrl_data_size);
      sensitive << dma_write_ctrl_data;
    SC_METHOD(thread_dma_write_chnl_data_conv);
      sensitive << dma_write_chnl_data_conv;
    
#endif

}

void mac_type_wrapper::DeleteInstances()
{
        delete mac0;
        mac0 = 0;
}

