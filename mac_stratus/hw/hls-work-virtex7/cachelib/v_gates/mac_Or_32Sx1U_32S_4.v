// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:25:49 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_7 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA64/v_gates/mac_Or_32Sx1U_32S_4.v
// Design      : mac_Or_32Sx1U_32S_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_Or_32Sx1U_32S_4
   (in2,
    in1,
    out1);
  input [31:0]in2;
  input in1;
  output [31:0]out1;

  wire \<const0> ;
  wire in1;
  wire [31:0]in2;
  wire [0:0]\^out1 ;

  assign out1[31] = \<const0> ;
  assign out1[30] = \<const0> ;
  assign out1[29] = \<const0> ;
  assign out1[28] = \<const0> ;
  assign out1[27] = \<const0> ;
  assign out1[26] = \<const0> ;
  assign out1[25] = \<const0> ;
  assign out1[24] = \<const0> ;
  assign out1[23] = \<const0> ;
  assign out1[22] = \<const0> ;
  assign out1[21] = \<const0> ;
  assign out1[20] = \<const0> ;
  assign out1[19] = \<const0> ;
  assign out1[18] = \<const0> ;
  assign out1[17] = \<const0> ;
  assign out1[16] = \<const0> ;
  assign out1[15] = \<const0> ;
  assign out1[14] = \<const0> ;
  assign out1[13] = \<const0> ;
  assign out1[12] = \<const0> ;
  assign out1[11] = \<const0> ;
  assign out1[10] = \<const0> ;
  assign out1[9] = \<const0> ;
  assign out1[8] = \<const0> ;
  assign out1[7] = \<const0> ;
  assign out1[6] = \<const0> ;
  assign out1[5] = \<const0> ;
  assign out1[4] = \<const0> ;
  assign out1[3] = \<const0> ;
  assign out1[2] = \<const0> ;
  assign out1[1] = \<const0> ;
  assign out1[0] = \^out1 [0];
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'hE)) 
    \out1[0]_INST_0 
       (.I0(in2[0]),
        .I1(in1),
        .O(\^out1 ));
endmodule

