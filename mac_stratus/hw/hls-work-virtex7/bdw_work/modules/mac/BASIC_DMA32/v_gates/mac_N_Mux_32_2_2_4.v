// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:22:17 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_11 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA32/v_gates/mac_N_Mux_32_2_2_4.v
// Design      : mac_N_Mux_32_2_2_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_N_Mux_32_2_2_4
   (in2,
    ctrl1,
    out1);
  input [31:0]in2;
  input ctrl1;
  output [31:0]out1;

  wire ctrl1;
  wire [31:0]in2;
  wire [31:0]out1;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[0]_INST_0 
       (.I0(ctrl1),
        .I1(in2[0]),
        .O(out1[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[10]_INST_0 
       (.I0(ctrl1),
        .I1(in2[10]),
        .O(out1[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[11]_INST_0 
       (.I0(in2[11]),
        .I1(ctrl1),
        .O(out1[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[12]_INST_0 
       (.I0(ctrl1),
        .I1(in2[12]),
        .O(out1[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[13]_INST_0 
       (.I0(in2[13]),
        .I1(ctrl1),
        .O(out1[13]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[14]_INST_0 
       (.I0(ctrl1),
        .I1(in2[14]),
        .O(out1[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[15]_INST_0 
       (.I0(in2[15]),
        .I1(ctrl1),
        .O(out1[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[16]_INST_0 
       (.I0(ctrl1),
        .I1(in2[16]),
        .O(out1[16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[17]_INST_0 
       (.I0(in2[17]),
        .I1(ctrl1),
        .O(out1[17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[18]_INST_0 
       (.I0(ctrl1),
        .I1(in2[18]),
        .O(out1[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[19]_INST_0 
       (.I0(in2[19]),
        .I1(ctrl1),
        .O(out1[19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[1]_INST_0 
       (.I0(in2[1]),
        .I1(ctrl1),
        .O(out1[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[20]_INST_0 
       (.I0(ctrl1),
        .I1(in2[20]),
        .O(out1[20]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[21]_INST_0 
       (.I0(in2[21]),
        .I1(ctrl1),
        .O(out1[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[22]_INST_0 
       (.I0(ctrl1),
        .I1(in2[22]),
        .O(out1[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[23]_INST_0 
       (.I0(in2[23]),
        .I1(ctrl1),
        .O(out1[23]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[24]_INST_0 
       (.I0(ctrl1),
        .I1(in2[24]),
        .O(out1[24]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[25]_INST_0 
       (.I0(in2[25]),
        .I1(ctrl1),
        .O(out1[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[26]_INST_0 
       (.I0(ctrl1),
        .I1(in2[26]),
        .O(out1[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[27]_INST_0 
       (.I0(in2[27]),
        .I1(ctrl1),
        .O(out1[27]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[28]_INST_0 
       (.I0(ctrl1),
        .I1(in2[28]),
        .O(out1[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[29]_INST_0 
       (.I0(in2[29]),
        .I1(ctrl1),
        .O(out1[29]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[2]_INST_0 
       (.I0(ctrl1),
        .I1(in2[2]),
        .O(out1[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[30]_INST_0 
       (.I0(ctrl1),
        .I1(in2[30]),
        .O(out1[30]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[31]_INST_0 
       (.I0(in2[31]),
        .I1(ctrl1),
        .O(out1[31]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[3]_INST_0 
       (.I0(in2[3]),
        .I1(ctrl1),
        .O(out1[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[4]_INST_0 
       (.I0(ctrl1),
        .I1(in2[4]),
        .O(out1[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[5]_INST_0 
       (.I0(in2[5]),
        .I1(ctrl1),
        .O(out1[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[6]_INST_0 
       (.I0(ctrl1),
        .I1(in2[6]),
        .O(out1[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[7]_INST_0 
       (.I0(in2[7]),
        .I1(ctrl1),
        .O(out1[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \out1[8]_INST_0 
       (.I0(ctrl1),
        .I1(in2[8]),
        .O(out1[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out1[9]_INST_0 
       (.I0(in2[9]),
        .I1(ctrl1),
        .O(out1[9]));
endmodule
