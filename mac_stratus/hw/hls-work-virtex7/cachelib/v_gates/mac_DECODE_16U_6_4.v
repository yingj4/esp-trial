// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:22:59 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_3 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA32/v_gates/mac_DECODE_16U_6_4.v
// Design      : mac_DECODE_16U_6_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_DECODE_16U_6_4
   (in1,
    out1);
  input [3:0]in1;
  output [15:0]out1;

  wire [3:0]in1;
  wire [15:0]out1;

  (* SOFT_HLUTNM = "soft_lutpair2051" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out1[0]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[0]));
  (* SOFT_HLUTNM = "soft_lutpair2055" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \out1[10]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[10]));
  (* SOFT_HLUTNM = "soft_lutpair2048" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \out1[11]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[11]));
  (* SOFT_HLUTNM = "soft_lutpair2051" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \out1[12]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[12]));
  (* SOFT_HLUTNM = "soft_lutpair2050" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \out1[13]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(out1[13]));
  (* SOFT_HLUTNM = "soft_lutpair2050" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \out1[14]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(out1[14]));
  (* SOFT_HLUTNM = "soft_lutpair2048" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \out1[15]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[15]));
  (* SOFT_HLUTNM = "soft_lutpair2052" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \out1[1]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2052" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \out1[2]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2049" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \out1[3]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2053" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \out1[4]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[4]));
  (* SOFT_HLUTNM = "soft_lutpair2053" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \out1[5]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[5]));
  (* SOFT_HLUTNM = "soft_lutpair2054" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \out1[6]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(out1[6]));
  (* SOFT_HLUTNM = "soft_lutpair2049" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \out1[7]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[7]));
  (* SOFT_HLUTNM = "soft_lutpair2054" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \out1[8]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(out1[8]));
  (* SOFT_HLUTNM = "soft_lutpair2055" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \out1[9]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[9]));
endmodule

