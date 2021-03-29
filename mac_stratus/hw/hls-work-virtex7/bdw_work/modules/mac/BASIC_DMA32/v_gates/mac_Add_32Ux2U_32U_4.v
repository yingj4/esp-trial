// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:22:20 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_15 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA32/v_gates/mac_Add_32Ux2U_32U_4.v
// Design      : mac_Add_32Ux2U_32U_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_Add_32Ux2U_32U_4
   (in2,
    in1,
    out1);
  input [31:0]in2;
  input [1:0]in1;
  output [31:0]out1;

  wire \<const0> ;
  wire [1:0]in1;
  wire [31:0]in2;
  wire [31:0]out1;
  wire \out1[0]_INST_0_i_1_n_0 ;
  wire \out1[0]_INST_0_i_2_n_0 ;
  wire \out1[0]_INST_0_n_0 ;
  wire \out1[0]_INST_0_n_1 ;
  wire \out1[0]_INST_0_n_2 ;
  wire \out1[0]_INST_0_n_3 ;
  wire \out1[12]_INST_0_n_0 ;
  wire \out1[12]_INST_0_n_1 ;
  wire \out1[12]_INST_0_n_2 ;
  wire \out1[12]_INST_0_n_3 ;
  wire \out1[16]_INST_0_n_0 ;
  wire \out1[16]_INST_0_n_1 ;
  wire \out1[16]_INST_0_n_2 ;
  wire \out1[16]_INST_0_n_3 ;
  wire \out1[20]_INST_0_n_0 ;
  wire \out1[20]_INST_0_n_1 ;
  wire \out1[20]_INST_0_n_2 ;
  wire \out1[20]_INST_0_n_3 ;
  wire \out1[24]_INST_0_n_0 ;
  wire \out1[24]_INST_0_n_1 ;
  wire \out1[24]_INST_0_n_2 ;
  wire \out1[24]_INST_0_n_3 ;
  wire \out1[28]_INST_0_n_1 ;
  wire \out1[28]_INST_0_n_2 ;
  wire \out1[28]_INST_0_n_3 ;
  wire \out1[4]_INST_0_n_0 ;
  wire \out1[4]_INST_0_n_1 ;
  wire \out1[4]_INST_0_n_2 ;
  wire \out1[4]_INST_0_n_3 ;
  wire \out1[8]_INST_0_n_0 ;
  wire \out1[8]_INST_0_n_1 ;
  wire \out1[8]_INST_0_n_2 ;
  wire \out1[8]_INST_0_n_3 ;

  GND GND
       (.G(\<const0> ));
  CARRY4 \out1[0]_INST_0 
       (.CI(\<const0> ),
        .CO({\out1[0]_INST_0_n_0 ,\out1[0]_INST_0_n_1 ,\out1[0]_INST_0_n_2 ,\out1[0]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,in2[1:0]}),
        .O(out1[3:0]),
        .S({in2[3:2],\out1[0]_INST_0_i_1_n_0 ,\out1[0]_INST_0_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[0]_INST_0_i_1 
       (.I0(in2[1]),
        .I1(in1[1]),
        .O(\out1[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[0]_INST_0_i_2 
       (.I0(in2[0]),
        .I1(in1[0]),
        .O(\out1[0]_INST_0_i_2_n_0 ));
  CARRY4 \out1[12]_INST_0 
       (.CI(\out1[8]_INST_0_n_0 ),
        .CO({\out1[12]_INST_0_n_0 ,\out1[12]_INST_0_n_1 ,\out1[12]_INST_0_n_2 ,\out1[12]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(out1[15:12]),
        .S(in2[15:12]));
  CARRY4 \out1[16]_INST_0 
       (.CI(\out1[12]_INST_0_n_0 ),
        .CO({\out1[16]_INST_0_n_0 ,\out1[16]_INST_0_n_1 ,\out1[16]_INST_0_n_2 ,\out1[16]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(out1[19:16]),
        .S(in2[19:16]));
  CARRY4 \out1[20]_INST_0 
       (.CI(\out1[16]_INST_0_n_0 ),
        .CO({\out1[20]_INST_0_n_0 ,\out1[20]_INST_0_n_1 ,\out1[20]_INST_0_n_2 ,\out1[20]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(out1[23:20]),
        .S(in2[23:20]));
  CARRY4 \out1[24]_INST_0 
       (.CI(\out1[20]_INST_0_n_0 ),
        .CO({\out1[24]_INST_0_n_0 ,\out1[24]_INST_0_n_1 ,\out1[24]_INST_0_n_2 ,\out1[24]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(out1[27:24]),
        .S(in2[27:24]));
  CARRY4 \out1[28]_INST_0 
       (.CI(\out1[24]_INST_0_n_0 ),
        .CO({\out1[28]_INST_0_n_1 ,\out1[28]_INST_0_n_2 ,\out1[28]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(out1[31:28]),
        .S(in2[31:28]));
  CARRY4 \out1[4]_INST_0 
       (.CI(\out1[0]_INST_0_n_0 ),
        .CO({\out1[4]_INST_0_n_0 ,\out1[4]_INST_0_n_1 ,\out1[4]_INST_0_n_2 ,\out1[4]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(out1[7:4]),
        .S(in2[7:4]));
  CARRY4 \out1[8]_INST_0 
       (.CI(\out1[4]_INST_0_n_0 ),
        .CO({\out1[8]_INST_0_n_0 ,\out1[8]_INST_0_n_1 ,\out1[8]_INST_0_n_2 ,\out1[8]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(out1[11:8]),
        .S(in2[11:8]));
endmodule
