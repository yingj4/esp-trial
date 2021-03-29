// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:22:18 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_13 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA32/v_gates/mac_Equal_32Ux32U_1U_4.v
// Design      : mac_Equal_32Ux32U_1U_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_Equal_32Ux32U_1U_4
   (in2,
    in1,
    out1);
  input [31:0]in2;
  input [31:0]in1;
  output out1;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]in1;
  wire [31:0]in2;
  wire out1;
  wire out1_INST_0_i_10_n_0;
  wire out1_INST_0_i_11_n_0;
  wire out1_INST_0_i_12_n_0;
  wire out1_INST_0_i_13_n_0;
  wire out1_INST_0_i_1_n_0;
  wire out1_INST_0_i_1_n_1;
  wire out1_INST_0_i_1_n_2;
  wire out1_INST_0_i_1_n_3;
  wire out1_INST_0_i_2_n_0;
  wire out1_INST_0_i_3_n_0;
  wire out1_INST_0_i_4_n_0;
  wire out1_INST_0_i_5_n_0;
  wire out1_INST_0_i_5_n_1;
  wire out1_INST_0_i_5_n_2;
  wire out1_INST_0_i_5_n_3;
  wire out1_INST_0_i_6_n_0;
  wire out1_INST_0_i_7_n_0;
  wire out1_INST_0_i_8_n_0;
  wire out1_INST_0_i_9_n_0;
  wire out1_INST_0_n_2;
  wire out1_INST_0_n_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 out1_INST_0
       (.CI(out1_INST_0_i_1_n_0),
        .CO({out1,out1_INST_0_n_2,out1_INST_0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,out1_INST_0_i_2_n_0,out1_INST_0_i_3_n_0,out1_INST_0_i_4_n_0}));
  CARRY4 out1_INST_0_i_1
       (.CI(out1_INST_0_i_5_n_0),
        .CO({out1_INST_0_i_1_n_0,out1_INST_0_i_1_n_1,out1_INST_0_i_1_n_2,out1_INST_0_i_1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({out1_INST_0_i_6_n_0,out1_INST_0_i_7_n_0,out1_INST_0_i_8_n_0,out1_INST_0_i_9_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_10
       (.I0(in1[9]),
        .I1(in2[9]),
        .I2(in2[11]),
        .I3(in1[11]),
        .I4(in2[10]),
        .I5(in1[10]),
        .O(out1_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_11
       (.I0(in1[6]),
        .I1(in2[6]),
        .I2(in2[8]),
        .I3(in1[8]),
        .I4(in2[7]),
        .I5(in1[7]),
        .O(out1_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_12
       (.I0(in1[3]),
        .I1(in2[3]),
        .I2(in2[5]),
        .I3(in1[5]),
        .I4(in2[4]),
        .I5(in1[4]),
        .O(out1_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_13
       (.I0(in1[0]),
        .I1(in2[0]),
        .I2(in2[2]),
        .I3(in1[2]),
        .I4(in2[1]),
        .I5(in1[1]),
        .O(out1_INST_0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out1_INST_0_i_2
       (.I0(in1[30]),
        .I1(in2[30]),
        .I2(in1[31]),
        .I3(in2[31]),
        .O(out1_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_3
       (.I0(in1[27]),
        .I1(in2[27]),
        .I2(in2[29]),
        .I3(in1[29]),
        .I4(in2[28]),
        .I5(in1[28]),
        .O(out1_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_4
       (.I0(in1[24]),
        .I1(in2[24]),
        .I2(in2[26]),
        .I3(in1[26]),
        .I4(in2[25]),
        .I5(in1[25]),
        .O(out1_INST_0_i_4_n_0));
  CARRY4 out1_INST_0_i_5
       (.CI(\<const0> ),
        .CO({out1_INST_0_i_5_n_0,out1_INST_0_i_5_n_1,out1_INST_0_i_5_n_2,out1_INST_0_i_5_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({out1_INST_0_i_10_n_0,out1_INST_0_i_11_n_0,out1_INST_0_i_12_n_0,out1_INST_0_i_13_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_6
       (.I0(in1[21]),
        .I1(in2[21]),
        .I2(in2[23]),
        .I3(in1[23]),
        .I4(in2[22]),
        .I5(in1[22]),
        .O(out1_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_7
       (.I0(in1[18]),
        .I1(in2[18]),
        .I2(in2[20]),
        .I3(in1[20]),
        .I4(in2[19]),
        .I5(in1[19]),
        .O(out1_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_8
       (.I0(in1[15]),
        .I1(in2[15]),
        .I2(in2[17]),
        .I3(in1[17]),
        .I4(in2[16]),
        .I5(in1[16]),
        .O(out1_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_9
       (.I0(in1[12]),
        .I1(in2[12]),
        .I2(in2[14]),
        .I3(in1[14]),
        .I4(in2[13]),
        .I5(in1[13]),
        .O(out1_INST_0_i_9_n_0));
endmodule

