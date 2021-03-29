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


#ifndef _MAC_TYPE_WRAP_INCLUDED_
#define _MAC_TYPE_WRAP_INCLUDED_

#if !defined(ioConfig_IOCFG_DMA32) && !defined(ioConfig_IOCFG_DMA64)
#if defined(_p_ioConfig_IOCFG_DMA32)
#define ioConfig_IOCFG_DMA32 1
#endif
#if defined(_p_ioConfig_IOCFG_DMA64)
#define ioConfig_IOCFG_DMA64 1
#endif
#endif


#include <systemc.h>
#include "mac.hpp"


// Declaration of wrapper with RTL level ports

SC_MODULE(mac_type_wrapper)
{
public:

	
#if defined ( ioConfig_IOCFG_DMA32 )
	
	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_in< sc_int< 32 > > conf_info_mac_n;
	sc_in< sc_int< 32 > > conf_info_mac_vec;
	sc_in< sc_int< 32 > > conf_info_mac_len;
	sc_in< bool > conf_done;
	sc_out< bool > acc_done;
	sc_out< sc_uint< 32 > > debug;
	sc_in< bool > dma_read_chnl_valid;
	sc_in< sc_biguint< 32 > > dma_read_chnl_data;
	sc_out< bool > dma_read_chnl_ready;
	sc_out< bool > dma_read_ctrl_valid;
	sc_out< sc_uint< 32 > > dma_read_ctrl_data_index;
	sc_out< sc_uint< 32 > > dma_read_ctrl_data_length;
	sc_out< sc_biguint< 3 > > dma_read_ctrl_data_size;
	sc_in< bool > dma_read_ctrl_ready;
	sc_out< bool > dma_write_ctrl_valid;
	sc_out< sc_uint< 32 > > dma_write_ctrl_data_index;
	sc_out< sc_uint< 32 > > dma_write_ctrl_data_length;
	sc_out< sc_biguint< 3 > > dma_write_ctrl_data_size;
	sc_in< bool > dma_write_ctrl_ready;
	sc_out< bool > dma_write_chnl_valid;
	sc_out< sc_biguint< 32 > > dma_write_chnl_data;
	sc_in< bool > dma_write_chnl_ready;
	
	
#else
	
	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_in< sc_int< 32 > > conf_info_mac_n;
	sc_in< sc_int< 32 > > conf_info_mac_vec;
	sc_in< sc_int< 32 > > conf_info_mac_len;
	sc_in< bool > conf_done;
	sc_out< bool > acc_done;
	sc_out< sc_uint< 32 > > debug;
	sc_in< bool > dma_read_chnl_valid;
	sc_in< sc_biguint< 64 > > dma_read_chnl_data;
	sc_out< bool > dma_read_chnl_ready;
	sc_out< bool > dma_read_ctrl_valid;
	sc_out< sc_uint< 32 > > dma_read_ctrl_data_index;
	sc_out< sc_uint< 32 > > dma_read_ctrl_data_length;
	sc_out< sc_biguint< 3 > > dma_read_ctrl_data_size;
	sc_in< bool > dma_read_ctrl_ready;
	sc_out< bool > dma_write_ctrl_valid;
	sc_out< sc_uint< 32 > > dma_write_ctrl_data_index;
	sc_out< sc_uint< 32 > > dma_write_ctrl_data_length;
	sc_out< sc_biguint< 3 > > dma_write_ctrl_data_size;
	sc_in< bool > dma_write_ctrl_ready;
	sc_out< bool > dma_write_chnl_valid;
	sc_out< sc_biguint< 64 > > dma_write_chnl_data;
	sc_in< bool > dma_write_chnl_ready;
	
#endif

    
    // These signals are used to connect structured ports or ports that need
    // type conversion to the RTL ports.
    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    sc_signal< sc_bv< 32 > > dma_read_chnl_data_conv;
    sc_signal< conf_info_t > conf_info;
    sc_signal< unsigned int > debug_conv;
    sc_signal< dma_info_t > dma_read_ctrl_data;
    sc_signal< dma_info_t > dma_write_ctrl_data;
    sc_signal< sc_bv< 32 > > dma_write_chnl_data_conv;
    
    
#else
    
    sc_signal< sc_bv< 64 > > dma_read_chnl_data_conv;
    sc_signal< conf_info_t > conf_info;
    sc_signal< unsigned int > debug_conv;
    sc_signal< dma_info_t > dma_read_ctrl_data;
    sc_signal< dma_info_t > dma_write_ctrl_data;
    sc_signal< sc_bv< 64 > > dma_write_chnl_data_conv;
    
#endif

    

	// create the netlist
    void InitInstances();
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    void thread_dma_read_chnl_data_conv();
    void thread_conf_info();
    void thread_debug_conv();
    void thread_dma_read_ctrl_data_index();
    void thread_dma_read_ctrl_data_length();
    void thread_dma_read_ctrl_data_size();
    void thread_dma_write_ctrl_data_index();
    void thread_dma_write_ctrl_data_length();
    void thread_dma_write_ctrl_data_size();
    void thread_dma_write_chnl_data_conv();
    
    
#else
    
    void thread_dma_read_chnl_data_conv();
    void thread_conf_info();
    void thread_debug_conv();
    void thread_dma_read_ctrl_data_index();
    void thread_dma_read_ctrl_data_length();
    void thread_dma_read_ctrl_data_size();
    void thread_dma_write_ctrl_data_index();
    void thread_dma_write_ctrl_data_length();
    void thread_dma_write_ctrl_data_size();
    void thread_dma_write_chnl_data_conv();
    
#endif


	SC_HAS_PROCESS(mac_type_wrapper);

	mac_type_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("mac")) )
		: sc_module(name)
		  
#if defined ( ioConfig_IOCFG_DMA32 )
		  
		  ,clk("clk")
		  	,rst("rst")
		  	,conf_info_mac_n("conf_info_mac_n"),
		  conf_info_mac_vec("conf_info_mac_vec"),
		  conf_info_mac_len("conf_info_mac_len")
		  	,conf_done("conf_done")
		  	,acc_done("acc_done")
		  	,debug("debug")
		  	,dma_read_chnl_valid("dma_read_chnl_valid")
		  	,dma_read_chnl_data("dma_read_chnl_data")
		  	,dma_read_chnl_ready("dma_read_chnl_ready")
		  	,dma_read_ctrl_valid("dma_read_ctrl_valid")
		  	,dma_read_ctrl_data_index("dma_read_ctrl_data_index"),
		  dma_read_ctrl_data_length("dma_read_ctrl_data_length"),
		  dma_read_ctrl_data_size("dma_read_ctrl_data_size")
		  	,dma_read_ctrl_ready("dma_read_ctrl_ready")
		  	,dma_write_ctrl_valid("dma_write_ctrl_valid")
		  	,dma_write_ctrl_data_index("dma_write_ctrl_data_index"),
		  dma_write_ctrl_data_length("dma_write_ctrl_data_length"),
		  dma_write_ctrl_data_size("dma_write_ctrl_data_size")
		  	,dma_write_ctrl_ready("dma_write_ctrl_ready")
		  	,dma_write_chnl_valid("dma_write_chnl_valid")
		  	,dma_write_chnl_data("dma_write_chnl_data")
		  	,dma_write_chnl_ready("dma_write_chnl_ready")
		  	
		  
#else
		  
		  ,clk("clk")
		  	,rst("rst")
		  	,conf_info_mac_n("conf_info_mac_n"),
		  conf_info_mac_vec("conf_info_mac_vec"),
		  conf_info_mac_len("conf_info_mac_len")
		  	,conf_done("conf_done")
		  	,acc_done("acc_done")
		  	,debug("debug")
		  	,dma_read_chnl_valid("dma_read_chnl_valid")
		  	,dma_read_chnl_data("dma_read_chnl_data")
		  	,dma_read_chnl_ready("dma_read_chnl_ready")
		  	,dma_read_ctrl_valid("dma_read_ctrl_valid")
		  	,dma_read_ctrl_data_index("dma_read_ctrl_data_index"),
		  dma_read_ctrl_data_length("dma_read_ctrl_data_length"),
		  dma_read_ctrl_data_size("dma_read_ctrl_data_size")
		  	,dma_read_ctrl_ready("dma_read_ctrl_ready")
		  	,dma_write_ctrl_valid("dma_write_ctrl_valid")
		  	,dma_write_ctrl_data_index("dma_write_ctrl_data_index"),
		  dma_write_ctrl_data_length("dma_write_ctrl_data_length"),
		  dma_write_ctrl_data_size("dma_write_ctrl_data_size")
		  	,dma_write_ctrl_ready("dma_write_ctrl_ready")
		  	,dma_write_chnl_valid("dma_write_chnl_valid")
		  	,dma_write_chnl_data("dma_write_chnl_data")
		  	,dma_write_chnl_ready("dma_write_chnl_ready")
		  	
#endif
		  

		  ,mac0(0)
		

    {
        InitInstances();
        InitThreads();
		end_module();
    }


    // destructor
    ~mac_type_wrapper()
    {
        DeleteInstances();
    }


protected:
	mac* mac0;
};

#endif /*  */
