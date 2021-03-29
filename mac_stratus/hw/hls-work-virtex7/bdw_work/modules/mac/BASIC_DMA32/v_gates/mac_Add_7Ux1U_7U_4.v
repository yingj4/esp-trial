// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:22:16 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_10 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA32/v_gates/mac_Add_7Ux1U_7U_4.v
// Design      : mac_Add_7Ux1U_7U_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_Add_7Ux1U_7U_4
   (in2,
    in1,
    out1);
  input [6:0]in2;
  input in1;
  output [6:0]out1;

  wire in1;
  wire [6:0]in2;
  wire [6:0]out1;
  wire \out1[6]_INST_0_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out1[0]_INST_0 
       (.I0(in2[0]),
        .I1(in1),
        .O(out1[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out1[1]_INST_0 
       (.I0(in2[0]),
        .I1(in1),
        .I2(in2[1]),
        .O(out1[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \out1[2]_INST_0 
       (.I0(in2[1]),
        .I1(in2[0]),
        .I2(in1),
        .I3(in2[2]),
        .O(out1[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \out1[3]_INST_0 
       (.I0(in2[1]),
        .I1(in2[0]),
        .I2(in1),
        .I3(in2[2]),
        .I4(in2[3]),
        .O(out1[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out1[4]_INST_0 
       (.I0(in2[2]),
        .I1(in1),
        .I2(in2[0]),
        .I3(in2[1]),
        .I4(in2[3]),
        .I5(in2[4]),
        .O(out1[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out1[5]_INST_0 
       (.I0(\out1[6]_INST_0_i_1_n_0 ),
        .I1(in2[5]),
        .O(out1[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out1[6]_INST_0 
       (.I0(\out1[6]_INST_0_i_1_n_0 ),
        .I1(in2[5]),
        .I2(in2[6]),
        .O(out1[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \out1[6]_INST_0_i_1 
       (.I0(in2[4]),
        .I1(in2[2]),
        .I2(in1),
        .I3(in2[0]),
        .I4(in2[1]),
        .I5(in2[3]),
        .O(\out1[6]_INST_0_i_1_n_0 ));
endmodule
