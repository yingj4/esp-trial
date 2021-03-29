// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:22:08 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_1 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA32/v_gates/mac_N_Muxb_1_2_4_4.v
// Design      : mac_N_Muxb_1_2_4_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_N_Muxb_1_2_4_4
   (in3,
    in2,
    ctrl1,
    out1);
  input in3;
  input in2;
  input ctrl1;
  output out1;

  wire ctrl1;
  wire in2;
  wire in3;
  wire out1;

  LUT3 #(
    .INIT(8'hB8)) 
    out1_INST_0
       (.I0(in2),
        .I1(ctrl1),
        .I2(in3),
        .O(out1));
endmodule
