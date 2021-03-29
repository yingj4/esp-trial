//
// Top-level Verilog module

// One of these modules is created for each testcase that involves
// co-simulation.  This one is for the 'BASIC_DMA64_V' testcase.
// The top-level module contains:
//	- An instances of a co-simulation wrapper module for each instance
//	  simulating in Verilog.
//	- Hub initialization calls that load the shared library for the
//	  simulation.
//
// You can add any other legal Verilog to this template file, and it appear in
// the verilog module.

`timescale 1 ps / 1 ps

module top;

	// RTL wrapper instances for cosim.
	mac_cosim mac0();


	integer n_cur_time;
	initial n_cur_time=0;
	reg [63:0] cur_time;
	initial cur_time=0;

	`include "hub.v"

	// Load library and begin co-simulation.
	initial begin

        // For gate-level simulations we back-annotate the instances with delays
        // from the SDF file
        

		// Open the trace file if that's appropriate.
		if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) )
			$dumpfile( "bdw_work/sims/BASIC_DMA64_V/verilog.vcd" );
		if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) ) begin
		`ifdef ioConfig_IOCFG_DMA32
		
		$dumpvars( 0, mac0.clk );
		$dumpvars( 0, mac0.rst );
		$dumpvars( 0, mac0.dma_read_chnl_valid );
		$dumpvars( 0, mac0.dma_read_chnl_data );
		$dumpvars( 0, mac0.dma_read_chnl_ready );
		$dumpvars( 0, mac0.conf_info_mac_n );
		$dumpvars( 0, mac0.conf_info_mac_vec );
		$dumpvars( 0, mac0.conf_info_mac_len );
		$dumpvars( 0, mac0.conf_done );
		$dumpvars( 0, mac0.acc_done );
		$dumpvars( 0, mac0.debug );
		$dumpvars( 0, mac0.dma_read_ctrl_valid );
		$dumpvars( 0, mac0.dma_read_ctrl_data_index );
		$dumpvars( 0, mac0.dma_read_ctrl_data_length );
		$dumpvars( 0, mac0.dma_read_ctrl_data_size );
		$dumpvars( 0, mac0.dma_read_ctrl_ready );
		$dumpvars( 0, mac0.dma_write_ctrl_valid );
		$dumpvars( 0, mac0.dma_write_ctrl_data_index );
		$dumpvars( 0, mac0.dma_write_ctrl_data_length );
		$dumpvars( 0, mac0.dma_write_ctrl_data_size );
		$dumpvars( 0, mac0.dma_write_ctrl_ready );
		$dumpvars( 0, mac0.dma_write_chnl_valid );
		$dumpvars( 0, mac0.dma_write_chnl_data );
		$dumpvars( 0, mac0.dma_write_chnl_ready );
		
		`endif
		`ifdef ioConfig_IOCFG_DMA64
		
		$dumpvars( 0, mac0.clk );
		$dumpvars( 0, mac0.rst );
		$dumpvars( 0, mac0.dma_read_chnl_valid );
		$dumpvars( 0, mac0.dma_read_chnl_data );
		$dumpvars( 0, mac0.dma_read_chnl_ready );
		$dumpvars( 0, mac0.conf_info_mac_n );
		$dumpvars( 0, mac0.conf_info_mac_vec );
		$dumpvars( 0, mac0.conf_info_mac_len );
		$dumpvars( 0, mac0.conf_done );
		$dumpvars( 0, mac0.acc_done );
		$dumpvars( 0, mac0.debug );
		$dumpvars( 0, mac0.dma_read_ctrl_valid );
		$dumpvars( 0, mac0.dma_read_ctrl_data_index );
		$dumpvars( 0, mac0.dma_read_ctrl_data_length );
		$dumpvars( 0, mac0.dma_read_ctrl_data_size );
		$dumpvars( 0, mac0.dma_read_ctrl_ready );
		$dumpvars( 0, mac0.dma_write_ctrl_valid );
		$dumpvars( 0, mac0.dma_write_ctrl_data_index );
		$dumpvars( 0, mac0.dma_write_ctrl_data_length );
		$dumpvars( 0, mac0.dma_write_ctrl_data_size );
		$dumpvars( 0, mac0.dma_write_ctrl_ready );
		$dumpvars( 0, mac0.dma_write_chnl_valid );
		$dumpvars( 0, mac0.dma_write_chnl_data );
		$dumpvars( 0, mac0.dma_write_chnl_ready );
		
		`endif
			$dumpvars( 4, mac0.mac0 );
		end


		// If the SystemC shared library will be loaded using +qbSetOption+libdef=libname.so
		// from the Verilog simulator's command line, the following line can be left
		// out.  In order to load the shared library directly from Verilog, uncomment
		// the following line using either ther automatically generated SIM_EXEC string,
		// or a hard-coded string giving the path to the shared library.
		//hubLoadLibrary( "bdw_work/sims/BASIC_DMA64_V/incisive/sim_BASIC_DMA64_V.so", "" );

		// Begin a co-simulation.
		// This task returns after esc_end_cosim() is called from SystemC.
		hubStartCosim;
		#100 $stop;
	end
endmodule

//
// The following wrapper modules are used only for NCSim cosims.
//

`ifdef BDW_NCSC

module mac_nc_cosim(clk,
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
);

input clk;
wire clk;
input rst;
wire rst;
input dma_read_chnl_valid;
wire dma_read_chnl_valid;
input dma_read_chnl_data;
wire[63:0] dma_read_chnl_data;
output dma_read_chnl_ready;
wire dma_read_chnl_ready;
input [31:0] conf_info_mac_n;
input [31:0] conf_info_mac_vec;
input [31:0] conf_info_mac_len;
wire[31:0] conf_info_mac_n;
wire[31:0] conf_info_mac_vec;
wire[31:0] conf_info_mac_len;
input conf_done;
wire conf_done;
output acc_done;
wire acc_done;
output debug;
wire[31:0] debug;
output dma_read_ctrl_valid;
wire dma_read_ctrl_valid;
output [31:0] dma_read_ctrl_data_index;
output [31:0] dma_read_ctrl_data_length;
output [2:0] dma_read_ctrl_data_size;
wire[31:0] dma_read_ctrl_data_index;
wire[31:0] dma_read_ctrl_data_length;
wire[2:0] dma_read_ctrl_data_size;
input dma_read_ctrl_ready;
wire dma_read_ctrl_ready;
output dma_write_ctrl_valid;
wire dma_write_ctrl_valid;
output [31:0] dma_write_ctrl_data_index;
output [31:0] dma_write_ctrl_data_length;
output [2:0] dma_write_ctrl_data_size;
wire[31:0] dma_write_ctrl_data_index;
wire[31:0] dma_write_ctrl_data_length;
wire[2:0] dma_write_ctrl_data_size;
input dma_write_ctrl_ready;
wire dma_write_ctrl_ready;
output dma_write_chnl_valid;
wire dma_write_chnl_valid;
output dma_write_chnl_data;
wire[63:0] dma_write_chnl_data;
input dma_write_chnl_ready;
wire dma_write_chnl_ready;

	reg [31:0]conf_info_mac_n_delayed;
	always @ (conf_info_mac_n) conf_info_mac_n_delayed <= conf_info_mac_n;
	reg [31:0]conf_info_mac_vec_delayed;
	always @ (conf_info_mac_vec) conf_info_mac_vec_delayed <= conf_info_mac_vec;
	reg [31:0]conf_info_mac_len_delayed;
	always @ (conf_info_mac_len) conf_info_mac_len_delayed <= conf_info_mac_len;
	reg dma_read_chnl_valid_delayed;
	always @ (dma_read_chnl_valid) dma_read_chnl_valid_delayed <= dma_read_chnl_valid;
	reg [63:0]dma_read_chnl_data_delayed;
	always @ (dma_read_chnl_data) dma_read_chnl_data_delayed <= dma_read_chnl_data;
	reg conf_done_delayed;
	always @ (conf_done) conf_done_delayed <= conf_done;
	reg dma_read_ctrl_ready_delayed;
	always @ (dma_read_ctrl_ready) dma_read_ctrl_ready_delayed <= dma_read_ctrl_ready;
	reg dma_write_ctrl_ready_delayed;
	always @ (dma_write_ctrl_ready) dma_write_ctrl_ready_delayed <= dma_write_ctrl_ready;
	reg dma_write_chnl_ready_delayed;
	always @ (dma_write_chnl_ready) dma_write_chnl_ready_delayed <= dma_write_chnl_ready;
mac mac0( 	.conf_info_mac_n(conf_info_mac_n_delayed),
	.conf_info_mac_vec(conf_info_mac_vec_delayed),
	.conf_info_mac_len(conf_info_mac_len_delayed),
	.dma_read_ctrl_data_index(dma_read_ctrl_data_index),
	.dma_read_ctrl_data_length(dma_read_ctrl_data_length),
	.dma_read_ctrl_data_size(dma_read_ctrl_data_size),
	.dma_write_ctrl_data_index(dma_write_ctrl_data_index),
	.dma_write_ctrl_data_length(dma_write_ctrl_data_length),
	.dma_write_ctrl_data_size(dma_write_ctrl_data_size),
	.clk(clk),
	.rst(rst),
	.dma_read_chnl_valid(dma_read_chnl_valid_delayed),
	.dma_read_chnl_data(dma_read_chnl_data_delayed),
	.dma_read_chnl_ready(dma_read_chnl_ready),
	.conf_done(conf_done_delayed),
	.acc_done(acc_done),
	.debug(debug),
	.dma_read_ctrl_valid(dma_read_ctrl_valid),
	.dma_read_ctrl_ready(dma_read_ctrl_ready_delayed),
	.dma_write_ctrl_valid(dma_write_ctrl_valid),
	.dma_write_ctrl_ready(dma_write_ctrl_ready_delayed),
	.dma_write_chnl_valid(dma_write_chnl_valid),
	.dma_write_chnl_data(dma_write_chnl_data),
	.dma_write_chnl_ready(dma_write_chnl_ready_delayed)
);

   `include "hub.v"

   initial begin

if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) )
	$dumpfile( "bdw_work/sims/BASIC_DMA64_V/verilog.vcd" );
if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) ) begin
`ifdef ioConfig_IOCFG_DMA32

$dumpvars( 0, mac0.clk );
$dumpvars( 0, mac0.rst );
$dumpvars( 0, mac0.dma_read_chnl_valid );
$dumpvars( 0, mac0.dma_read_chnl_data );
$dumpvars( 0, mac0.dma_read_chnl_ready );
$dumpvars( 0, mac0.conf_info_mac_n );
$dumpvars( 0, mac0.conf_info_mac_vec );
$dumpvars( 0, mac0.conf_info_mac_len );
$dumpvars( 0, mac0.conf_done );
$dumpvars( 0, mac0.acc_done );
$dumpvars( 0, mac0.debug );
$dumpvars( 0, mac0.dma_read_ctrl_valid );
$dumpvars( 0, mac0.dma_read_ctrl_data_index );
$dumpvars( 0, mac0.dma_read_ctrl_data_length );
$dumpvars( 0, mac0.dma_read_ctrl_data_size );
$dumpvars( 0, mac0.dma_read_ctrl_ready );
$dumpvars( 0, mac0.dma_write_ctrl_valid );
$dumpvars( 0, mac0.dma_write_ctrl_data_index );
$dumpvars( 0, mac0.dma_write_ctrl_data_length );
$dumpvars( 0, mac0.dma_write_ctrl_data_size );
$dumpvars( 0, mac0.dma_write_ctrl_ready );
$dumpvars( 0, mac0.dma_write_chnl_valid );
$dumpvars( 0, mac0.dma_write_chnl_data );
$dumpvars( 0, mac0.dma_write_chnl_ready );

`endif
`ifdef ioConfig_IOCFG_DMA64

$dumpvars( 0, mac0.clk );
$dumpvars( 0, mac0.rst );
$dumpvars( 0, mac0.dma_read_chnl_valid );
$dumpvars( 0, mac0.dma_read_chnl_data );
$dumpvars( 0, mac0.dma_read_chnl_ready );
$dumpvars( 0, mac0.conf_info_mac_n );
$dumpvars( 0, mac0.conf_info_mac_vec );
$dumpvars( 0, mac0.conf_info_mac_len );
$dumpvars( 0, mac0.conf_done );
$dumpvars( 0, mac0.acc_done );
$dumpvars( 0, mac0.debug );
$dumpvars( 0, mac0.dma_read_ctrl_valid );
$dumpvars( 0, mac0.dma_read_ctrl_data_index );
$dumpvars( 0, mac0.dma_read_ctrl_data_length );
$dumpvars( 0, mac0.dma_read_ctrl_data_size );
$dumpvars( 0, mac0.dma_read_ctrl_ready );
$dumpvars( 0, mac0.dma_write_ctrl_valid );
$dumpvars( 0, mac0.dma_write_ctrl_data_index );
$dumpvars( 0, mac0.dma_write_ctrl_data_length );
$dumpvars( 0, mac0.dma_write_ctrl_data_size );
$dumpvars( 0, mac0.dma_write_ctrl_ready );
$dumpvars( 0, mac0.dma_write_chnl_valid );
$dumpvars( 0, mac0.dma_write_chnl_data );
$dumpvars( 0, mac0.dma_write_chnl_ready );

`endif
	$dumpvars( 4, mac0 );
end
   end

endmodule


`endif


