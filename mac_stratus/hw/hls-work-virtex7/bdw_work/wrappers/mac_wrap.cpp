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

#if defined(STRATUS_VLG)


#ifndef BDW_PORTS_ONLY
#define BDW_PORTS_ONLY 1
#endif


#include	"mac_rtl.cpp"

#else 

#if defined(BDW_HUB)

#include "esc.h"

#if defined(BDW_RTL) || defined(COWARE_RTL_mac)

#define BDW_AUTO_KNOWN 1 


#ifndef BDW_PORTS_ONLY
#define BDW_PORTS_ONLY 1
#endif


#undef mac
#define mac mac_rtl
#	include	"mac_rtl.cpp"
#undef mac


#ifdef BDW_PORTS_ONLY
#undef BDW_PORTS_ONLY
#endif



#elif defined(BDW_HOIST) 
#else

#endif
#ifdef BDW_COWARE
#include	"mac_coware.h"
#else
#include	"mac_cosim.h"
#endif

// include for cycle-accurate verilator simulation
#include    "mac_cycsim.h"



// Include the source for the behavioral model so it will be compiled.
#include	"/scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/src/mac.cpp"


#define		mac_INTERNAL


#include	"mac_wrap.h"

// this global pointer indicates whether or not the Verilator cycsim wrapper is present
mac_cycsim* (*mac_cycsim_factory_p)() = 0;

#define MAX_SIMCONFIG_LENGTH 128

#if BDW_WRITEFSDB == 1

#if defined(NC_SYSTEMC) && defined(BDW_NCSC_VER) && BDW_NCSC_VER > 102
#include "fsdb_nc_mix.h"
#else
#if SYSTEMC_VERSION >= 20120701
#include "fsdb_osci.h"
#else
#include "fsdb_trace_file.h"
#endif
#endif 
#if BDW_USE_SCV
#include "scv.h"
#include "scv_tr_fsdb.h"
#endif

#endif /* BDW_WRITEFSDB */

inline void esc_open_fsdb_trace( const char *file_name = "systemc" );
inline void esc_close_fsdb_trace();
inline void esc_close_fsdb_scv_trace();

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


const char * mac_wrapper::simConfigName()
{
	static char defineBuf[MAX_SIMCONFIG_LENGTH];
	const char *simConfig = NULL;
	if ( qbhGetDefine( "BDW_SIM_CONFIG", defineBuf, MAX_SIMCONFIG_LENGTH ) == qbhOK )
	{
		simConfig = defineBuf;
	}
	else
	{
		simConfig = getenv( "BDW_SIM_CONFIG" );
	}

	if ( simConfig == NULL )
	{
		esc_report_error( esc_fatal, "BDW_SIM_CONFIG needs to be set" );
	}

	return simConfig;
}

enum mac_wrapper::Representation mac_wrapper::lookupRepresentation( const char* instName )
{
	const char *simConfig = simConfigName();

	if ( simConfig == NULL )
		return BDWRep_None;

	Representation result;

	qbhProjectHandle hProj;
	qbhError err = qbhGetCurrentProject( &hProj );
	if ( err == qbhErrorNoProject )
	{
		err = qbhOpenProject( "project.tcl", &hProj );

		if ( err != qbhOK )
		{
			esc_report_error( esc_fatal, "could not open project file %s",
							  "project.tcl" );
			return BDWRep_None;
		}
	}

	int iresult = 0;
	err = qbhGetRepresentation(hProj, "mac", simConfig, instName, &iresult );
	result = (Representation)iresult;

	if ( err == qbhOK )
		return result;

	// If this module isn't mentioned in the simConfig, assume it's behavioral.
	if ( err == qbhErrorNotFound ) {
		return BDWRep_Behavioral;
	} else if ( err == qbhErrorBadInstName ) {
		if (instName && *instName) {
			const char* leaf = strrchr( instName, '.' ) + 1;
			esc_report_error( esc_warning, "Instance names were specified for module '%s' in simConfig '%s', but they did not "
			                    "match the actal instance names in the RTL.  Try '%s' or '%s'. Simulating '%s' as BEH.\n",
								 "mac", simConfig, instName, leaf,  "mac" );
		}
		return BDWRep_Behavioral;
	}

    // If we couldn't get a license, then just exit.
    if ( err == qbhErrorNoLicense )
    {
        exit(1);
    }

	return BDWRep_None;
}

void mac_wrapper::InitInstances(  )
{
    enum mac_wrapper::Representation rep =
		mac_wrapper::lookupRepresentation( name() );

	esc_log_wrapper_inst( "mac" );
	esc_log_representation( "mac", name(), rep );

	
#if defined ( ioConfig_IOCFG_DMA32 )
	
	
	
#else
	
	
#endif


	switch ( rep )
	{
		case BDWRep_Gates:
		    mac_cosim0 = new mac_cosim( "mac" );

		    
#if defined ( ioConfig_IOCFG_DMA32 )
		    
		    mac_cosim0->clk(clk);
		    mac_cosim0->rst(rst);
		    mac_cosim0->dma_read_chnl_valid(dma_read_chnl.valid);
		    mac_cosim0->dma_read_chnl_data(dma_read_chnl_data_conv);
		    mac_cosim0->dma_read_chnl_ready(dma_read_chnl.ready);
		    mac_cosim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cosim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cosim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cosim0->conf_done(conf_done);
		    mac_cosim0->acc_done(acc_done);
		    mac_cosim0->debug(debug_conv);
		    mac_cosim0->dma_read_ctrl_valid(dma_read_ctrl.valid);
		    mac_cosim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cosim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cosim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cosim0->dma_read_ctrl_ready(dma_read_ctrl.ready);
		    mac_cosim0->dma_write_ctrl_valid(dma_write_ctrl.valid);
		    mac_cosim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cosim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cosim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cosim0->dma_write_ctrl_ready(dma_write_ctrl.ready);
		    mac_cosim0->dma_write_chnl_valid(dma_write_chnl.valid);
		    mac_cosim0->dma_write_chnl_data(dma_write_chnl_data_conv);
		    mac_cosim0->dma_write_chnl_ready(dma_write_chnl.ready);
		    
		    
#else
		    
		    mac_cosim0->clk(clk);
		    mac_cosim0->rst(rst);
		    mac_cosim0->dma_read_chnl_valid(dma_read_chnl.valid);
		    mac_cosim0->dma_read_chnl_data(dma_read_chnl_data_conv);
		    mac_cosim0->dma_read_chnl_ready(dma_read_chnl.ready);
		    mac_cosim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cosim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cosim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cosim0->conf_done(conf_done);
		    mac_cosim0->acc_done(acc_done);
		    mac_cosim0->debug(debug_conv);
		    mac_cosim0->dma_read_ctrl_valid(dma_read_ctrl.valid);
		    mac_cosim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cosim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cosim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cosim0->dma_read_ctrl_ready(dma_read_ctrl.ready);
		    mac_cosim0->dma_write_ctrl_valid(dma_write_ctrl.valid);
		    mac_cosim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cosim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cosim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cosim0->dma_write_ctrl_ready(dma_write_ctrl.ready);
		    mac_cosim0->dma_write_chnl_valid(dma_write_chnl.valid);
		    mac_cosim0->dma_write_chnl_data(dma_write_chnl_data_conv);
		    mac_cosim0->dma_write_chnl_ready(dma_write_chnl.ready);
		    
#endif

			break;
		case BDWRep_RTL_HDL:
		    mac_cosim0 = new mac_cosim( "mac" );

		    
#if defined ( ioConfig_IOCFG_DMA32 )
		    
		    mac_cosim0->clk(clk);
		    mac_cosim0->rst(rst);
		    mac_cosim0->dma_read_chnl_valid(dma_read_chnl.valid);
		    mac_cosim0->dma_read_chnl_data(dma_read_chnl_data_conv);
		    mac_cosim0->dma_read_chnl_ready(dma_read_chnl.ready);
		    mac_cosim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cosim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cosim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cosim0->conf_done(conf_done);
		    mac_cosim0->acc_done(acc_done);
		    mac_cosim0->debug(debug_conv);
		    mac_cosim0->dma_read_ctrl_valid(dma_read_ctrl.valid);
		    mac_cosim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cosim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cosim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cosim0->dma_read_ctrl_ready(dma_read_ctrl.ready);
		    mac_cosim0->dma_write_ctrl_valid(dma_write_ctrl.valid);
		    mac_cosim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cosim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cosim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cosim0->dma_write_ctrl_ready(dma_write_ctrl.ready);
		    mac_cosim0->dma_write_chnl_valid(dma_write_chnl.valid);
		    mac_cosim0->dma_write_chnl_data(dma_write_chnl_data_conv);
		    mac_cosim0->dma_write_chnl_ready(dma_write_chnl.ready);
		    
		    
#else
		    
		    mac_cosim0->clk(clk);
		    mac_cosim0->rst(rst);
		    mac_cosim0->dma_read_chnl_valid(dma_read_chnl.valid);
		    mac_cosim0->dma_read_chnl_data(dma_read_chnl_data_conv);
		    mac_cosim0->dma_read_chnl_ready(dma_read_chnl.ready);
		    mac_cosim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cosim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cosim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cosim0->conf_done(conf_done);
		    mac_cosim0->acc_done(acc_done);
		    mac_cosim0->debug(debug_conv);
		    mac_cosim0->dma_read_ctrl_valid(dma_read_ctrl.valid);
		    mac_cosim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cosim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cosim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cosim0->dma_read_ctrl_ready(dma_read_ctrl.ready);
		    mac_cosim0->dma_write_ctrl_valid(dma_write_ctrl.valid);
		    mac_cosim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cosim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cosim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cosim0->dma_write_ctrl_ready(dma_write_ctrl.ready);
		    mac_cosim0->dma_write_chnl_valid(dma_write_chnl.valid);
		    mac_cosim0->dma_write_chnl_data(dma_write_chnl_data_conv);
		    mac_cosim0->dma_write_chnl_ready(dma_write_chnl.ready);
		    
#endif

			break;
        case BDWRep_CYC_HDL:
            if ( mac_cycsim_factory_p )
                mac_cycsim0 = mac_cycsim_factory_p();
            else
            {
                esc_report_error( esc_fatal, "verilator_produced files not available for module mac");
                return;
            }

            esc_report_error( esc_note, " using verilator model for module \"mac\"");

		    
#if defined ( ioConfig_IOCFG_DMA32 )
		    
		    mac_cycsim0->clk(clk);
		    mac_cycsim0->rst(rst);
		    mac_cycsim0->dma_read_chnl_valid(dma_read_chnl.valid);
		    mac_cycsim0->dma_read_chnl_data(dma_read_chnl_data_conv);
		    mac_cycsim0->dma_read_chnl_ready(dma_read_chnl.ready);
		    mac_cycsim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cycsim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cycsim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cycsim0->conf_done(conf_done);
		    mac_cycsim0->acc_done(acc_done);
		    mac_cycsim0->debug(debug_conv);
		    mac_cycsim0->dma_read_ctrl_valid(dma_read_ctrl.valid);
		    mac_cycsim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cycsim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cycsim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cycsim0->dma_read_ctrl_ready(dma_read_ctrl.ready);
		    mac_cycsim0->dma_write_ctrl_valid(dma_write_ctrl.valid);
		    mac_cycsim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cycsim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cycsim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cycsim0->dma_write_ctrl_ready(dma_write_ctrl.ready);
		    mac_cycsim0->dma_write_chnl_valid(dma_write_chnl.valid);
		    mac_cycsim0->dma_write_chnl_data(dma_write_chnl_data_conv);
		    mac_cycsim0->dma_write_chnl_ready(dma_write_chnl.ready);
		    
		    
#else
		    
		    mac_cycsim0->clk(clk);
		    mac_cycsim0->rst(rst);
		    mac_cycsim0->dma_read_chnl_valid(dma_read_chnl.valid);
		    mac_cycsim0->dma_read_chnl_data(dma_read_chnl_data_conv);
		    mac_cycsim0->dma_read_chnl_ready(dma_read_chnl.ready);
		    mac_cycsim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cycsim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cycsim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cycsim0->conf_done(conf_done);
		    mac_cycsim0->acc_done(acc_done);
		    mac_cycsim0->debug(debug_conv);
		    mac_cycsim0->dma_read_ctrl_valid(dma_read_ctrl.valid);
		    mac_cycsim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cycsim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cycsim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cycsim0->dma_read_ctrl_ready(dma_read_ctrl.ready);
		    mac_cycsim0->dma_write_ctrl_valid(dma_write_ctrl.valid);
		    mac_cycsim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cycsim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cycsim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cycsim0->dma_write_ctrl_ready(dma_write_ctrl.ready);
		    mac_cycsim0->dma_write_chnl_valid(dma_write_chnl.valid);
		    mac_cycsim0->dma_write_chnl_data(dma_write_chnl_data_conv);
		    mac_cycsim0->dma_write_chnl_ready(dma_write_chnl.ready);
		    
#endif

			break;
#if defined(BDW_RTL) || defined(COWARE_RTL_mac)
		case BDWRep_RTL_C:
		    mac_rtl0 = new mac_rtl( "mac" );

		    
#if defined ( ioConfig_IOCFG_DMA32 )
		    
		    mac_rtl0->clk(clk);
		    mac_rtl0->rst(rst);
		    mac_rtl0->dma_read_chnl_valid(dma_read_chnl.valid);
		    mac_rtl0->dma_read_chnl_data(dma_read_chnl_data_conv);
		    mac_rtl0->dma_read_chnl_ready(dma_read_chnl.ready);
		    mac_rtl0->conf_info_mac_n(conf_info_mac_n);
		    mac_rtl0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_rtl0->conf_info_mac_len(conf_info_mac_len);
		    mac_rtl0->conf_done(conf_done);
		    mac_rtl0->acc_done(acc_done);
		    mac_rtl0->debug(debug_conv);
		    mac_rtl0->dma_read_ctrl_valid(dma_read_ctrl.valid);
		    mac_rtl0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_rtl0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_rtl0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_rtl0->dma_read_ctrl_ready(dma_read_ctrl.ready);
		    mac_rtl0->dma_write_ctrl_valid(dma_write_ctrl.valid);
		    mac_rtl0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_rtl0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_rtl0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_rtl0->dma_write_ctrl_ready(dma_write_ctrl.ready);
		    mac_rtl0->dma_write_chnl_valid(dma_write_chnl.valid);
		    mac_rtl0->dma_write_chnl_data(dma_write_chnl_data_conv);
		    mac_rtl0->dma_write_chnl_ready(dma_write_chnl.ready);
		    
		    
#else
		    
		    mac_rtl0->clk(clk);
		    mac_rtl0->rst(rst);
		    mac_rtl0->dma_read_chnl_valid(dma_read_chnl.valid);
		    mac_rtl0->dma_read_chnl_data(dma_read_chnl_data_conv);
		    mac_rtl0->dma_read_chnl_ready(dma_read_chnl.ready);
		    mac_rtl0->conf_info_mac_n(conf_info_mac_n);
		    mac_rtl0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_rtl0->conf_info_mac_len(conf_info_mac_len);
		    mac_rtl0->conf_done(conf_done);
		    mac_rtl0->acc_done(acc_done);
		    mac_rtl0->debug(debug_conv);
		    mac_rtl0->dma_read_ctrl_valid(dma_read_ctrl.valid);
		    mac_rtl0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_rtl0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_rtl0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_rtl0->dma_read_ctrl_ready(dma_read_ctrl.ready);
		    mac_rtl0->dma_write_ctrl_valid(dma_write_ctrl.valid);
		    mac_rtl0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_rtl0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_rtl0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_rtl0->dma_write_ctrl_ready(dma_write_ctrl.ready);
		    mac_rtl0->dma_write_chnl_valid(dma_write_chnl.valid);
		    mac_rtl0->dma_write_chnl_data(dma_write_chnl_data_conv);
		    mac_rtl0->dma_write_chnl_ready(dma_write_chnl.ready);
		    
#endif


			{
			const char *simConfig = mac_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
#endif
		case BDWRep_Behavioral:
		    mac0 = new mac( "mac" );

		    
#if defined ( ioConfig_IOCFG_DMA32 )
		    
		    mac0->clk(clk);
		    mac0->rst(rst);
		    mac0->dma_read_chnl.valid(dma_read_chnl.valid);
		    mac0->dma_read_chnl.data(dma_read_chnl.data);
		    mac0->dma_read_chnl.ready(dma_read_chnl.ready);
		    mac0->conf_info(conf_info);
		    mac0->conf_done(conf_done);
		    mac0->acc_done(acc_done);
		    mac0->debug(debug);
		    mac0->dma_read_ctrl.valid(dma_read_ctrl.valid);
		    mac0->dma_read_ctrl.data(dma_read_ctrl.data);
		    mac0->dma_read_ctrl.ready(dma_read_ctrl.ready);
		    mac0->dma_write_ctrl.valid(dma_write_ctrl.valid);
		    mac0->dma_write_ctrl.data(dma_write_ctrl.data);
		    mac0->dma_write_ctrl.ready(dma_write_ctrl.ready);
		    mac0->dma_write_chnl.valid(dma_write_chnl.valid);
		    mac0->dma_write_chnl.data(dma_write_chnl.data);
		    mac0->dma_write_chnl.ready(dma_write_chnl.ready);
		    
		    
#else
		    
		    mac0->clk(clk);
		    mac0->rst(rst);
		    mac0->dma_read_chnl.valid(dma_read_chnl.valid);
		    mac0->dma_read_chnl.data(dma_read_chnl.data);
		    mac0->dma_read_chnl.ready(dma_read_chnl.ready);
		    mac0->conf_info(conf_info);
		    mac0->conf_done(conf_done);
		    mac0->acc_done(acc_done);
		    mac0->debug(debug);
		    mac0->dma_read_ctrl.valid(dma_read_ctrl.valid);
		    mac0->dma_read_ctrl.data(dma_read_ctrl.data);
		    mac0->dma_read_ctrl.ready(dma_read_ctrl.ready);
		    mac0->dma_write_ctrl.valid(dma_write_ctrl.valid);
		    mac0->dma_write_ctrl.data(dma_write_ctrl.data);
		    mac0->dma_write_ctrl.ready(dma_write_ctrl.ready);
		    mac0->dma_write_chnl.valid(dma_write_chnl.valid);
		    mac0->dma_write_chnl.data(dma_write_chnl.data);
		    mac0->dma_write_chnl.ready(dma_write_chnl.ready);
		    
#endif


			{
			const char *simConfig = mac_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
		case BDWRep_None:
		default:
			esc_report_error( esc_error, "No representation could be determined for simulating instance %s. Please make sure that you used the right name string in the module constructor",
							  name() );
			break;
	}
}

void mac_wrapper::InitThreads()
{
	if ( !isBEH() )
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
}

void mac_wrapper::start_of_simulation()
{

#include <mac_trace.h>

    esc_multiple_writers_warning();
}

void mac_wrapper::CloseTrace()
{
	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
	esc_close_vcd_trace();
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		esc_close_fsdb_trace();
		if ( esc_trace_is_enabled( esc_trace_scv ) ) {
			esc_close_fsdb_scv_trace();
		}
	}
}

void mac_wrapper::end_of_simulation()
{
	CloseTrace();
}



void mac_wrapper::DeleteInstances()
{
    if (mac0)
    {
        delete mac0;
        mac0 = 0;
    }
    if (mac_cosim0)
    {
        delete mac_cosim0;
        mac_cosim0 = 0;
    }
    if (mac_cycsim0)
    {
        delete mac_cycsim0;
        mac_cycsim0 = 0;
    }
#if defined(BDW_RTL) || defined(COWARE_RTL_mac)
    if (mac_rtl0)
    {
        delete mac_rtl0;
        mac_rtl0 = 0;
    }
#endif
}

// The following threads are used to connect RTL ports to the actual
// structured ports

#if defined ( ioConfig_IOCFG_DMA32 )

void mac_wrapper_r::thread_dma_read_chnl_data_conv()
{
   dma_read_chnl_data_conv = dma_read_chnl_data.read();
}
void mac_wrapper_r::thread_conf_info()
{
   conf_info_t tmp;
   tmp.mac_n = conf_info_mac_n.read();
   tmp.mac_vec = conf_info_mac_vec.read();
   tmp.mac_len = conf_info_mac_len.read();
   conf_info.write(tmp);
}
void mac_wrapper_r::thread_debug_conv()
{
   sc_uint< 32 > tmp;
   tmp = debug_conv.read();
   debug.write(tmp);
}
void mac_wrapper_r::thread_dma_read_ctrl_data_index()
{
   dma_read_ctrl_data_index = dma_read_ctrl_data.read().index;
}
void mac_wrapper_r::thread_dma_read_ctrl_data_length()
{
   dma_read_ctrl_data_length = dma_read_ctrl_data.read().length;
}
void mac_wrapper_r::thread_dma_read_ctrl_data_size()
{
   dma_read_ctrl_data_size = dma_read_ctrl_data.read().size;
}
void mac_wrapper_r::thread_dma_write_ctrl_data_index()
{
   dma_write_ctrl_data_index = dma_write_ctrl_data.read().index;
}
void mac_wrapper_r::thread_dma_write_ctrl_data_length()
{
   dma_write_ctrl_data_length = dma_write_ctrl_data.read().length;
}
void mac_wrapper_r::thread_dma_write_ctrl_data_size()
{
   dma_write_ctrl_data_size = dma_write_ctrl_data.read().size;
}
void mac_wrapper_r::thread_dma_write_chnl_data_conv()
{
   sc_biguint< 32 > tmp;
   tmp = dma_write_chnl_data_conv.read();
   dma_write_chnl_data.write(tmp);
}


#else

void mac_wrapper_r::thread_dma_read_chnl_data_conv()
{
   dma_read_chnl_data_conv = dma_read_chnl_data.read();
}
void mac_wrapper_r::thread_conf_info()
{
   conf_info_t tmp;
   tmp.mac_n = conf_info_mac_n.read();
   tmp.mac_vec = conf_info_mac_vec.read();
   tmp.mac_len = conf_info_mac_len.read();
   conf_info.write(tmp);
}
void mac_wrapper_r::thread_debug_conv()
{
   sc_uint< 32 > tmp;
   tmp = debug_conv.read();
   debug.write(tmp);
}
void mac_wrapper_r::thread_dma_read_ctrl_data_index()
{
   dma_read_ctrl_data_index = dma_read_ctrl_data.read().index;
}
void mac_wrapper_r::thread_dma_read_ctrl_data_length()
{
   dma_read_ctrl_data_length = dma_read_ctrl_data.read().length;
}
void mac_wrapper_r::thread_dma_read_ctrl_data_size()
{
   dma_read_ctrl_data_size = dma_read_ctrl_data.read().size;
}
void mac_wrapper_r::thread_dma_write_ctrl_data_index()
{
   dma_write_ctrl_data_index = dma_write_ctrl_data.read().index;
}
void mac_wrapper_r::thread_dma_write_ctrl_data_length()
{
   dma_write_ctrl_data_length = dma_write_ctrl_data.read().length;
}
void mac_wrapper_r::thread_dma_write_ctrl_data_size()
{
   dma_write_ctrl_data_size = dma_write_ctrl_data.read().size;
}
void mac_wrapper_r::thread_dma_write_chnl_data_conv()
{
   sc_biguint< 64 > tmp;
   tmp = dma_write_chnl_data_conv.read();
   dma_write_chnl_data.write(tmp);
}

#endif


const char * mac_wrapper_r::simConfigName()
{
	static char defineBuf[MAX_SIMCONFIG_LENGTH];
	const char *simConfig = NULL;
	if ( qbhGetDefine( "BDW_SIM_CONFIG", defineBuf, MAX_SIMCONFIG_LENGTH ) == qbhOK )
	{
		simConfig = defineBuf;
	}
	else
	{
		simConfig = getenv( "BDW_SIM_CONFIG" );
	}

	if ( simConfig == NULL )
	{
		esc_report_error( esc_fatal, "BDW_SIM_CONFIG needs to be set" );
	}

	return simConfig;
}

enum mac_wrapper_r::Representation mac_wrapper_r::lookupRepresentation( const char* instName )
{
	const char *simConfig = simConfigName();

	if ( simConfig == NULL )
		return BDWRep_None;

	Representation result;

	qbhProjectHandle hProj;
	qbhError err = qbhGetCurrentProject( &hProj );
	if ( err == qbhErrorNoProject )
	{
		err = qbhOpenProject( "project.tcl", &hProj );

		if ( err != qbhOK )
		{
			esc_report_error( esc_fatal, "could not open project file %s",
							  "project.tcl" );
			return BDWRep_None;
		}
	}

	int iresult = 0;
	err = qbhGetRepresentation(hProj, "mac", simConfig, instName, &iresult );
	result = (Representation)iresult;

	if ( err == qbhOK )
		return result;

	// If this module isn't mentioned in the simConfig, assume it's behavioral.
	if ( err == qbhErrorNotFound )
		return BDWRep_Behavioral;

    // If we couldn't get a license, then just exit.
    if ( err == qbhErrorNoLicense )
    {
        exit(1);
    }

	return BDWRep_None;
}

void mac_wrapper_r::InitInstances()
{
    enum mac_wrapper_r::Representation rep =
		mac_wrapper_r::lookupRepresentation( name() );

	esc_log_wrapper_inst( "mac" );
	esc_log_representation( "mac", name(), rep );

	switch ( rep )
	{
		case BDWRep_Gates:
		    mac_cosim0 = new mac_cosim( "mac" );

		    
#if defined ( ioConfig_IOCFG_DMA32 )
		    
		    mac_cosim0->clk(clk);
		    mac_cosim0->rst(rst);
		    mac_cosim0->dma_read_chnl_valid(dma_read_chnl_valid);
		    mac_cosim0->dma_read_chnl_data(dma_read_chnl_data);
		    mac_cosim0->dma_read_chnl_ready(dma_read_chnl_ready);
		    mac_cosim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cosim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cosim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cosim0->conf_done(conf_done);
		    mac_cosim0->acc_done(acc_done);
		    mac_cosim0->debug(debug);
		    mac_cosim0->dma_read_ctrl_valid(dma_read_ctrl_valid);
		    mac_cosim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cosim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cosim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cosim0->dma_read_ctrl_ready(dma_read_ctrl_ready);
		    mac_cosim0->dma_write_ctrl_valid(dma_write_ctrl_valid);
		    mac_cosim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cosim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cosim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cosim0->dma_write_ctrl_ready(dma_write_ctrl_ready);
		    mac_cosim0->dma_write_chnl_valid(dma_write_chnl_valid);
		    mac_cosim0->dma_write_chnl_data(dma_write_chnl_data);
		    mac_cosim0->dma_write_chnl_ready(dma_write_chnl_ready);
		    
		    
#else
		    
		    mac_cosim0->clk(clk);
		    mac_cosim0->rst(rst);
		    mac_cosim0->dma_read_chnl_valid(dma_read_chnl_valid);
		    mac_cosim0->dma_read_chnl_data(dma_read_chnl_data);
		    mac_cosim0->dma_read_chnl_ready(dma_read_chnl_ready);
		    mac_cosim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cosim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cosim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cosim0->conf_done(conf_done);
		    mac_cosim0->acc_done(acc_done);
		    mac_cosim0->debug(debug);
		    mac_cosim0->dma_read_ctrl_valid(dma_read_ctrl_valid);
		    mac_cosim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cosim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cosim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cosim0->dma_read_ctrl_ready(dma_read_ctrl_ready);
		    mac_cosim0->dma_write_ctrl_valid(dma_write_ctrl_valid);
		    mac_cosim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cosim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cosim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cosim0->dma_write_ctrl_ready(dma_write_ctrl_ready);
		    mac_cosim0->dma_write_chnl_valid(dma_write_chnl_valid);
		    mac_cosim0->dma_write_chnl_data(dma_write_chnl_data);
		    mac_cosim0->dma_write_chnl_ready(dma_write_chnl_ready);
		    
#endif

			break;
		case BDWRep_RTL_HDL:
		    mac_cosim0 = new mac_cosim( "mac" );

		    
#if defined ( ioConfig_IOCFG_DMA32 )
		    
		    mac_cosim0->clk(clk);
		    mac_cosim0->rst(rst);
		    mac_cosim0->dma_read_chnl_valid(dma_read_chnl_valid);
		    mac_cosim0->dma_read_chnl_data(dma_read_chnl_data);
		    mac_cosim0->dma_read_chnl_ready(dma_read_chnl_ready);
		    mac_cosim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cosim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cosim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cosim0->conf_done(conf_done);
		    mac_cosim0->acc_done(acc_done);
		    mac_cosim0->debug(debug);
		    mac_cosim0->dma_read_ctrl_valid(dma_read_ctrl_valid);
		    mac_cosim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cosim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cosim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cosim0->dma_read_ctrl_ready(dma_read_ctrl_ready);
		    mac_cosim0->dma_write_ctrl_valid(dma_write_ctrl_valid);
		    mac_cosim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cosim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cosim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cosim0->dma_write_ctrl_ready(dma_write_ctrl_ready);
		    mac_cosim0->dma_write_chnl_valid(dma_write_chnl_valid);
		    mac_cosim0->dma_write_chnl_data(dma_write_chnl_data);
		    mac_cosim0->dma_write_chnl_ready(dma_write_chnl_ready);
		    
		    
#else
		    
		    mac_cosim0->clk(clk);
		    mac_cosim0->rst(rst);
		    mac_cosim0->dma_read_chnl_valid(dma_read_chnl_valid);
		    mac_cosim0->dma_read_chnl_data(dma_read_chnl_data);
		    mac_cosim0->dma_read_chnl_ready(dma_read_chnl_ready);
		    mac_cosim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cosim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cosim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cosim0->conf_done(conf_done);
		    mac_cosim0->acc_done(acc_done);
		    mac_cosim0->debug(debug);
		    mac_cosim0->dma_read_ctrl_valid(dma_read_ctrl_valid);
		    mac_cosim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cosim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cosim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cosim0->dma_read_ctrl_ready(dma_read_ctrl_ready);
		    mac_cosim0->dma_write_ctrl_valid(dma_write_ctrl_valid);
		    mac_cosim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cosim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cosim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cosim0->dma_write_ctrl_ready(dma_write_ctrl_ready);
		    mac_cosim0->dma_write_chnl_valid(dma_write_chnl_valid);
		    mac_cosim0->dma_write_chnl_data(dma_write_chnl_data);
		    mac_cosim0->dma_write_chnl_ready(dma_write_chnl_ready);
		    
#endif

			break;
        case BDWRep_CYC_HDL:
            if ( mac_cycsim_factory_p )
                mac_cycsim0 = mac_cycsim_factory_p();
            else
            {
                esc_report_error( esc_fatal, "verilator_produced files not available for module mac");
                return;
            }

            esc_report_error( esc_note, " using verilator model for module \"mac\"");

		    
#if defined ( ioConfig_IOCFG_DMA32 )
		    
		    mac_cycsim0->clk(clk);
		    mac_cycsim0->rst(rst);
		    mac_cycsim0->dma_read_chnl_valid(dma_read_chnl_valid);
		    mac_cycsim0->dma_read_chnl_data(dma_read_chnl_data);
		    mac_cycsim0->dma_read_chnl_ready(dma_read_chnl_ready);
		    mac_cycsim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cycsim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cycsim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cycsim0->conf_done(conf_done);
		    mac_cycsim0->acc_done(acc_done);
		    mac_cycsim0->debug(debug);
		    mac_cycsim0->dma_read_ctrl_valid(dma_read_ctrl_valid);
		    mac_cycsim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cycsim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cycsim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cycsim0->dma_read_ctrl_ready(dma_read_ctrl_ready);
		    mac_cycsim0->dma_write_ctrl_valid(dma_write_ctrl_valid);
		    mac_cycsim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cycsim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cycsim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cycsim0->dma_write_ctrl_ready(dma_write_ctrl_ready);
		    mac_cycsim0->dma_write_chnl_valid(dma_write_chnl_valid);
		    mac_cycsim0->dma_write_chnl_data(dma_write_chnl_data);
		    mac_cycsim0->dma_write_chnl_ready(dma_write_chnl_ready);
		    
		    
#else
		    
		    mac_cycsim0->clk(clk);
		    mac_cycsim0->rst(rst);
		    mac_cycsim0->dma_read_chnl_valid(dma_read_chnl_valid);
		    mac_cycsim0->dma_read_chnl_data(dma_read_chnl_data);
		    mac_cycsim0->dma_read_chnl_ready(dma_read_chnl_ready);
		    mac_cycsim0->conf_info_mac_n(conf_info_mac_n);
		    mac_cycsim0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_cycsim0->conf_info_mac_len(conf_info_mac_len);
		    mac_cycsim0->conf_done(conf_done);
		    mac_cycsim0->acc_done(acc_done);
		    mac_cycsim0->debug(debug);
		    mac_cycsim0->dma_read_ctrl_valid(dma_read_ctrl_valid);
		    mac_cycsim0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_cycsim0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_cycsim0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_cycsim0->dma_read_ctrl_ready(dma_read_ctrl_ready);
		    mac_cycsim0->dma_write_ctrl_valid(dma_write_ctrl_valid);
		    mac_cycsim0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_cycsim0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_cycsim0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_cycsim0->dma_write_ctrl_ready(dma_write_ctrl_ready);
		    mac_cycsim0->dma_write_chnl_valid(dma_write_chnl_valid);
		    mac_cycsim0->dma_write_chnl_data(dma_write_chnl_data);
		    mac_cycsim0->dma_write_chnl_ready(dma_write_chnl_ready);
		    
#endif

			break;
#if defined(BDW_RTL) || defined(COWARE_RTL_mac)
		case BDWRep_RTL_C:
		    mac_rtl0 = new mac_rtl( "mac" );

		    
#if defined ( ioConfig_IOCFG_DMA32 )
		    
		    mac_rtl0->clk(clk);
		    mac_rtl0->rst(rst);
		    mac_rtl0->dma_read_chnl_valid(dma_read_chnl_valid);
		    mac_rtl0->dma_read_chnl_data(dma_read_chnl_data);
		    mac_rtl0->dma_read_chnl_ready(dma_read_chnl_ready);
		    mac_rtl0->conf_info_mac_n(conf_info_mac_n);
		    mac_rtl0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_rtl0->conf_info_mac_len(conf_info_mac_len);
		    mac_rtl0->conf_done(conf_done);
		    mac_rtl0->acc_done(acc_done);
		    mac_rtl0->debug(debug);
		    mac_rtl0->dma_read_ctrl_valid(dma_read_ctrl_valid);
		    mac_rtl0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_rtl0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_rtl0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_rtl0->dma_read_ctrl_ready(dma_read_ctrl_ready);
		    mac_rtl0->dma_write_ctrl_valid(dma_write_ctrl_valid);
		    mac_rtl0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_rtl0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_rtl0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_rtl0->dma_write_ctrl_ready(dma_write_ctrl_ready);
		    mac_rtl0->dma_write_chnl_valid(dma_write_chnl_valid);
		    mac_rtl0->dma_write_chnl_data(dma_write_chnl_data);
		    mac_rtl0->dma_write_chnl_ready(dma_write_chnl_ready);
		    
		    
#else
		    
		    mac_rtl0->clk(clk);
		    mac_rtl0->rst(rst);
		    mac_rtl0->dma_read_chnl_valid(dma_read_chnl_valid);
		    mac_rtl0->dma_read_chnl_data(dma_read_chnl_data);
		    mac_rtl0->dma_read_chnl_ready(dma_read_chnl_ready);
		    mac_rtl0->conf_info_mac_n(conf_info_mac_n);
		    mac_rtl0->conf_info_mac_vec(conf_info_mac_vec);
		    mac_rtl0->conf_info_mac_len(conf_info_mac_len);
		    mac_rtl0->conf_done(conf_done);
		    mac_rtl0->acc_done(acc_done);
		    mac_rtl0->debug(debug);
		    mac_rtl0->dma_read_ctrl_valid(dma_read_ctrl_valid);
		    mac_rtl0->dma_read_ctrl_data_index(dma_read_ctrl_data_index);
		    mac_rtl0->dma_read_ctrl_data_length(dma_read_ctrl_data_length);
		    mac_rtl0->dma_read_ctrl_data_size(dma_read_ctrl_data_size);
		    mac_rtl0->dma_read_ctrl_ready(dma_read_ctrl_ready);
		    mac_rtl0->dma_write_ctrl_valid(dma_write_ctrl_valid);
		    mac_rtl0->dma_write_ctrl_data_index(dma_write_ctrl_data_index);
		    mac_rtl0->dma_write_ctrl_data_length(dma_write_ctrl_data_length);
		    mac_rtl0->dma_write_ctrl_data_size(dma_write_ctrl_data_size);
		    mac_rtl0->dma_write_ctrl_ready(dma_write_ctrl_ready);
		    mac_rtl0->dma_write_chnl_valid(dma_write_chnl_valid);
		    mac_rtl0->dma_write_chnl_data(dma_write_chnl_data);
		    mac_rtl0->dma_write_chnl_ready(dma_write_chnl_ready);
		    
#endif


			{
			const char *simConfig = mac_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
#endif
		case BDWRep_Behavioral:
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


			{
			const char *simConfig = mac_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
		case BDWRep_None:
		default:
			esc_report_error( esc_error, "No representation could be determined for simulating instance %s. Please make sure that you used the right name string in the module constructor",
							  name() );
			break;
	}
}

void mac_wrapper_r::InitThreads()
{
	if ( isBEH() ) 
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
}

void mac_wrapper_r::start_of_simulation()
{

#include <mac_trace.h>

    esc_multiple_writers_warning();
}

void mac_wrapper_r::CloseTrace()
{
	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
	esc_close_vcd_trace();
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		esc_close_fsdb_trace();
		if ( esc_trace_is_enabled( esc_trace_scv ) ) {
			esc_close_fsdb_scv_trace();
		}
	}
}

void mac_wrapper_r::end_of_simulation()
{
	CloseTrace();
}



void mac_wrapper_r::DeleteInstances()
{
    if (mac0)
    {
        delete mac0;
        mac0 = 0;
    }
    if (mac_cosim0)
    {
        delete mac_cosim0;
        mac_cosim0 = 0;
    }
    if (mac_cycsim0)
    {
        delete mac_cycsim0;
        mac_cycsim0 = 0;
    }
#if defined(BDW_RTL) || defined(COWARE_RTL_mac)
    if (mac_rtl0)
    {
        delete mac_rtl0;
        mac_rtl0 = 0;
    }
#endif
}

#if BDW_WRITEFSDB == 1

inline void esc_open_fsdb_trace( const char *file_name  )
{
	sc_trace_file *fsdb_file;
#if ( defined(NC_SYSTEMC) && defined(BDW_NCSC_VER) && BDW_NCSC_VER > 102 ) || SYSTEMC_VERSION >= 20120701
    fsdbDumpfile(file_name);
    esc_set_trace_file( fsdb_file, esc_trace_fsdb );
# else

	// SystemC suffixes .fsdb to filenames automatically. Make sure
	// that doesn't get tacked onto a filename that already has the suffix.
	if ( strrchr( file_name, '.' ) != NULL )
	{
		char *trunc_file_name = new char[strlen(file_name)+1];
		strcpy( trunc_file_name, file_name );

		fsdb_file = new fsdb_trace_file( trunc_file_name );
		esc_set_trace_file( fsdb_file, esc_trace_fsdb );

		delete trunc_file_name;
	}
	else
	{
		fsdb_file = new fsdb_trace_file( file_name );
		esc_set_trace_file( fsdb_file, esc_trace_fsdb );
	}
#endif

//
// Novas's SystemC wrapper doesn't have a way to set the time unit as of SystemC 2.1v1.
//
//		((fsdb_trace_file*)fsdb_file)->sc_set_fsdb_time_unit( -12 );
}

inline void esc_close_fsdb_trace()
{
#if ! ((defined(NC_SYSTEMC) &&  defined(BDW_NCSC_VER) && BDW_NCSC_VER > 102) || SYSTEMC_VERSION >= 20120701)
	fsdb_trace_file * fsdb_file =
		(fsdb_trace_file *)esc_trace_file( esc_trace_fsdb );

	if ( fsdb_file != NULL )
	{
		fsdb_file->CloseFile();
		delete fsdb_file;
		esc_set_trace_file( NULL, esc_trace_fsdb );
	}
#endif
}

#else

inline void esc_open_fsdb_trace( const char *file_name )
{
}

inline void esc_close_fsdb_trace()
{
}

#endif

#if BDW_USE_SCV && BDW_WRITEFSDB == 1
static scv_tr_db* local_fsdb_scv_db = 0;

inline void esc_open_fsdb_scv_trace( const char *file_name  )
{
	// Start SCV logging to FSDB if there is not already a database setup.
    if (!esc_get_scv_tr_db() && esc_trace_is_enabled(esc_trace_scv) )
	{
		scv_startup();
		scv_tr_fsdb_init();

		char* scv_file_name = new char[strlen(file_name) + 1];
		strcpy( scv_file_name, file_name );
		char* fsdb_suffix = strstr( scv_file_name, ".fsdb" );
		if (fsdb_suffix)
			*fsdb_suffix = 0;
		local_fsdb_scv_db = new scv_tr_db(scv_file_name);

		delete [] scv_file_name;
		esc_set_scv_tr_db(local_fsdb_scv_db);
		scv_tr_db::set_default_db(local_fsdb_scv_db);
		local_fsdb_scv_db->set_recording(true);
	}
}

inline void esc_close_fsdb_scv_trace()
{
    if ( local_fsdb_scv_db && (local_fsdb_scv_db == esc_get_scv_tr_db() ) ) 
	{
		delete local_fsdb_scv_db;
		local_fsdb_scv_db = 0;
		esc_set_scv_tr_db(0);
	}
}
#else 
inline void esc_open_fsdb_scv_trace( const char *file_name  )
{
}

inline void esc_close_fsdb_scv_trace()
{
}

#endif

class mac_wrapper_fsdb_opener {
public:
	mac_wrapper_fsdb_opener() {
		esc_set_open_fsdb_trace( esc_open_fsdb_trace );
		esc_set_open_fsdb_scv_trace( esc_open_fsdb_scv_trace );
	}
};

static mac_wrapper_fsdb_opener
  mac_wrapper_fsdb_opener_inst;

#else

// Visible to uses of the wrapper outside of the BDW environment.
// Only behavioral SystemC simulation is supported.


// Include the source for the behavioral model so it will be compiled.
#include	"/scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/src/mac.cpp"

#define		mac_INTERNAL


#include	"mac_wrap.h"

const char * mac_wrapper::simConfigName()
{
  return "";
}

enum mac_wrapper::Representation mac_wrapper::lookupRepresentation( const char* instName )
{
  return BDWRep_Behavioral;
}

void mac_wrapper::InitInstances( const sc_core::sc_module_name& name )
{
	mac0 = new mac( "mac" );

	
#if defined ( ioConfig_IOCFG_DMA32 )
	
	mac0->clk(clk);
	mac0->rst(rst);
	mac0->dma_read_chnl.valid(dma_read_chnl.valid);
	mac0->dma_read_chnl.data(dma_read_chnl.data);
	mac0->dma_read_chnl.ready(dma_read_chnl.ready);
	mac0->conf_info(conf_info);
	mac0->conf_done(conf_done);
	mac0->acc_done(acc_done);
	mac0->debug(debug);
	mac0->dma_read_ctrl.valid(dma_read_ctrl.valid);
	mac0->dma_read_ctrl.data(dma_read_ctrl.data);
	mac0->dma_read_ctrl.ready(dma_read_ctrl.ready);
	mac0->dma_write_ctrl.valid(dma_write_ctrl.valid);
	mac0->dma_write_ctrl.data(dma_write_ctrl.data);
	mac0->dma_write_ctrl.ready(dma_write_ctrl.ready);
	mac0->dma_write_chnl.valid(dma_write_chnl.valid);
	mac0->dma_write_chnl.data(dma_write_chnl.data);
	mac0->dma_write_chnl.ready(dma_write_chnl.ready);
	
	
#else
	
	mac0->clk(clk);
	mac0->rst(rst);
	mac0->dma_read_chnl.valid(dma_read_chnl.valid);
	mac0->dma_read_chnl.data(dma_read_chnl.data);
	mac0->dma_read_chnl.ready(dma_read_chnl.ready);
	mac0->conf_info(conf_info);
	mac0->conf_done(conf_done);
	mac0->acc_done(acc_done);
	mac0->debug(debug);
	mac0->dma_read_ctrl.valid(dma_read_ctrl.valid);
	mac0->dma_read_ctrl.data(dma_read_ctrl.data);
	mac0->dma_read_ctrl.ready(dma_read_ctrl.ready);
	mac0->dma_write_ctrl.valid(dma_write_ctrl.valid);
	mac0->dma_write_ctrl.data(dma_write_ctrl.data);
	mac0->dma_write_ctrl.ready(dma_write_ctrl.ready);
	mac0->dma_write_chnl.valid(dma_write_chnl.valid);
	mac0->dma_write_chnl.data(dma_write_chnl.data);
	mac0->dma_write_chnl.ready(dma_write_chnl.ready);
	
#endif

}

void mac_wrapper::InitThreads()
{
}

void mac_wrapper::CloseTrace()
{
}

void mac_wrapper::DeleteInstances()
{
    if (mac0)
    {
        delete mac0;
        mac0 = 0;
    }
}

void mac_wrapper::start_of_simulation()
{
}

void mac_wrapper::end_of_simulation()
{
}



inline void esc_open_fsdb_trace( const char *file_name )
{
}

inline void esc_close_fsdb_trace()
{
}


inline void esc_open_fsdb_scv_trace( const char *file_name  )
{
}

inline void esc_close_fsdb_scv_trace()
{
}

class mac_wrapper_fsdb_opener {
public:
	mac_wrapper_fsdb_opener() {
	}
};

static mac_wrapper_fsdb_opener
  mac_wrapper_fsdb_opener_inst;

#endif

#endif
