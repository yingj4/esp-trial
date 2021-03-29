/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/


#ifndef _MAC_WRAP_INCLUDED_
#define _MAC_WRAP_INCLUDED_

#if !defined(ioConfig_IOCFG_DMA32) && !defined(ioConfig_IOCFG_DMA64)
#if defined(_p_ioConfig_IOCFG_DMA32)
#define ioConfig_IOCFG_DMA32 1
#endif
#if defined(_p_ioConfig_IOCFG_DMA64)
#define ioConfig_IOCFG_DMA64 1
#endif
#endif


/* Save ioConfig define values for parent module and define those for this module's ioConfigs. */
#if defined(ioConfig_IOCFG_DMA32)
#if defined(ioConfig) && defined(_wrap_ioConfig) && !defined(_local_ioConfig)
#undef ioConfig
#define ioConfig _local_ioConfig
#define _local_ioConfig IOCFG_DMA32
#endif
#if defined(DMA_WIDTH) && defined(_wrap_DMA_WIDTH) && !defined(_local_DMA_WIDTH)
#undef DMA_WIDTH
#define DMA_WIDTH _local_DMA_WIDTH
#define _local_DMA_WIDTH 32
#endif
#endif
#if defined(ioConfig_IOCFG_DMA64)
#if defined(ioConfig) && defined(_wrap_ioConfig) && !defined(_local_ioConfig)
#undef ioConfig
#define ioConfig _local_ioConfig
#define _local_ioConfig IOCFG_DMA64
#endif
#if defined(DMA_WIDTH) && defined(_wrap_DMA_WIDTH) && !defined(_local_DMA_WIDTH)
#undef DMA_WIDTH
#define DMA_WIDTH _local_DMA_WIDTH
#define _local_DMA_WIDTH 64
#endif
#endif


#if defined(STRATUS_VLG) 

#include <systemc.h>

#define mac_wrapper mac

/* This is the section that is seen during processing by stratus_vlg of a module
 * that instantiates the module defined by this wrapper.
 */
SC_MODULE(mac)
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

	SC_CTOR(mac);
};

#elif defined(CYNTHHL) || defined(BDW_EXTRACT)

/* This is the section seen during processing by stratus_hls or bdw_extract of a module 
 * that instantiates the module defined by this wrapper.
 */
#include <systemc.h>

#include "cynw_put_get_channels/cynw_put_get_port_base.h"
#include "../src/mac_conf_info.hpp"
#include "/scratch/projects/yingj4/esp/accelerators/stratus_hls/common/inc/core/systems/esp_dma_info.hpp"


#define mac_wrapper mac

/* Only port declarations are required for nested modules.
 */
SC_MODULE(mac)
{
public:
	
#if defined ( ioConfig_IOCFG_DMA32 )
	
	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_in< conf_info_t > conf_info;
	sc_in< bool > conf_done;
	sc_out< bool > acc_done;
	sc_out< unsigned int > debug;
	cynw::cynw_get_port_base <sc_dt::sc_bv <(int)32 > > dma_read_chnl;
	cynw::cynw_put_port_base <dma_info_t > dma_read_ctrl;
	cynw::cynw_put_port_base <dma_info_t > dma_write_ctrl;
	cynw::cynw_put_port_base <sc_dt::sc_bv <(int)32 > > dma_write_chnl;
	
	
#else
	
	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_in< conf_info_t > conf_info;
	sc_in< bool > conf_done;
	sc_out< bool > acc_done;
	sc_out< unsigned int > debug;
	cynw::cynw_get_port_base <sc_dt::sc_bv <(int)64 > > dma_read_chnl;
	cynw::cynw_put_port_base <dma_info_t > dma_read_ctrl;
	cynw::cynw_put_port_base <dma_info_t > dma_write_ctrl;
	cynw::cynw_put_port_base <sc_dt::sc_bv <(int)64 > > dma_write_chnl;
	
#endif


	SC_HAS_PROCESS(mac);
    	mac_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("mac")) );
};

#else

#include <esc.h>


/* This is the section seen during processing by gcc either when the module
 * itself is compiled, or when a module that instantiates it is compiled.
 */

struct mac;
struct mac_cosim;
struct mac_cycsim;
struct mac_rtl;

#ifdef BDW_COWARE
#include	"mac_coware.h"
#endif

#include "cynw_put_get_channels/cynw_put_get_port_base.h"
#include "../src/mac_conf_info.hpp"
#include "/scratch/projects/yingj4/esp/accelerators/stratus_hls/common/inc/core/systems/esp_dma_info.hpp"


// Declaration of wrapper with BEH level ports

SC_MODULE(mac_wrapper)
{
public:

	
#if defined ( ioConfig_IOCFG_DMA32 )
	
	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_in< conf_info_t > conf_info;
	sc_in< bool > conf_done;
	sc_out< bool > acc_done;
	sc_out< unsigned int > debug;
	cynw::cynw_get_port_base <sc_dt::sc_bv <(int)32 > > dma_read_chnl;
	cynw::cynw_put_port_base <dma_info_t > dma_read_ctrl;
	cynw::cynw_put_port_base <dma_info_t > dma_write_ctrl;
	cynw::cynw_put_port_base <sc_dt::sc_bv <(int)32 > > dma_write_chnl;
	
	
#else
	
	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_in< conf_info_t > conf_info;
	sc_in< bool > conf_done;
	sc_out< bool > acc_done;
	sc_out< unsigned int > debug;
	cynw::cynw_get_port_base <sc_dt::sc_bv <(int)64 > > dma_read_chnl;
	cynw::cynw_put_port_base <dma_info_t > dma_read_ctrl;
	cynw::cynw_put_port_base <dma_info_t > dma_write_ctrl;
	cynw::cynw_put_port_base <sc_dt::sc_bv <(int)64 > > dma_write_chnl;
	
#endif

    
    // These signals are used to connect structured ports or ports that need
    // type conversion to the RTL ports.
    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    sc_signal< sc_biguint< 32 > > dma_read_chnl_data_conv;
    sc_signal< sc_int< 32 > > conf_info_mac_n;
    sc_signal< sc_int< 32 > > conf_info_mac_vec;
    sc_signal< sc_int< 32 > > conf_info_mac_len;
    sc_signal< sc_uint< 32 > > debug_conv;
    sc_signal< sc_uint< 32 > > dma_read_ctrl_data_index;
    sc_signal< sc_uint< 32 > > dma_read_ctrl_data_length;
    sc_signal< sc_biguint< 3 > > dma_read_ctrl_data_size;
    sc_signal< sc_uint< 32 > > dma_write_ctrl_data_index;
    sc_signal< sc_uint< 32 > > dma_write_ctrl_data_length;
    sc_signal< sc_biguint< 3 > > dma_write_ctrl_data_size;
    sc_signal< sc_biguint< 32 > > dma_write_chnl_data_conv;
    
    
#else
    
    sc_signal< sc_biguint< 64 > > dma_read_chnl_data_conv;
    sc_signal< sc_int< 32 > > conf_info_mac_n;
    sc_signal< sc_int< 32 > > conf_info_mac_vec;
    sc_signal< sc_int< 32 > > conf_info_mac_len;
    sc_signal< sc_uint< 32 > > debug_conv;
    sc_signal< sc_uint< 32 > > dma_read_ctrl_data_index;
    sc_signal< sc_uint< 32 > > dma_read_ctrl_data_length;
    sc_signal< sc_biguint< 3 > > dma_read_ctrl_data_size;
    sc_signal< sc_uint< 32 > > dma_write_ctrl_data_index;
    sc_signal< sc_uint< 32 > > dma_write_ctrl_data_length;
    sc_signal< sc_biguint< 3 > > dma_write_ctrl_data_size;
    sc_signal< sc_biguint< 64 > > dma_write_chnl_data_conv;
    
#endif

    
	enum Representation { BDWRep_None, BDWRep_Behavioral, BDWRep_RTL_C, BDWRep_RTL_HDL, BDWRep_Gates, BDWRep_CYC_HDL };
	static const char * simConfigName();
	static Representation lookupRepresentation( const char* instName );
	// create the netlist
    void InitInstances( );
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

	void CloseTrace();
	void start_of_simulation();
	void end_of_simulation();


    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    
#if defined ( ioConfig_IOCFG_DMA32 )
    
    void thread_dma_read_chnl_data_conv();
    void thread_conf_info_mac_n();
    void thread_conf_info_mac_vec();
    void thread_conf_info_mac_len();
    void thread_debug_conv();
    void thread_dma_read_ctrl_data();
    void thread_dma_write_ctrl_data();
    void thread_dma_write_chnl_data_conv();
    
    
#else
    
    void thread_dma_read_chnl_data_conv();
    void thread_conf_info_mac_n();
    void thread_conf_info_mac_vec();
    void thread_conf_info_mac_len();
    void thread_debug_conv();
    void thread_dma_read_ctrl_data();
    void thread_dma_write_ctrl_data();
    void thread_dma_write_chnl_data_conv();
    
#endif


	SC_HAS_PROCESS(mac_wrapper);

    	mac_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("mac")) )
		: sc_module(name)
		  
#if defined ( ioConfig_IOCFG_DMA32 )
		  
		  ,clk("clk")
		  	,rst("rst")
		  	,conf_info("conf_info")
		  	,conf_done("conf_done")
		  	,acc_done("acc_done")
		  	,debug("debug")
		  	,dma_read_chnl("dma_read_chnl")
		  	,dma_read_ctrl("dma_read_ctrl")
		  	,dma_write_ctrl("dma_write_ctrl")
		  	,dma_write_chnl("dma_write_chnl")
		  	
		  
#else
		  
		  ,clk("clk")
		  	,rst("rst")
		  	,conf_info("conf_info")
		  	,conf_done("conf_done")
		  	,acc_done("acc_done")
		  	,debug("debug")
		  	,dma_read_chnl("dma_read_chnl")
		  	,dma_read_ctrl("dma_read_ctrl")
		  	,dma_write_ctrl("dma_write_ctrl")
		  	,dma_write_chnl("dma_write_chnl")
		  	
#endif
		  

		  ,mac0(0), mac_cosim0(0), mac_rtl0(0), mac_cycsim0(0)
		

    {
        InitInstances( );
		InitThreads();
    }


    // destructor
    ~mac_wrapper()
    {
        DeleteInstances();

		CloseTrace();
    }

    bool isBEH() { return ( mac_wrapper::lookupRepresentation( name() ) == BDWRep_Behavioral ); }
    bool isRTL_C() { return ( mac_wrapper::lookupRepresentation( name() ) == BDWRep_RTL_C ); }
    bool isRTL_V() { return ( mac_wrapper::lookupRepresentation( name() ) == BDWRep_RTL_HDL ); }
    bool isGATES_V() { return ( mac_wrapper::lookupRepresentation( name() ) == BDWRep_Gates ); }
	bool isCosim() { return ( isRTL_V() || isGATES_V() ); }
    bool isCycsim() { return ( mac_wrapper::lookupRepresentation( name() ) == BDWRep_CYC_HDL ); }

	mac* behModule() { return mac0; }
	mac_cosim* cosimModule() { return mac_cosim0; }
	mac_cycsim* cycsimModule() { return mac_cycsim0; }
	mac_rtl* rtlModule() { return mac_rtl0; }

	mac* mac0;
	mac_cosim* mac_cosim0;
	mac_rtl* mac_rtl0;
	mac_cycsim* mac_cycsim0;
};

// Declaration of wrapper with RTL level ports

SC_MODULE(mac_wrapper_r)
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

    
	enum Representation { BDWRep_None, BDWRep_Behavioral, BDWRep_RTL_C, BDWRep_RTL_HDL, BDWRep_Gates, BDWRep_CYC_HDL };

	static const char * simConfigName();
	static Representation lookupRepresentation( const char* instName );
	// create the netlist
    void InitInstances();
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

	void CloseTrace();
	void start_of_simulation();
	void end_of_simulation();


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


	SC_HAS_PROCESS(mac_wrapper_r);

	mac_wrapper_r( sc_module_name name = sc_module_name( sc_gen_unique_name("mac")) )
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
		  

		  ,mac0(0), mac_cosim0(0), mac_rtl0(0), mac_cycsim0(0)
		

    {
        InitInstances();
        InitThreads();
		end_module();
    }


    // destructor
    ~mac_wrapper_r()
    {
        DeleteInstances();

		CloseTrace();
    }

    bool isBEH() { return ( mac_wrapper_r::lookupRepresentation( name() ) == BDWRep_Behavioral ); }
    bool isRTL_C() { return ( mac_wrapper_r::lookupRepresentation( name() ) == BDWRep_RTL_C ); }
    bool isRTL_V() { return ( mac_wrapper_r::lookupRepresentation( name() ) == BDWRep_RTL_HDL ); }
    bool isGATES_V() { return ( mac_wrapper_r::lookupRepresentation( name() ) == BDWRep_Gates ); }
	bool isCosim() { return ( isRTL_V() || isGATES_V() ); }
    bool isCycsim() { return ( mac_wrapper_r::lookupRepresentation( name() ) == BDWRep_CYC_HDL ); }

	mac* behModule() { return mac0; }
	mac_cosim* cosimModule() { return mac_cosim0; }
	mac_cycsim* cycsimModule() { return mac_cycsim0; }
	mac_rtl* rtlModule() { return mac_rtl0; }

protected:
	mac* mac0;
	mac_cosim* mac_cosim0;
	mac_rtl* mac_rtl0;
	mac_cycsim* mac_cycsim0;
};

#endif

/* Restore ioConfig define values for parent module. */
#if defined(ioConfig_IOCFG_DMA32)
#if defined(ioConfig) && defined(_wrap_ioConfig) && defined(_local_ioConfig)
#undef _local_ioConfig
#undef ioConfig
#define ioConfig _wrap_ioConfig
#endif
#if defined(DMA_WIDTH) && defined(_wrap_DMA_WIDTH) && defined(_local_DMA_WIDTH)
#undef _local_DMA_WIDTH
#undef DMA_WIDTH
#define DMA_WIDTH _wrap_DMA_WIDTH
#endif
#endif
#if defined(ioConfig_IOCFG_DMA64)
#if defined(ioConfig) && defined(_wrap_ioConfig) && defined(_local_ioConfig)
#undef _local_ioConfig
#undef ioConfig
#define ioConfig _wrap_ioConfig
#endif
#if defined(DMA_WIDTH) && defined(_wrap_DMA_WIDTH) && defined(_local_DMA_WIDTH)
#undef _local_DMA_WIDTH
#undef DMA_WIDTH
#define DMA_WIDTH _wrap_DMA_WIDTH
#endif
#endif

#endif /*  */
