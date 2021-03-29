`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 16:22:34 CDT (-0500), Sunday 28 March 2021
    Configured on: mojave.cs.illinois.edu
    Configured by: yingj4 (Ying Jing)
    
    Created by: Stratus DpOpt 2019.1.02 
*******************************************************************************/

module mac_N_Muxb_1_2_4_4 (
	in3,
	in2,
	ctrl1,
	out1
	); /* architecture "behavioural" */ 
input  in3,
	in2,
	ctrl1;
output  out1;
wire  asc001;

reg [0:0] asc001_tmp_0;
assign asc001 = asc001_tmp_0;
always @ (*) begin
	case (ctrl1)
		1'B1 : asc001_tmp_0 = in2 ;
		default : asc001_tmp_0 = in3 ;
	endcase
end

assign out1 = asc001;
endmodule

/* CADENCE  uLD1TgE= : u9/ySgnWtBlWxVDRXgAb5+g= ** DO NOT EDIT THIS LINE ******/


