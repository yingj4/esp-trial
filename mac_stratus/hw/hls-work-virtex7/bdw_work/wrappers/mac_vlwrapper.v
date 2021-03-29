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
* Verilog Verification wrapper module for the mac module.
*
* This module contains the followng items:
*	- A foreign module definition for use in instantiatin the type_wrapper module
*      which contains the BEH module instance.
*	- An instance of the type_wrapper foreign module.
*   - alwyas blocks each type_wrapper output.
*
****************************************************************************/

`timescale 1 ps / 1 ps

module mac_vlwrapper(
      `ifdef ioConfig_IOCFG_DMA32
      
      clk,
       rst,
       conf_info_mac_n,
       conf_info_mac_vec,
       conf_info_mac_len,
       conf_done,
       acc_done,
       debug,
       dma_read_chnl_valid,
       dma_read_chnl_data,
       dma_read_chnl_ready,
       dma_read_ctrl_valid,
       dma_read_ctrl_data_index,
       dma_read_ctrl_data_length,
       dma_read_ctrl_data_size,
       dma_read_ctrl_ready,
       dma_write_ctrl_valid,
       dma_write_ctrl_data_index,
       dma_write_ctrl_data_length,
       dma_write_ctrl_data_size,
       dma_write_ctrl_ready,
       dma_write_chnl_valid,
       dma_write_chnl_data,
       dma_write_chnl_ready
      `endif
      `ifdef ioConfig_IOCFG_DMA64
      
      clk,
       rst,
       conf_info_mac_n,
       conf_info_mac_vec,
       conf_info_mac_len,
       conf_done,
       acc_done,
       debug,
       dma_read_chnl_valid,
       dma_read_chnl_data,
       dma_read_chnl_ready,
       dma_read_ctrl_valid,
       dma_read_ctrl_data_index,
       dma_read_ctrl_data_length,
       dma_read_ctrl_data_size,
       dma_read_ctrl_ready,
       dma_write_ctrl_valid,
       dma_write_ctrl_data_index,
       dma_write_ctrl_data_length,
       dma_write_ctrl_data_size,
       dma_write_ctrl_ready,
       dma_write_chnl_valid,
       dma_write_chnl_data,
       dma_write_chnl_ready
      `endif

    );

	`ifdef ioConfig_IOCFG_DMA32
	
	input clk;
	input rst;
	input dma_read_chnl_valid;
	input [31:0] dma_read_chnl_data;
	output dma_read_chnl_ready;
	reg dma_read_chnl_ready;
	wire m_dma_read_chnl_ready;
	input [31:0] conf_info_mac_n;
	input [31:0] conf_info_mac_vec;
	input [31:0] conf_info_mac_len;
	input conf_done;
	output acc_done;
	reg acc_done;
	wire m_acc_done;
	output [31:0] debug;
	reg[31:0] debug;
	wire [31:0] m_debug;
	output dma_read_ctrl_valid;
	reg dma_read_ctrl_valid;
	wire m_dma_read_ctrl_valid;
	output [31:0] dma_read_ctrl_data_index;
	output [31:0] dma_read_ctrl_data_length;
	output [2:0] dma_read_ctrl_data_size;
	reg[31:0] dma_read_ctrl_data_index;
	wire [31:0] m_dma_read_ctrl_data_index;
	reg[31:0] dma_read_ctrl_data_length;
	wire [31:0] m_dma_read_ctrl_data_length;
	reg[2:0] dma_read_ctrl_data_size;
	wire [2:0] m_dma_read_ctrl_data_size;
	input dma_read_ctrl_ready;
	output dma_write_ctrl_valid;
	reg dma_write_ctrl_valid;
	wire m_dma_write_ctrl_valid;
	output [31:0] dma_write_ctrl_data_index;
	output [31:0] dma_write_ctrl_data_length;
	output [2:0] dma_write_ctrl_data_size;
	reg[31:0] dma_write_ctrl_data_index;
	wire [31:0] m_dma_write_ctrl_data_index;
	reg[31:0] dma_write_ctrl_data_length;
	wire [31:0] m_dma_write_ctrl_data_length;
	reg[2:0] dma_write_ctrl_data_size;
	wire [2:0] m_dma_write_ctrl_data_size;
	input dma_write_ctrl_ready;
	output dma_write_chnl_valid;
	reg dma_write_chnl_valid;
	wire m_dma_write_chnl_valid;
	output [31:0] dma_write_chnl_data;
	reg[31:0] dma_write_chnl_data;
	wire [31:0] m_dma_write_chnl_data;
	input dma_write_chnl_ready;
	
	`endif
	`ifdef ioConfig_IOCFG_DMA64
	
	input clk;
	input rst;
	input dma_read_chnl_valid;
	input [63:0] dma_read_chnl_data;
	output dma_read_chnl_ready;
	reg dma_read_chnl_ready;
	wire m_dma_read_chnl_ready;
	input [31:0] conf_info_mac_n;
	input [31:0] conf_info_mac_vec;
	input [31:0] conf_info_mac_len;
	input conf_done;
	output acc_done;
	reg acc_done;
	wire m_acc_done;
	output [31:0] debug;
	reg[31:0] debug;
	wire [31:0] m_debug;
	output dma_read_ctrl_valid;
	reg dma_read_ctrl_valid;
	wire m_dma_read_ctrl_valid;
	output [31:0] dma_read_ctrl_data_index;
	output [31:0] dma_read_ctrl_data_length;
	output [2:0] dma_read_ctrl_data_size;
	reg[31:0] dma_read_ctrl_data_index;
	wire [31:0] m_dma_read_ctrl_data_index;
	reg[31:0] dma_read_ctrl_data_length;
	wire [31:0] m_dma_read_ctrl_data_length;
	reg[2:0] dma_read_ctrl_data_size;
	wire [2:0] m_dma_read_ctrl_data_size;
	input dma_read_ctrl_ready;
	output dma_write_ctrl_valid;
	reg dma_write_ctrl_valid;
	wire m_dma_write_ctrl_valid;
	output [31:0] dma_write_ctrl_data_index;
	output [31:0] dma_write_ctrl_data_length;
	output [2:0] dma_write_ctrl_data_size;
	reg[31:0] dma_write_ctrl_data_index;
	wire [31:0] m_dma_write_ctrl_data_index;
	reg[31:0] dma_write_ctrl_data_length;
	wire [31:0] m_dma_write_ctrl_data_length;
	reg[2:0] dma_write_ctrl_data_size;
	wire [2:0] m_dma_write_ctrl_data_size;
	input dma_write_ctrl_ready;
	output dma_write_chnl_valid;
	reg dma_write_chnl_valid;
	wire m_dma_write_chnl_valid;
	output [63:0] dma_write_chnl_data;
	reg[63:0] dma_write_chnl_data;
	wire [63:0] m_dma_write_chnl_data;
	input dma_write_chnl_ready;
	
	`endif


    // Instantiate the Verilog module that instantiates the SystemC module
    mac_type_wrapper mac_sc(
        `ifdef ioConfig_IOCFG_DMA32
        
        .clk(clk),
         .rst(rst),
         .conf_info_mac_n(conf_info_mac_n),
         .conf_info_mac_vec(conf_info_mac_vec),
         .conf_info_mac_len(conf_info_mac_len),
         .conf_done(conf_done),
         .acc_done(m_acc_done),
         .debug(m_debug),
         .dma_read_chnl_valid(dma_read_chnl_valid),
         .dma_read_chnl_data(dma_read_chnl_data),
         .dma_read_chnl_ready(m_dma_read_chnl_ready),
         .dma_read_ctrl_valid(m_dma_read_ctrl_valid),
         .dma_read_ctrl_data_index(m_dma_read_ctrl_data_index),
         .dma_read_ctrl_data_length(m_dma_read_ctrl_data_length),
         .dma_read_ctrl_data_size(m_dma_read_ctrl_data_size),
         .dma_read_ctrl_ready(dma_read_ctrl_ready),
         .dma_write_ctrl_valid(m_dma_write_ctrl_valid),
         .dma_write_ctrl_data_index(m_dma_write_ctrl_data_index),
         .dma_write_ctrl_data_length(m_dma_write_ctrl_data_length),
         .dma_write_ctrl_data_size(m_dma_write_ctrl_data_size),
         .dma_write_ctrl_ready(dma_write_ctrl_ready),
         .dma_write_chnl_valid(m_dma_write_chnl_valid),
         .dma_write_chnl_data(m_dma_write_chnl_data),
         .dma_write_chnl_ready(dma_write_chnl_ready)
        `endif
        `ifdef ioConfig_IOCFG_DMA64
        
        .clk(clk),
         .rst(rst),
         .conf_info_mac_n(conf_info_mac_n),
         .conf_info_mac_vec(conf_info_mac_vec),
         .conf_info_mac_len(conf_info_mac_len),
         .conf_done(conf_done),
         .acc_done(m_acc_done),
         .debug(m_debug),
         .dma_read_chnl_valid(dma_read_chnl_valid),
         .dma_read_chnl_data(dma_read_chnl_data),
         .dma_read_chnl_ready(m_dma_read_chnl_ready),
         .dma_read_ctrl_valid(m_dma_read_ctrl_valid),
         .dma_read_ctrl_data_index(m_dma_read_ctrl_data_index),
         .dma_read_ctrl_data_length(m_dma_read_ctrl_data_length),
         .dma_read_ctrl_data_size(m_dma_read_ctrl_data_size),
         .dma_read_ctrl_ready(dma_read_ctrl_ready),
         .dma_write_ctrl_valid(m_dma_write_ctrl_valid),
         .dma_write_ctrl_data_index(m_dma_write_ctrl_data_index),
         .dma_write_ctrl_data_length(m_dma_write_ctrl_data_length),
         .dma_write_ctrl_data_size(m_dma_write_ctrl_data_size),
         .dma_write_ctrl_ready(dma_write_ctrl_ready),
         .dma_write_chnl_valid(m_dma_write_chnl_valid),
         .dma_write_chnl_data(m_dma_write_chnl_data),
         .dma_write_chnl_ready(dma_write_chnl_ready)
        `endif

    );

    // Always blocks for non-blocking assignments of type_wrapper outputs to
    // Verilog Verificatoin wrapper outputs.

    `ifdef ioConfig_IOCFG_DMA32
    
    always @(m_acc_done)
     begin
      acc_done <= m_acc_done;
     end
    always @(m_debug)
     begin
      debug <= m_debug;
     end
    always @(m_dma_read_chnl_ready)
     begin
      dma_read_chnl_ready <= m_dma_read_chnl_ready;
     end
    always @(m_dma_read_ctrl_valid)
     begin
      dma_read_ctrl_valid <= m_dma_read_ctrl_valid;
     end
    always @(m_dma_read_ctrl_data_index)
     begin
      dma_read_ctrl_data_index <= m_dma_read_ctrl_data_index;
     end
    always @(m_dma_read_ctrl_data_length)
     begin
      dma_read_ctrl_data_length <= m_dma_read_ctrl_data_length;
     end
    always @(m_dma_read_ctrl_data_size)
     begin
      dma_read_ctrl_data_size <= m_dma_read_ctrl_data_size;
     end
    always @(m_dma_write_ctrl_valid)
     begin
      dma_write_ctrl_valid <= m_dma_write_ctrl_valid;
     end
    always @(m_dma_write_ctrl_data_index)
     begin
      dma_write_ctrl_data_index <= m_dma_write_ctrl_data_index;
     end
    always @(m_dma_write_ctrl_data_length)
     begin
      dma_write_ctrl_data_length <= m_dma_write_ctrl_data_length;
     end
    always @(m_dma_write_ctrl_data_size)
     begin
      dma_write_ctrl_data_size <= m_dma_write_ctrl_data_size;
     end
    always @(m_dma_write_chnl_valid)
     begin
      dma_write_chnl_valid <= m_dma_write_chnl_valid;
     end
    always @(m_dma_write_chnl_data)
     begin
      dma_write_chnl_data <= m_dma_write_chnl_data;
     end
    
    `endif
    `ifdef ioConfig_IOCFG_DMA64
    
    always @(m_acc_done)
     begin
      acc_done <= m_acc_done;
     end
    always @(m_debug)
     begin
      debug <= m_debug;
     end
    always @(m_dma_read_chnl_ready)
     begin
      dma_read_chnl_ready <= m_dma_read_chnl_ready;
     end
    always @(m_dma_read_ctrl_valid)
     begin
      dma_read_ctrl_valid <= m_dma_read_ctrl_valid;
     end
    always @(m_dma_read_ctrl_data_index)
     begin
      dma_read_ctrl_data_index <= m_dma_read_ctrl_data_index;
     end
    always @(m_dma_read_ctrl_data_length)
     begin
      dma_read_ctrl_data_length <= m_dma_read_ctrl_data_length;
     end
    always @(m_dma_read_ctrl_data_size)
     begin
      dma_read_ctrl_data_size <= m_dma_read_ctrl_data_size;
     end
    always @(m_dma_write_ctrl_valid)
     begin
      dma_write_ctrl_valid <= m_dma_write_ctrl_valid;
     end
    always @(m_dma_write_ctrl_data_index)
     begin
      dma_write_ctrl_data_index <= m_dma_write_ctrl_data_index;
     end
    always @(m_dma_write_ctrl_data_length)
     begin
      dma_write_ctrl_data_length <= m_dma_write_ctrl_data_length;
     end
    always @(m_dma_write_ctrl_data_size)
     begin
      dma_write_ctrl_data_size <= m_dma_write_ctrl_data_size;
     end
    always @(m_dma_write_chnl_valid)
     begin
      dma_write_chnl_valid <= m_dma_write_chnl_valid;
     end
    always @(m_dma_write_chnl_data)
     begin
      dma_write_chnl_data <= m_dma_write_chnl_data;
     end
    
    `endif


endmodule

// This is an internal module that instantiates the user's SystemC input module
// using the Incisive foreign module instantiation feature.
// The name of the module and the names of the inputs and outputs must match
// with those defined in the SystemC type_wrapper module
module mac_type_wrapper(
      `ifdef ioConfig_IOCFG_DMA32
      
      clk,
       rst,
       conf_info_mac_n,
       conf_info_mac_vec,
       conf_info_mac_len,
       conf_done,
       acc_done,
       debug,
       dma_read_chnl_valid,
       dma_read_chnl_data,
       dma_read_chnl_ready,
       dma_read_ctrl_valid,
       dma_read_ctrl_data_index,
       dma_read_ctrl_data_length,
       dma_read_ctrl_data_size,
       dma_read_ctrl_ready,
       dma_write_ctrl_valid,
       dma_write_ctrl_data_index,
       dma_write_ctrl_data_length,
       dma_write_ctrl_data_size,
       dma_write_ctrl_ready,
       dma_write_chnl_valid,
       dma_write_chnl_data,
       dma_write_chnl_ready
      `endif
      `ifdef ioConfig_IOCFG_DMA64
      
      clk,
       rst,
       conf_info_mac_n,
       conf_info_mac_vec,
       conf_info_mac_len,
       conf_done,
       acc_done,
       debug,
       dma_read_chnl_valid,
       dma_read_chnl_data,
       dma_read_chnl_ready,
       dma_read_ctrl_valid,
       dma_read_ctrl_data_index,
       dma_read_ctrl_data_length,
       dma_read_ctrl_data_size,
       dma_read_ctrl_ready,
       dma_write_ctrl_valid,
       dma_write_ctrl_data_index,
       dma_write_ctrl_data_length,
       dma_write_ctrl_data_size,
       dma_write_ctrl_ready,
       dma_write_chnl_valid,
       dma_write_chnl_data,
       dma_write_chnl_ready
      `endif

    ) (* integer foreign = "SystemC";
    *);

	`ifdef ioConfig_IOCFG_DMA32
	
	input clk;
	input rst;
	input dma_read_chnl_valid;
	input [31:0] dma_read_chnl_data;
	output dma_read_chnl_ready;
	input [31:0] conf_info_mac_n;
	input [31:0] conf_info_mac_vec;
	input [31:0] conf_info_mac_len;
	input conf_done;
	output acc_done;
	output [31:0] debug;
	output dma_read_ctrl_valid;
	output [31:0] dma_read_ctrl_data_index;
	output [31:0] dma_read_ctrl_data_length;
	output [2:0] dma_read_ctrl_data_size;
	input dma_read_ctrl_ready;
	output dma_write_ctrl_valid;
	output [31:0] dma_write_ctrl_data_index;
	output [31:0] dma_write_ctrl_data_length;
	output [2:0] dma_write_ctrl_data_size;
	input dma_write_ctrl_ready;
	output dma_write_chnl_valid;
	output [31:0] dma_write_chnl_data;
	input dma_write_chnl_ready;
	
	`endif
	`ifdef ioConfig_IOCFG_DMA64
	
	input clk;
	input rst;
	input dma_read_chnl_valid;
	input [63:0] dma_read_chnl_data;
	output dma_read_chnl_ready;
	input [31:0] conf_info_mac_n;
	input [31:0] conf_info_mac_vec;
	input [31:0] conf_info_mac_len;
	input conf_done;
	output acc_done;
	output [31:0] debug;
	output dma_read_ctrl_valid;
	output [31:0] dma_read_ctrl_data_index;
	output [31:0] dma_read_ctrl_data_length;
	output [2:0] dma_read_ctrl_data_size;
	input dma_read_ctrl_ready;
	output dma_write_ctrl_valid;
	output [31:0] dma_write_ctrl_data_index;
	output [31:0] dma_write_ctrl_data_length;
	output [2:0] dma_write_ctrl_data_size;
	input dma_write_ctrl_ready;
	output dma_write_chnl_valid;
	output [63:0] dma_write_chnl_data;
	input dma_write_chnl_ready;
	
	`endif


endmodule
