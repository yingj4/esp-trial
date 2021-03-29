/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 16:25:25 CDT (-0500), Sunday 28 March 2021
    Configured on: mojave.cs.illinois.edu
    Configured by: yingj4 (Ying Jing)
    
    Created by: Stratus DpOpt 2019.1.02 
*******************************************************************************/

module mac_Add_14Sx1U_14S_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [13:0] in2;
input  in1;
output [13:0] out1;
wire [13:0] asc001;

assign asc001 = 
	+($signed(in2))
	+($signed({1'B0, in1}));

assign out1 = asc001;
endmodule

/* CADENCE  ubLyQwo= : u9/ySgnWtBlWxVDRXgAb5+g= ** DO NOT EDIT THIS LINE ******/
