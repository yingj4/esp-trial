`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 16:22:34 CDT (-0500), Sunday 28 March 2021
    Configured on: mojave.cs.illinois.edu
    Configured by: yingj4 (Ying Jing)
    
    Created by: Stratus DpOpt 2019.1.02 
*******************************************************************************/

module mac_Add_33Sx2U_33S_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [32:0] in2;
input [1:0] in1;
output [32:0] out1;
wire [32:0] asc001;

assign asc001 = 
	+($signed(in2))
	+($signed({1'B0, in1}));

assign out1 = asc001;
endmodule

/* CADENCE  ubL0SAg= : u9/ySgnWtBlWxVDRXgAb5+g= ** DO NOT EDIT THIS LINE ******/


