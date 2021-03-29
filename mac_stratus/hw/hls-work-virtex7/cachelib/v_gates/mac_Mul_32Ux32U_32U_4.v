// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Mar 28 16:22:33 2021
// Host        : mojave.cs.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -cell inst_29 -force
//               /scratch/projects/yingj4/esp/accelerators/stratus_hls/mac_stratus/hw/hls-work-virtex7/bdw_work/modules/mac/BASIC_DMA32/v_gates/mac_Mul_32Ux32U_32U_4.v
// Design      : mac_Mul_32Ux32U_32U_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7v2000tflg1925-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module mac_Mul_32Ux32U_32U_4
   (in2,
    in1,
    out1);
  input [31:0]in2;
  input [31:0]in1;
  output [31:0]out1;

  wire \<const0> ;
  wire \<const1> ;
  wire GND_2;
  wire VCC_2;
  wire asc001__0_n_58;
  wire asc001__0_n_59;
  wire asc001__0_n_60;
  wire asc001__0_n_61;
  wire asc001__0_n_62;
  wire asc001__0_n_63;
  wire asc001__0_n_64;
  wire asc001__0_n_65;
  wire asc001__0_n_66;
  wire asc001__0_n_67;
  wire asc001__0_n_68;
  wire asc001__0_n_69;
  wire asc001__0_n_70;
  wire asc001__0_n_71;
  wire asc001__0_n_72;
  wire asc001__0_n_73;
  wire asc001__0_n_74;
  wire asc001__0_n_75;
  wire asc001__0_n_76;
  wire asc001__0_n_77;
  wire asc001__0_n_78;
  wire asc001__0_n_79;
  wire asc001__0_n_80;
  wire asc001__0_n_81;
  wire asc001__0_n_82;
  wire asc001__0_n_83;
  wire asc001__0_n_84;
  wire asc001__0_n_85;
  wire asc001__0_n_86;
  wire asc001__0_n_87;
  wire asc001__0_n_88;
  wire asc001__0_n_89;
  wire asc001__1_n_100;
  wire asc001__1_n_101;
  wire asc001__1_n_102;
  wire asc001__1_n_103;
  wire asc001__1_n_104;
  wire asc001__1_n_105;
  wire asc001__1_n_58;
  wire asc001__1_n_59;
  wire asc001__1_n_60;
  wire asc001__1_n_61;
  wire asc001__1_n_62;
  wire asc001__1_n_63;
  wire asc001__1_n_64;
  wire asc001__1_n_65;
  wire asc001__1_n_66;
  wire asc001__1_n_67;
  wire asc001__1_n_68;
  wire asc001__1_n_69;
  wire asc001__1_n_70;
  wire asc001__1_n_71;
  wire asc001__1_n_72;
  wire asc001__1_n_73;
  wire asc001__1_n_74;
  wire asc001__1_n_75;
  wire asc001__1_n_76;
  wire asc001__1_n_77;
  wire asc001__1_n_78;
  wire asc001__1_n_79;
  wire asc001__1_n_80;
  wire asc001__1_n_81;
  wire asc001__1_n_82;
  wire asc001__1_n_83;
  wire asc001__1_n_84;
  wire asc001__1_n_85;
  wire asc001__1_n_86;
  wire asc001__1_n_87;
  wire asc001__1_n_88;
  wire asc001__1_n_89;
  wire asc001__1_n_90;
  wire asc001__1_n_91;
  wire asc001__1_n_92;
  wire asc001__1_n_93;
  wire asc001__1_n_94;
  wire asc001__1_n_95;
  wire asc001__1_n_96;
  wire asc001__1_n_97;
  wire asc001__1_n_98;
  wire asc001__1_n_99;
  wire asc001_n_100;
  wire asc001_n_101;
  wire asc001_n_102;
  wire asc001_n_103;
  wire asc001_n_104;
  wire asc001_n_105;
  wire asc001_n_58;
  wire asc001_n_59;
  wire asc001_n_60;
  wire asc001_n_61;
  wire asc001_n_62;
  wire asc001_n_63;
  wire asc001_n_64;
  wire asc001_n_65;
  wire asc001_n_66;
  wire asc001_n_67;
  wire asc001_n_68;
  wire asc001_n_69;
  wire asc001_n_70;
  wire asc001_n_71;
  wire asc001_n_72;
  wire asc001_n_73;
  wire asc001_n_74;
  wire asc001_n_75;
  wire asc001_n_76;
  wire asc001_n_77;
  wire asc001_n_78;
  wire asc001_n_79;
  wire asc001_n_80;
  wire asc001_n_81;
  wire asc001_n_82;
  wire asc001_n_83;
  wire asc001_n_84;
  wire asc001_n_85;
  wire asc001_n_86;
  wire asc001_n_87;
  wire asc001_n_88;
  wire asc001_n_89;
  wire asc001_n_90;
  wire asc001_n_91;
  wire asc001_n_92;
  wire asc001_n_93;
  wire asc001_n_94;
  wire asc001_n_95;
  wire asc001_n_96;
  wire asc001_n_97;
  wire asc001_n_98;
  wire asc001_n_99;
  wire [31:0]in1;
  wire [31:0]in2;
  wire [31:0]out1;
  wire \out1[16]_INST_0_i_1_n_0 ;
  wire \out1[16]_INST_0_i_2_n_0 ;
  wire \out1[16]_INST_0_i_3_n_0 ;
  wire \out1[16]_INST_0_n_0 ;
  wire \out1[16]_INST_0_n_1 ;
  wire \out1[16]_INST_0_n_2 ;
  wire \out1[16]_INST_0_n_3 ;
  wire \out1[20]_INST_0_i_1_n_0 ;
  wire \out1[20]_INST_0_i_2_n_0 ;
  wire \out1[20]_INST_0_i_3_n_0 ;
  wire \out1[20]_INST_0_i_4_n_0 ;
  wire \out1[20]_INST_0_n_0 ;
  wire \out1[20]_INST_0_n_1 ;
  wire \out1[20]_INST_0_n_2 ;
  wire \out1[20]_INST_0_n_3 ;
  wire \out1[24]_INST_0_i_1_n_0 ;
  wire \out1[24]_INST_0_i_2_n_0 ;
  wire \out1[24]_INST_0_i_3_n_0 ;
  wire \out1[24]_INST_0_i_4_n_0 ;
  wire \out1[24]_INST_0_n_0 ;
  wire \out1[24]_INST_0_n_1 ;
  wire \out1[24]_INST_0_n_2 ;
  wire \out1[24]_INST_0_n_3 ;
  wire \out1[28]_INST_0_i_1_n_0 ;
  wire \out1[28]_INST_0_i_2_n_0 ;
  wire \out1[28]_INST_0_i_3_n_0 ;
  wire \out1[28]_INST_0_i_4_n_0 ;
  wire \out1[28]_INST_0_n_1 ;
  wire \out1[28]_INST_0_n_2 ;
  wire \out1[28]_INST_0_n_3 ;

  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    asc001
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,in2[16:0]}),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\<const0> ,\<const0> ,in1[31:17]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(\<const0> ),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(\<const0> ),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({asc001_n_58,asc001_n_59,asc001_n_60,asc001_n_61,asc001_n_62,asc001_n_63,asc001_n_64,asc001_n_65,asc001_n_66,asc001_n_67,asc001_n_68,asc001_n_69,asc001_n_70,asc001_n_71,asc001_n_72,asc001_n_73,asc001_n_74,asc001_n_75,asc001_n_76,asc001_n_77,asc001_n_78,asc001_n_79,asc001_n_80,asc001_n_81,asc001_n_82,asc001_n_83,asc001_n_84,asc001_n_85,asc001_n_86,asc001_n_87,asc001_n_88,asc001_n_89,asc001_n_90,asc001_n_91,asc001_n_92,asc001_n_93,asc001_n_94,asc001_n_95,asc001_n_96,asc001_n_97,asc001_n_98,asc001_n_99,asc001_n_100,asc001_n_101,asc001_n_102,asc001_n_103,asc001_n_104,asc001_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    asc001__0
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,in1[16:0]}),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,in2[16:0]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(\<const0> ),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(\<const0> ),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({asc001__0_n_58,asc001__0_n_59,asc001__0_n_60,asc001__0_n_61,asc001__0_n_62,asc001__0_n_63,asc001__0_n_64,asc001__0_n_65,asc001__0_n_66,asc001__0_n_67,asc001__0_n_68,asc001__0_n_69,asc001__0_n_70,asc001__0_n_71,asc001__0_n_72,asc001__0_n_73,asc001__0_n_74,asc001__0_n_75,asc001__0_n_76,asc001__0_n_77,asc001__0_n_78,asc001__0_n_79,asc001__0_n_80,asc001__0_n_81,asc001__0_n_82,asc001__0_n_83,asc001__0_n_84,asc001__0_n_85,asc001__0_n_86,asc001__0_n_87,asc001__0_n_88,asc001__0_n_89,out1[15:0]}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    asc001__1
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,in1[16:0]}),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\<const0> ,\<const0> ,in2[31:17]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_58,asc001__0_n_59,asc001__0_n_60,asc001__0_n_61,asc001__0_n_62,asc001__0_n_63,asc001__0_n_64,asc001__0_n_65,asc001__0_n_66,asc001__0_n_67,asc001__0_n_68,asc001__0_n_69,asc001__0_n_70,asc001__0_n_71,asc001__0_n_72,asc001__0_n_73,asc001__0_n_74,asc001__0_n_75,asc001__0_n_76,asc001__0_n_77,asc001__0_n_78,asc001__0_n_79,asc001__0_n_80,asc001__0_n_81,asc001__0_n_82,asc001__0_n_83,asc001__0_n_84,asc001__0_n_85,asc001__0_n_86,asc001__0_n_87,asc001__0_n_88}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(\<const0> ),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(\<const0> ),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({asc001__1_n_58,asc001__1_n_59,asc001__1_n_60,asc001__1_n_61,asc001__1_n_62,asc001__1_n_63,asc001__1_n_64,asc001__1_n_65,asc001__1_n_66,asc001__1_n_67,asc001__1_n_68,asc001__1_n_69,asc001__1_n_70,asc001__1_n_71,asc001__1_n_72,asc001__1_n_73,asc001__1_n_74,asc001__1_n_75,asc001__1_n_76,asc001__1_n_77,asc001__1_n_78,asc001__1_n_79,asc001__1_n_80,asc001__1_n_81,asc001__1_n_82,asc001__1_n_83,asc001__1_n_84,asc001__1_n_85,asc001__1_n_86,asc001__1_n_87,asc001__1_n_88,asc001__1_n_89,asc001__1_n_90,asc001__1_n_91,asc001__1_n_92,asc001__1_n_93,asc001__1_n_94,asc001__1_n_95,asc001__1_n_96,asc001__1_n_97,asc001__1_n_98,asc001__1_n_99,asc001__1_n_100,asc001__1_n_101,asc001__1_n_102,asc001__1_n_103,asc001__1_n_104,asc001__1_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  CARRY4 \out1[16]_INST_0 
       (.CI(\<const0> ),
        .CO({\out1[16]_INST_0_n_0 ,\out1[16]_INST_0_n_1 ,\out1[16]_INST_0_n_2 ,\out1[16]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({asc001__1_n_103,asc001__1_n_104,asc001__1_n_105,\<const0> }),
        .O(out1[19:16]),
        .S({\out1[16]_INST_0_i_1_n_0 ,\out1[16]_INST_0_i_2_n_0 ,\out1[16]_INST_0_i_3_n_0 ,asc001__0_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[16]_INST_0_i_1 
       (.I0(asc001__1_n_103),
        .I1(asc001_n_103),
        .O(\out1[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[16]_INST_0_i_2 
       (.I0(asc001__1_n_104),
        .I1(asc001_n_104),
        .O(\out1[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[16]_INST_0_i_3 
       (.I0(asc001__1_n_105),
        .I1(asc001_n_105),
        .O(\out1[16]_INST_0_i_3_n_0 ));
  CARRY4 \out1[20]_INST_0 
       (.CI(\out1[16]_INST_0_n_0 ),
        .CO({\out1[20]_INST_0_n_0 ,\out1[20]_INST_0_n_1 ,\out1[20]_INST_0_n_2 ,\out1[20]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({asc001__1_n_99,asc001__1_n_100,asc001__1_n_101,asc001__1_n_102}),
        .O(out1[23:20]),
        .S({\out1[20]_INST_0_i_1_n_0 ,\out1[20]_INST_0_i_2_n_0 ,\out1[20]_INST_0_i_3_n_0 ,\out1[20]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[20]_INST_0_i_1 
       (.I0(asc001__1_n_99),
        .I1(asc001_n_99),
        .O(\out1[20]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[20]_INST_0_i_2 
       (.I0(asc001__1_n_100),
        .I1(asc001_n_100),
        .O(\out1[20]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[20]_INST_0_i_3 
       (.I0(asc001__1_n_101),
        .I1(asc001_n_101),
        .O(\out1[20]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[20]_INST_0_i_4 
       (.I0(asc001__1_n_102),
        .I1(asc001_n_102),
        .O(\out1[20]_INST_0_i_4_n_0 ));
  CARRY4 \out1[24]_INST_0 
       (.CI(\out1[20]_INST_0_n_0 ),
        .CO({\out1[24]_INST_0_n_0 ,\out1[24]_INST_0_n_1 ,\out1[24]_INST_0_n_2 ,\out1[24]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({asc001__1_n_95,asc001__1_n_96,asc001__1_n_97,asc001__1_n_98}),
        .O(out1[27:24]),
        .S({\out1[24]_INST_0_i_1_n_0 ,\out1[24]_INST_0_i_2_n_0 ,\out1[24]_INST_0_i_3_n_0 ,\out1[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[24]_INST_0_i_1 
       (.I0(asc001__1_n_95),
        .I1(asc001_n_95),
        .O(\out1[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[24]_INST_0_i_2 
       (.I0(asc001__1_n_96),
        .I1(asc001_n_96),
        .O(\out1[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[24]_INST_0_i_3 
       (.I0(asc001__1_n_97),
        .I1(asc001_n_97),
        .O(\out1[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[24]_INST_0_i_4 
       (.I0(asc001__1_n_98),
        .I1(asc001_n_98),
        .O(\out1[24]_INST_0_i_4_n_0 ));
  CARRY4 \out1[28]_INST_0 
       (.CI(\out1[24]_INST_0_n_0 ),
        .CO({\out1[28]_INST_0_n_1 ,\out1[28]_INST_0_n_2 ,\out1[28]_INST_0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,asc001__1_n_92,asc001__1_n_93,asc001__1_n_94}),
        .O(out1[31:28]),
        .S({\out1[28]_INST_0_i_1_n_0 ,\out1[28]_INST_0_i_2_n_0 ,\out1[28]_INST_0_i_3_n_0 ,\out1[28]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[28]_INST_0_i_1 
       (.I0(asc001__1_n_91),
        .I1(asc001_n_91),
        .O(\out1[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[28]_INST_0_i_2 
       (.I0(asc001__1_n_92),
        .I1(asc001_n_92),
        .O(\out1[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[28]_INST_0_i_3 
       (.I0(asc001__1_n_93),
        .I1(asc001_n_93),
        .O(\out1[28]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[28]_INST_0_i_4 
       (.I0(asc001__1_n_94),
        .I1(asc001_n_94),
        .O(\out1[28]_INST_0_i_4_n_0 ));
endmodule

