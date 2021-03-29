`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 16:22:34 CDT (-0500), Sunday 28 March 2021
    Configured on: mojave.cs.illinois.edu
    Configured by: yingj4 (Ying Jing)
    
    Created by: Stratus DpOpt 2019.1.02 
*******************************************************************************/

module mac_N_Mux_32_2_0_4 (
	in2,
	ctrl1,
	out1
	); /* architecture "behavioural" */ 
input [31:0] in2;
input  ctrl1;
output [31:0] out1;
wire [31:0] asc001;

reg [31:0] asc001_tmp_0;
assign asc001 = asc001_tmp_0;
always @ (*) begin
	case (ctrl1)
		1'B1 : asc001_tmp_0 = 32'B00000000000000000001100100000000 ;
		default : asc001_tmp_0 = in2 ;
	endcase
end

assign out1 = asc001;
endmodule

/* CADENCE  uLn2SQA= : u9/ySgnWtBlWxVDRXgAb5+g= ** DO NOT EDIT THIS LINE ******/


