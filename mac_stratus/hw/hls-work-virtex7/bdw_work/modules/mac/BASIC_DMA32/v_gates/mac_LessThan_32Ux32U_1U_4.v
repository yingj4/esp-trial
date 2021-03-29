// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:22:14 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_8 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA32/v_gates/mac_LessThan_32Ux32U_1U_4.v
// Design      : mac_LessThan_32Ux32U_1U_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_LessThan_32Ux32U_1U_4
   (in2,
    in1,
    out1);
  input [31:0]in2;
  input [31:0]in1;
  output out1;

  wire \<const0> ;
  wire [31:0]in1;
  wire [31:0]in2;
  wire out1;
  wire out1_INST_0_i_10_n_0;
  wire out1_INST_0_i_10_n_1;
  wire out1_INST_0_i_10_n_2;
  wire out1_INST_0_i_10_n_3;
  wire out1_INST_0_i_11_n_0;
  wire out1_INST_0_i_12_n_0;
  wire out1_INST_0_i_13_n_0;
  wire out1_INST_0_i_14_n_0;
  wire out1_INST_0_i_15_n_0;
  wire out1_INST_0_i_16_n_0;
  wire out1_INST_0_i_17_n_0;
  wire out1_INST_0_i_18_n_0;
  wire out1_INST_0_i_19_n_0;
  wire out1_INST_0_i_19_n_1;
  wire out1_INST_0_i_19_n_2;
  wire out1_INST_0_i_19_n_3;
  wire out1_INST_0_i_1_n_0;
  wire out1_INST_0_i_1_n_1;
  wire out1_INST_0_i_1_n_2;
  wire out1_INST_0_i_1_n_3;
  wire out1_INST_0_i_20_n_0;
  wire out1_INST_0_i_21_n_0;
  wire out1_INST_0_i_22_n_0;
  wire out1_INST_0_i_23_n_0;
  wire out1_INST_0_i_24_n_0;
  wire out1_INST_0_i_25_n_0;
  wire out1_INST_0_i_26_n_0;
  wire out1_INST_0_i_27_n_0;
  wire out1_INST_0_i_28_n_0;
  wire out1_INST_0_i_29_n_0;
  wire out1_INST_0_i_2_n_0;
  wire out1_INST_0_i_30_n_0;
  wire out1_INST_0_i_31_n_0;
  wire out1_INST_0_i_32_n_0;
  wire out1_INST_0_i_33_n_0;
  wire out1_INST_0_i_34_n_0;
  wire out1_INST_0_i_35_n_0;
  wire out1_INST_0_i_3_n_0;
  wire out1_INST_0_i_4_n_0;
  wire out1_INST_0_i_5_n_0;
  wire out1_INST_0_i_6_n_0;
  wire out1_INST_0_i_7_n_0;
  wire out1_INST_0_i_8_n_0;
  wire out1_INST_0_i_9_n_0;
  wire out1_INST_0_n_1;
  wire out1_INST_0_n_2;
  wire out1_INST_0_n_3;

  GND GND
       (.G(\<const0> ));
  CARRY4 out1_INST_0
       (.CI(out1_INST_0_i_1_n_0),
        .CO({out1,out1_INST_0_n_1,out1_INST_0_n_2,out1_INST_0_n_3}),
        .CYINIT(\<const0> ),
        .DI({out1_INST_0_i_2_n_0,out1_INST_0_i_3_n_0,out1_INST_0_i_4_n_0,out1_INST_0_i_5_n_0}),
        .S({out1_INST_0_i_6_n_0,out1_INST_0_i_7_n_0,out1_INST_0_i_8_n_0,out1_INST_0_i_9_n_0}));
  CARRY4 out1_INST_0_i_1
       (.CI(out1_INST_0_i_10_n_0),
        .CO({out1_INST_0_i_1_n_0,out1_INST_0_i_1_n_1,out1_INST_0_i_1_n_2,out1_INST_0_i_1_n_3}),
        .CYINIT(\<const0> ),
        .DI({out1_INST_0_i_11_n_0,out1_INST_0_i_12_n_0,out1_INST_0_i_13_n_0,out1_INST_0_i_14_n_0}),
        .S({out1_INST_0_i_15_n_0,out1_INST_0_i_16_n_0,out1_INST_0_i_17_n_0,out1_INST_0_i_18_n_0}));
  CARRY4 out1_INST_0_i_10
       (.CI(out1_INST_0_i_19_n_0),
        .CO({out1_INST_0_i_10_n_0,out1_INST_0_i_10_n_1,out1_INST_0_i_10_n_2,out1_INST_0_i_10_n_3}),
        .CYINIT(\<const0> ),
        .DI({out1_INST_0_i_20_n_0,out1_INST_0_i_21_n_0,out1_INST_0_i_22_n_0,out1_INST_0_i_23_n_0}),
        .S({out1_INST_0_i_24_n_0,out1_INST_0_i_25_n_0,out1_INST_0_i_26_n_0,out1_INST_0_i_27_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_11
       (.I0(in1[22]),
        .I1(in2[22]),
        .I2(in2[23]),
        .I3(in1[23]),
        .O(out1_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_12
       (.I0(in1[20]),
        .I1(in2[20]),
        .I2(in2[21]),
        .I3(in1[21]),
        .O(out1_INST_0_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_13
       (.I0(in1[18]),
        .I1(in2[18]),
        .I2(in2[19]),
        .I3(in1[19]),
        .O(out1_INST_0_i_13_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_14
       (.I0(in1[16]),
        .I1(in2[16]),
        .I2(in2[17]),
        .I3(in1[17]),
        .O(out1_INST_0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_15
       (.I0(in1[22]),
        .I1(in2[22]),
        .I2(in1[23]),
        .I3(in2[23]),
        .O(out1_INST_0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_16
       (.I0(in1[20]),
        .I1(in2[20]),
        .I2(in1[21]),
        .I3(in2[21]),
        .O(out1_INST_0_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_17
       (.I0(in1[18]),
        .I1(in2[18]),
        .I2(in1[19]),
        .I3(in2[19]),
        .O(out1_INST_0_i_17_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_18
       (.I0(in1[16]),
        .I1(in2[16]),
        .I2(in1[17]),
        .I3(in2[17]),
        .O(out1_INST_0_i_18_n_0));
  CARRY4 out1_INST_0_i_19
       (.CI(\<const0> ),
        .CO({out1_INST_0_i_19_n_0,out1_INST_0_i_19_n_1,out1_INST_0_i_19_n_2,out1_INST_0_i_19_n_3}),
        .CYINIT(\<const0> ),
        .DI({out1_INST_0_i_28_n_0,out1_INST_0_i_29_n_0,out1_INST_0_i_30_n_0,out1_INST_0_i_31_n_0}),
        .S({out1_INST_0_i_32_n_0,out1_INST_0_i_33_n_0,out1_INST_0_i_34_n_0,out1_INST_0_i_35_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_2
       (.I0(in1[30]),
        .I1(in2[30]),
        .I2(in2[31]),
        .I3(in1[31]),
        .O(out1_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_20
       (.I0(in1[14]),
        .I1(in2[14]),
        .I2(in2[15]),
        .I3(in1[15]),
        .O(out1_INST_0_i_20_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_21
       (.I0(in1[12]),
        .I1(in2[12]),
        .I2(in2[13]),
        .I3(in1[13]),
        .O(out1_INST_0_i_21_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_22
       (.I0(in1[10]),
        .I1(in2[10]),
        .I2(in2[11]),
        .I3(in1[11]),
        .O(out1_INST_0_i_22_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_23
       (.I0(in1[8]),
        .I1(in2[8]),
        .I2(in2[9]),
        .I3(in1[9]),
        .O(out1_INST_0_i_23_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_24
       (.I0(in1[14]),
        .I1(in2[14]),
        .I2(in1[15]),
        .I3(in2[15]),
        .O(out1_INST_0_i_24_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_25
       (.I0(in1[12]),
        .I1(in2[12]),
        .I2(in1[13]),
        .I3(in2[13]),
        .O(out1_INST_0_i_25_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_26
       (.I0(in1[10]),
        .I1(in2[10]),
        .I2(in1[11]),
        .I3(in2[11]),
        .O(out1_INST_0_i_26_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_27
       (.I0(in1[8]),
        .I1(in2[8]),
        .I2(in1[9]),
        .I3(in2[9]),
        .O(out1_INST_0_i_27_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_28
       (.I0(in1[6]),
        .I1(in2[6]),
        .I2(in2[7]),
        .I3(in1[7]),
        .O(out1_INST_0_i_28_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_29
       (.I0(in1[4]),
        .I1(in2[4]),
        .I2(in2[5]),
        .I3(in1[5]),
        .O(out1_INST_0_i_29_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_3
       (.I0(in1[28]),
        .I1(in2[28]),
        .I2(in2[29]),
        .I3(in1[29]),
        .O(out1_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_30
       (.I0(in1[2]),
        .I1(in2[2]),
        .I2(in2[3]),
        .I3(in1[3]),
        .O(out1_INST_0_i_30_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_31
       (.I0(in1[0]),
        .I1(in2[0]),
        .I2(in2[1]),
        .I3(in1[1]),
        .O(out1_INST_0_i_31_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_32
       (.I0(in1[6]),
        .I1(in2[6]),
        .I2(in1[7]),
        .I3(in2[7]),
        .O(out1_INST_0_i_32_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_33
       (.I0(in1[4]),
        .I1(in2[4]),
        .I2(in1[5]),
        .I3(in2[5]),
        .O(out1_INST_0_i_33_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_34
       (.I0(in1[2]),
        .I1(in2[2]),
        .I2(in1[3]),
        .I3(in2[3]),
        .O(out1_INST_0_i_34_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_35
       (.I0(in1[0]),
        .I1(in2[0]),
        .I2(in1[1]),
        .I3(in2[1]),
        .O(out1_INST_0_i_35_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_4
       (.I0(in1[26]),
        .I1(in2[26]),
        .I2(in2[27]),
        .I3(in1[27]),
        .O(out1_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    out1_INST_0_i_5
       (.I0(in1[24]),
        .I1(in2[24]),
        .I2(in2[25]),
        .I3(in1[25]),
        .O(out1_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_6
       (.I0(in1[30]),
        .I1(in2[30]),
        .I2(in1[31]),
        .I3(in2[31]),
        .O(out1_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_7
       (.I0(in1[28]),
        .I1(in2[28]),
        .I2(in1[29]),
        .I3(in2[29]),
        .O(out1_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_8
       (.I0(in1[26]),
        .I1(in2[26]),
        .I2(in1[27]),
        .I3(in2[27]),
        .O(out1_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_9
       (.I0(in1[24]),
        .I1(in2[24]),
        .I2(in1[25]),
        .I3(in2[25]),
        .O(out1_INST_0_i_9_n_0));
endmodule
