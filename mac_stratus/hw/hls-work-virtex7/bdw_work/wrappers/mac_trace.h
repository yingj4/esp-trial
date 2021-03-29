#ifdef ioConfig_IOCFG_DMA32
	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
		if ( mac0 != NULL ) {
			esc_trace_signal( &mac0->clk, ( std::string(name()) + std::string( ".mac.clk" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->rst, ( std::string(name()) + std::string( ".mac.rst" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_chnl.valid, ( std::string(name()) + std::string( ".mac.dma_read_chnl.valid" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_chnl.data, ( std::string(name()) + std::string( ".mac.dma_read_chnl.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_chnl.ready, ( std::string(name()) + std::string( ".mac.dma_read_chnl.ready" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->conf_info, ( std::string(name()) + std::string( ".mac.conf_info" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->conf_done, ( std::string(name()) + std::string( ".mac.conf_done" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->acc_done, ( std::string(name()) + std::string( ".mac.acc_done" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->debug, ( std::string(name()) + std::string( ".mac.debug" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_ctrl.valid, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.valid" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_ctrl.data, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_ctrl.ready, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.ready" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_ctrl.valid, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.valid" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_ctrl.data, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_ctrl.ready, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.ready" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_chnl.valid, ( std::string(name()) + std::string( ".mac.dma_write_chnl.valid" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_chnl.data, ( std::string(name()) + std::string( ".mac.dma_write_chnl.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_chnl.ready, ( std::string(name()) + std::string( ".mac.dma_write_chnl.ready" ) ).c_str(), esc_trace_vcd );
		}
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		if ( mac0 != NULL ) {
			esc_trace_signal( &mac0->clk, ( std::string(name()) + std::string( ".mac.clk" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->rst, ( std::string(name()) + std::string( ".mac.rst" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_chnl.valid, ( std::string(name()) + std::string( ".mac.dma_read_chnl.valid" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_chnl.data, ( std::string(name()) + std::string( ".mac.dma_read_chnl.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_chnl.ready, ( std::string(name()) + std::string( ".mac.dma_read_chnl.ready" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->conf_info, ( std::string(name()) + std::string( ".mac.conf_info" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->conf_done, ( std::string(name()) + std::string( ".mac.conf_done" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->acc_done, ( std::string(name()) + std::string( ".mac.acc_done" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->debug, ( std::string(name()) + std::string( ".mac.debug" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_ctrl.valid, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.valid" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_ctrl.data, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_ctrl.ready, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.ready" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_ctrl.valid, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.valid" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_ctrl.data, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_ctrl.ready, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.ready" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_chnl.valid, ( std::string(name()) + std::string( ".mac.dma_write_chnl.valid" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_chnl.data, ( std::string(name()) + std::string( ".mac.dma_write_chnl.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_chnl.ready, ( std::string(name()) + std::string( ".mac.dma_write_chnl.ready" ) ).c_str(), esc_trace_fsdb );
		}
	}
#endif

#ifdef ioConfig_IOCFG_DMA64
	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
		if ( mac0 != NULL ) {
			esc_trace_signal( &mac0->clk, ( std::string(name()) + std::string( ".mac.clk" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->rst, ( std::string(name()) + std::string( ".mac.rst" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_chnl.valid, ( std::string(name()) + std::string( ".mac.dma_read_chnl.valid" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_chnl.data, ( std::string(name()) + std::string( ".mac.dma_read_chnl.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_chnl.ready, ( std::string(name()) + std::string( ".mac.dma_read_chnl.ready" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->conf_info, ( std::string(name()) + std::string( ".mac.conf_info" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->conf_done, ( std::string(name()) + std::string( ".mac.conf_done" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->acc_done, ( std::string(name()) + std::string( ".mac.acc_done" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->debug, ( std::string(name()) + std::string( ".mac.debug" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_ctrl.valid, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.valid" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_ctrl.data, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_read_ctrl.ready, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.ready" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_ctrl.valid, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.valid" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_ctrl.data, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_ctrl.ready, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.ready" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_chnl.valid, ( std::string(name()) + std::string( ".mac.dma_write_chnl.valid" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_chnl.data, ( std::string(name()) + std::string( ".mac.dma_write_chnl.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &mac0->dma_write_chnl.ready, ( std::string(name()) + std::string( ".mac.dma_write_chnl.ready" ) ).c_str(), esc_trace_vcd );
		}
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		if ( mac0 != NULL ) {
			esc_trace_signal( &mac0->clk, ( std::string(name()) + std::string( ".mac.clk" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->rst, ( std::string(name()) + std::string( ".mac.rst" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_chnl.valid, ( std::string(name()) + std::string( ".mac.dma_read_chnl.valid" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_chnl.data, ( std::string(name()) + std::string( ".mac.dma_read_chnl.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_chnl.ready, ( std::string(name()) + std::string( ".mac.dma_read_chnl.ready" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->conf_info, ( std::string(name()) + std::string( ".mac.conf_info" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->conf_done, ( std::string(name()) + std::string( ".mac.conf_done" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->acc_done, ( std::string(name()) + std::string( ".mac.acc_done" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->debug, ( std::string(name()) + std::string( ".mac.debug" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_ctrl.valid, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.valid" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_ctrl.data, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_read_ctrl.ready, ( std::string(name()) + std::string( ".mac.dma_read_ctrl.ready" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_ctrl.valid, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.valid" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_ctrl.data, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_ctrl.ready, ( std::string(name()) + std::string( ".mac.dma_write_ctrl.ready" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_chnl.valid, ( std::string(name()) + std::string( ".mac.dma_write_chnl.valid" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_chnl.data, ( std::string(name()) + std::string( ".mac.dma_write_chnl.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &mac0->dma_write_chnl.ready, ( std::string(name()) + std::string( ".mac.dma_write_chnl.ready" ) ).c_str(), esc_trace_fsdb );
		}
	}
#endif

