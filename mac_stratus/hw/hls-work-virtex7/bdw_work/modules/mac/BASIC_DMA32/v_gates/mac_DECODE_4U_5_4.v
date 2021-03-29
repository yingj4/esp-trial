// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:23:00 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_4 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA32/v_gates/mac_DECODE_4U_5_4.v
// Design      : mac_DECODE_4U_5_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_DECODE_4U_5_4
   (in1,
    out1);
  input [1:0]in1;
  output [3:0]out1;

  wire [1:0]in1;
  wire [3:0]out1;

  (* SOFT_HLUTNM = "soft_lutpair2056" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out1[0]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .O(out1[0]));
  (* SOFT_HLUTNM = "soft_lutpair2056" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[1]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .O(out1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2057" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[2]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .O(out1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2057" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out1[3]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .O(out1[3]));
endmodule
