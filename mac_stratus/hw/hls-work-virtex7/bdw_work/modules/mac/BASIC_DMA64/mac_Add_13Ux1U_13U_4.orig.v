/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 16:25:51 CDT (-0500), Sunday 28 March 2021
    Configured on: mojave.cs.illinois.edu
    Configured by: yingj4 (Ying Jing)
    
    Created by: Stratus DpOpt 2019.1.02 
*******************************************************************************/

module mac_Add_13Ux1U_13U_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [12:0] in2;
input  in1;
output [12:0] out1;
wire [12:0] asc001;

assign asc001 = 
	+(in2)
	+(in1);

assign out1 = asc001;
endmodule

/* CADENCE  ubHwSgA= : u9/ySgnWtBlWxVDRXgAb5+g= ** DO NOT EDIT THIS LINE ******/

