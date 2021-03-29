/****************************************************************************
 *
 *  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
 *
 *  This file contains confidential information that may not be
 *  distributed under any circumstances without the written permision
 *  of Cadence Design Systems.
 *
 ***************************************************************************/

#ifndef _MAC_COSIM_INCLUDED_
#define _MAC_COSIM_INCLUDED_

#include "systemc.h"
#include "cynthhl.h"
#include "esc.h"
#if __GNUC__ < 3
#include <ostream.h>
#else
#include <ostream>

#endif

#ifdef NC_SYSTEMC
struct mac_cosim : public ncsc_foreign_module
#else
SC_MODULE(mac_cosim)
#endif
{
	struct StringPair {
		const char* simConfigName;
		const char* instanceName;
		bool linked;
	};

	// Instance number used during elaboration-time SystemC-to-HDL signal linkage.
	static int numLinked;
	static StringPair instanceNames[];

	static int numInstanceNames( const char* simConfigName ) {
		int nin = 0;
		for ( int i = 0; instanceNames[i].simConfigName != NULL; ++i )
			if ( strcmp( instanceNames[i].simConfigName, simConfigName ) == 0 )
				++nin;
		return nin;
	}

	// Port declarations.
	
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

    void end_of_elaboration()
    {
#if __GNUC__ < 3
		strstream s;
#else
		std::ostringstream s;
#endif


		s << "top/";

		const char* scName = getenv("BDW_SIM_CONFIG");
		if (!scName) 
			scName = "?";

		int nin = numInstanceNames(scName);
		if ( nin == 0 )
		{
			if ( numLinked > 0 ) 
			{
				esc_report_error( esc_fatal, 
					"More than one instance of module mac is being simulated in Verilog,\n"
					"but no instance names have been specified in simConfig %s.\n"
					"Additional instances can be specified using the following syntax:\n\n"
					"    simConfig <config_name> { <module> RTL_V <config> <inst1> <inst2> ...}\n\n"
					"where <inst1> and <inst2> are the leaf names of instances of mac in SystemC\n", 
					scName );
				return;
			} else {
				s << "mac0" << std::ends;
			}
		}
		else
		{
			StringPair *instPair = &instanceNames[ numLinked ];
			while ( instPair->instanceName != NULL )
			{
				if ( ( ! instPair->linked )
					 && ( ! strcmp( instPair->simConfigName, scName ) ) )
				{
					const char *instName = instPair->instanceName;

					// Hierarchical SystemC instance names must be escaped for Verilog.
					if ( strchr( instName, '.' ) != NULL )
						s << '\\' << instName << ' ' << std::ends;
					else
						s << instName << std::ends;

					instPair->linked = true;
					break;
				}

				++instPair;
			}

			if ( instPair->instanceName == NULL )
			{
				esc_report_error( esc_fatal, 
								  "More than %d instance(s) of module mac are being simulated in Verilog,\n"
								  "but only %d instance name(s) have been specified in simConfig %s.\n",
								  nin, nin, scName );
				return;
			}
		}
		numLinked++;


#if __GNUC__ < 3
		char *c = s.str();
#else
		char *c = (char *)strdup( s.str().c_str() );
#endif

        link_signals(c, "verilog");
#if __GNUC__ < 3
		delete c;
#else
		free( c );
#endif
    }

    void link_signals(const char *module_path, const char *sim_domain)
    {
#ifndef NC_SYSTEMC
        int registeredClocks = 0;

		double inputDelay = 0.0;
		const char* scName = getenv("BDW_SIM_CONFIG");
		if (!scName) scName = "?";
		if ( qbhVerilogInputDelay( qbhEmptyHandle, scName, &inputDelay ) != qbhOK )
			inputDelay = 0.0;

		// Try to register the boolean input ports as clocks.
		
#if defined ( ioConfig_IOCFG_DMA32 )
		
		int clk_is_clock = esc_link_clockgen( &clk, sc_time( 0, SC_NS ), module_path, sim_domain, "clk" );
		int rst_is_clock = esc_link_clockgen( &rst, sc_time( 0, SC_NS ), module_path, sim_domain, "rst" );
		int dma_read_chnl_valid_is_clock = esc_link_clockgen( &dma_read_chnl_valid, sc_time( 0, SC_NS ), module_path, sim_domain, "dma_read_chnl_valid" );
		int conf_done_is_clock = esc_link_clockgen( &conf_done, sc_time( 0, SC_NS ), module_path, sim_domain, "conf_done" );
		int dma_read_ctrl_ready_is_clock = esc_link_clockgen( &dma_read_ctrl_ready, sc_time( 0, SC_NS ), module_path, sim_domain, "dma_read_ctrl_ready" );
		int dma_write_ctrl_ready_is_clock = esc_link_clockgen( &dma_write_ctrl_ready, sc_time( 0, SC_NS ), module_path, sim_domain, "dma_write_ctrl_ready" );
		int dma_write_chnl_ready_is_clock = esc_link_clockgen( &dma_write_chnl_ready, sc_time( 0, SC_NS ), module_path, sim_domain, "dma_write_chnl_ready" );
		
		
#else
		
		int clk_is_clock = esc_link_clockgen( &clk, sc_time( 0, SC_NS ), module_path, sim_domain, "clk" );
		int rst_is_clock = esc_link_clockgen( &rst, sc_time( 0, SC_NS ), module_path, sim_domain, "rst" );
		int dma_read_chnl_valid_is_clock = esc_link_clockgen( &dma_read_chnl_valid, sc_time( 0, SC_NS ), module_path, sim_domain, "dma_read_chnl_valid" );
		int conf_done_is_clock = esc_link_clockgen( &conf_done, sc_time( 0, SC_NS ), module_path, sim_domain, "conf_done" );
		int dma_read_ctrl_ready_is_clock = esc_link_clockgen( &dma_read_ctrl_ready, sc_time( 0, SC_NS ), module_path, sim_domain, "dma_read_ctrl_ready" );
		int dma_write_ctrl_ready_is_clock = esc_link_clockgen( &dma_write_ctrl_ready, sc_time( 0, SC_NS ), module_path, sim_domain, "dma_write_ctrl_ready" );
		int dma_write_chnl_ready_is_clock = esc_link_clockgen( &dma_write_chnl_ready, sc_time( 0, SC_NS ), module_path, sim_domain, "dma_write_chnl_ready" );
		
#endif

		
#if defined ( ioConfig_IOCFG_DMA32 )
		
		if ( ! clk_is_clock )
			esc_link_signals( &clk, module_path, sim_domain, true, inputDelay );
		if ( ! rst_is_clock )
			esc_link_signals( &rst, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_read_chnl_valid, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_read_chnl_data, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_read_chnl_ready, module_path, sim_domain, true );
		esc_link_signals( &conf_info_mac_n, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &conf_info_mac_vec, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &conf_info_mac_len, module_path, sim_domain, true, inputDelay );
		if ( ! conf_done_is_clock )
			esc_link_signals( &conf_done, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &acc_done, module_path, sim_domain, true );
		esc_link_signals( &debug, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_valid, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_data_index, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_data_length, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_data_size, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_ready, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_write_ctrl_valid, module_path, sim_domain, true );
		esc_link_signals( &dma_write_ctrl_data_index, module_path, sim_domain, true );
		esc_link_signals( &dma_write_ctrl_data_length, module_path, sim_domain, true );
		esc_link_signals( &dma_write_ctrl_data_size, module_path, sim_domain, true );
		esc_link_signals( &dma_write_ctrl_ready, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_write_chnl_valid, module_path, sim_domain, true );
		esc_link_signals( &dma_write_chnl_data, module_path, sim_domain, true );
		esc_link_signals( &dma_write_chnl_ready, module_path, sim_domain, true, inputDelay );
		
		
#else
		
		if ( ! clk_is_clock )
			esc_link_signals( &clk, module_path, sim_domain, true, inputDelay );
		if ( ! rst_is_clock )
			esc_link_signals( &rst, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_read_chnl_valid, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_read_chnl_data, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_read_chnl_ready, module_path, sim_domain, true );
		esc_link_signals( &conf_info_mac_n, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &conf_info_mac_vec, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &conf_info_mac_len, module_path, sim_domain, true, inputDelay );
		if ( ! conf_done_is_clock )
			esc_link_signals( &conf_done, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &acc_done, module_path, sim_domain, true );
		esc_link_signals( &debug, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_valid, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_data_index, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_data_length, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_data_size, module_path, sim_domain, true );
		esc_link_signals( &dma_read_ctrl_ready, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_write_ctrl_valid, module_path, sim_domain, true );
		esc_link_signals( &dma_write_ctrl_data_index, module_path, sim_domain, true );
		esc_link_signals( &dma_write_ctrl_data_length, module_path, sim_domain, true );
		esc_link_signals( &dma_write_ctrl_data_size, module_path, sim_domain, true );
		esc_link_signals( &dma_write_ctrl_ready, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &dma_write_chnl_valid, module_path, sim_domain, true );
		esc_link_signals( &dma_write_chnl_data, module_path, sim_domain, true );
		esc_link_signals( &dma_write_chnl_ready, module_path, sim_domain, true, inputDelay );
		
#endif
		

		
#if defined ( ioConfig_IOCFG_DMA32 )
		
		if ( clk_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = clk[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, clk.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "clk", scName ) ) {
			esc_report_error( esc_error, "The port 'clk' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( rst_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = rst[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, rst.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "rst", scName ) ) {
			esc_report_error( esc_error, "The port 'rst' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( dma_read_chnl_valid_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = dma_read_chnl_valid[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, dma_read_chnl_valid.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "valid", scName ) ) {
			esc_report_error( esc_error, "The port 'valid' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( conf_done_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = conf_done[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, conf_done.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "conf_done", scName ) ) {
			esc_report_error( esc_error, "The port 'conf_done' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( dma_read_ctrl_ready_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = dma_read_ctrl_ready[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, dma_read_ctrl_ready.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "ready", scName ) ) {
			esc_report_error( esc_error, "The port 'ready' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( dma_write_ctrl_ready_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = dma_write_ctrl_ready[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, dma_write_ctrl_ready.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "ready", scName ) ) {
			esc_report_error( esc_error, "The port 'ready' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( dma_write_chnl_ready_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = dma_write_chnl_ready[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, dma_write_chnl_ready.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "ready", scName ) ) {
			esc_report_error( esc_error, "The port 'ready' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		
		
#else
		
		if ( clk_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = clk[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, clk.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "clk", scName ) ) {
			esc_report_error( esc_error, "The port 'clk' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( rst_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = rst[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, rst.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "rst", scName ) ) {
			esc_report_error( esc_error, "The port 'rst' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( dma_read_chnl_valid_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = dma_read_chnl_valid[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, dma_read_chnl_valid.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "valid", scName ) ) {
			esc_report_error( esc_error, "The port 'valid' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( conf_done_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = conf_done[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, conf_done.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "conf_done", scName ) ) {
			esc_report_error( esc_error, "The port 'conf_done' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( dma_read_ctrl_ready_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = dma_read_ctrl_ready[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, dma_read_ctrl_ready.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "ready", scName ) ) {
			esc_report_error( esc_error, "The port 'ready' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( dma_write_ctrl_ready_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = dma_write_ctrl_ready[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, dma_write_ctrl_ready.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "ready", scName ) ) {
			esc_report_error( esc_error, "The port 'ready' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( dma_write_chnl_ready_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = dma_write_chnl_ready[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, dma_write_chnl_ready.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "mac", "ready", scName ) ) {
			esc_report_error( esc_error, "The port 'ready' on module 'mac'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		
#endif


        if ( registeredClocks == 0 )
		{
			esc_report_error( esc_fatal, 
				"The clock port in module mac must have\n"
				"an sc_clock bound to it to make cosimulation work" );
		}
#endif
    }

#ifdef NC_SYSTEMC
    const char* hdl_name() const { return "mac_nc_cosim"; } 
    mac_cosim( sc_module_name name )
        : ncsc_foreign_module(name)
#else
	mac_cosim( sc_module_name in_name=sc_module_name(sc_gen_unique_name(" mac") ) )
		: sc_module(in_name)
#endif
		  
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
		  

    {
    };
};

int mac_cosim::numLinked = 0;
mac_cosim::StringPair mac_cosim::instanceNames[] = {
	{ NULL, NULL, false } };

#endif
