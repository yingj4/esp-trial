// Generated by stratus_vlg 19.22-s100  (92619.020517)
// Sun Mar 28 16:19:26 2021
// from ../../../..//memlib/c_parts/mac_plm_block_in_dma64.cc

`timescale 1ps / 1ps

      
///////////////////////////////////////////////////////////////////////////////
//
// Copyright (c) 2017 Cadence Design Systems, Inc. All rights reserved worldwide.
//
// The code contained herein is the proprietary and confidential information 
// of Cadence or its licensors, and is supplied subject to a previously 
// executed license and maintenance agreement between Cadence and customer. 
// This code is intended for use with Cadence high-level synthesis tools and 
// may not be used with other high-level synthesis tools. Permission is only 
// granted to distribute the code as indicated. Cadence grants permission for 
// customer to distribute a copy of this code to any partner to aid in designing 
// or verifying the customer's intellectual property, as long as such 
// distribution includes a restriction of no additional distributions from the 
// partner, unless the partner receives permission directly from Cadence.
//
// ALL CODE FURNISHED BY CADENCE IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
// KIND, AND CADENCE SPECIFICALLY DISCLAIMS ANY WARRANTY OF NONINFRINGEMENT, 
// FITNESS FOR A PARTICULAR PURPOSE OR MERCHANTABILITY. CADENCE SHALL NOT BE 
// LIABLE FOR ANY COSTS OF PROCUREMENT OF SUBSTITUTES, LOSS OF PROFITS, 
// INTERRUPTION OF BUSINESS, OR FOR ANY OTHER SPECIAL, CONSEQUENTIAL OR 
// INCIDENTAL DAMAGES, HOWEVER CAUSED, WHETHER FOR BREACH OF WARRANTY, 
// CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE.
//
////////////////////////////////////////////////////////////////////////////////
// Generated by bdw_memgen 19.22-s100
// Sun Mar 28 16:19:16 CDT 2021
module mac_plm_block_in_dma64(CLK, WE0, CE0, D0, A0, WEM0, WE1, CE1, D1, A1, WEM1, CE2, Q2, A2);

      input CLK;
      input WE0;
      input CE0;
      input [31:0] D0;
      input [12:0] A0;
      input [31:0] WEM0;
      input WE1;
      input CE1;
      input [31:0] D1;
      input [12:0] A1;
      input [31:0] WEM1;
      input CE2;
      input [12:0] A2;
      output [31:0] Q2;
      reg [31:0] Q2;
      reg[31:0] t_63;
      reg[31:0] t_62;
      reg[31:0] t_61;
      reg[31:0] t_60;
      reg[31:0] t_59;
      reg[31:0] t_58;
      reg[31:0] t_57;
      reg[31:0] t_56;
      reg[31:0] t_55;
      reg[31:0] t_54;
      reg[31:0] t_53;
      reg[31:0] t_52;
      reg[31:0] t_51;
      reg[31:0] t_50;
      reg[31:0] t_49;
      reg[31:0] t_48;
      reg[31:0] t_47;
      reg[31:0] t_46;
      reg[31:0] t_45;
      reg[31:0] t_44;
      reg[31:0] t_43;
      reg[31:0] t_42;
      reg[31:0] t_41;
      reg[31:0] t_40;
      reg[31:0] t_39;
      reg[31:0] t_38;
      reg[31:0] t_37;
      reg[31:0] t_36;
      reg[31:0] t_35;
      reg[31:0] t_34;
      reg[31:0] t_33;
      reg[31:0] t_32;
      reg[31:0] t_31;
      reg[31:0] t_30;
      reg[31:0] t_29;
      reg[31:0] t_28;
      reg[31:0] t_27;
      reg[31:0] t_26;
      reg[31:0] t_25;
      reg[31:0] t_24;
      reg[31:0] t_23;
      reg[31:0] t_22;
      reg[31:0] t_21;
      reg[31:0] t_20;
      reg[31:0] t_19;
      reg[31:0] t_18;
      reg[31:0] t_17;
      reg[31:0] t_16;
      reg[31:0] t_15;
      reg[31:0] t_14;
      reg[31:0] t_13;
      reg[31:0] t_12;
      reg[31:0] t_11;
      reg[31:0] t_10;
      reg[31:0] t_9;
      reg[31:0] t_8;
      reg[31:0] t_7;
      reg[31:0] t_6;
      reg[31:0] t_5;
      reg[31:0] t_4;
      reg[31:0] t_3;
      reg[31:0] t_2;
      reg[31:0] t_1;
      reg[31:0] t_0;
      reg[31:0] mem[6399:0];

         ///////////////////////////////////////////////////////////////////////////////
         //
         // Copyright (c) 2017 Cadence Design Systems, Inc. All rights reserved worldwide.
         //
         // The code contained herein is the proprietary and confidential information 
         // of Cadence or its licensors, and is supplied subject to a previously 
         // executed license and maintenance agreement between Cadence and customer. 
         // This code is intended for use with Cadence high-level synthesis tools and 
         // may not be used with other high-level synthesis tools. Permission is only 
         // granted to distribute the code as indicated. Cadence grants permission for 
         // customer to distribute a copy of this code to any partner to aid in designing 
         // or verifying the customer's intellectual property, as long as such 
         // distribution includes a restriction of no additional distributions from the 
         // partner, unless the partner receives permission directly from Cadence.
         //
         // ALL CODE FURNISHED BY CADENCE IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
         // KIND, AND CADENCE SPECIFICALLY DISCLAIMS ANY WARRANTY OF NONINFRINGEMENT, 
         // FITNESS FOR A PARTICULAR PURPOSE OR MERCHANTABILITY. CADENCE SHALL NOT BE 
         // LIABLE FOR ANY COSTS OF PROCUREMENT OF SUBSTITUTES, LOSS OF PROFITS, 
         // INTERRUPTION OF BUSINESS, OR FOR ANY OTHER SPECIAL, CONSEQUENTIAL OR 
         // INCIDENTAL DAMAGES, HOWEVER CAUSED, WHETHER FOR BREACH OF WARRANTY, 
         // CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE.
         //
         ////////////////////////////////////////////////////////////////////////////////
         // Generated by bdw_memgen 19.22-s100
         // Sun Mar 28 16:19:16 CDT 2021
         always @(posedge CLK)
          begin :thread0
            if ({1'b0, CE0} == 2'd1) begin
               // Perform an address range check to prevent crashes on out of bounds
               // accesses in SystemC behavioral simulations.
               if ({1'b0, WE0} == 2'd1) begin
                  if (WEM0[0] == 1'b1) begin
                     t_0 = mem[A0];
                     t_0[0] = D0[0];
                     mem[A0] = t_0;
                  end
                  if (WEM0[1] == 1'b1) begin
                     t_1 = mem[A0];
                     t_1[1] = D0[1];
                     mem[A0] = t_1;
                  end
                  if (WEM0[2] == 1'b1) begin
                     t_2 = mem[A0];
                     t_2[2] = D0[2];
                     mem[A0] = t_2;
                  end
                  if (WEM0[3] == 1'b1) begin
                     t_3 = mem[A0];
                     t_3[3] = D0[3];
                     mem[A0] = t_3;
                  end
                  if (WEM0[4] == 1'b1) begin
                     t_4 = mem[A0];
                     t_4[4] = D0[4];
                     mem[A0] = t_4;
                  end
                  if (WEM0[5] == 1'b1) begin
                     t_5 = mem[A0];
                     t_5[5] = D0[5];
                     mem[A0] = t_5;
                  end
                  if (WEM0[6] == 1'b1) begin
                     t_6 = mem[A0];
                     t_6[6] = D0[6];
                     mem[A0] = t_6;
                  end
                  if (WEM0[7] == 1'b1) begin
                     t_7 = mem[A0];
                     t_7[7] = D0[7];
                     mem[A0] = t_7;
                  end
                  if (WEM0[8] == 1'b1) begin
                     t_8 = mem[A0];
                     t_8[8] = D0[8];
                     mem[A0] = t_8;
                  end
                  if (WEM0[9] == 1'b1) begin
                     t_9 = mem[A0];
                     t_9[9] = D0[9];
                     mem[A0] = t_9;
                  end
                  if (WEM0[10] == 1'b1) begin
                     t_10 = mem[A0];
                     t_10[10] = D0[10];
                     mem[A0] = t_10;
                  end
                  if (WEM0[11] == 1'b1) begin
                     t_11 = mem[A0];
                     t_11[11] = D0[11];
                     mem[A0] = t_11;
                  end
                  if (WEM0[12] == 1'b1) begin
                     t_12 = mem[A0];
                     t_12[12] = D0[12];
                     mem[A0] = t_12;
                  end
                  if (WEM0[13] == 1'b1) begin
                     t_13 = mem[A0];
                     t_13[13] = D0[13];
                     mem[A0] = t_13;
                  end
                  if (WEM0[14] == 1'b1) begin
                     t_14 = mem[A0];
                     t_14[14] = D0[14];
                     mem[A0] = t_14;
                  end
                  if (WEM0[15] == 1'b1) begin
                     t_15 = mem[A0];
                     t_15[15] = D0[15];
                     mem[A0] = t_15;
                  end
                  if (WEM0[16] == 1'b1) begin
                     t_16 = mem[A0];
                     t_16[16] = D0[16];
                     mem[A0] = t_16;
                  end
                  if (WEM0[17] == 1'b1) begin
                     t_17 = mem[A0];
                     t_17[17] = D0[17];
                     mem[A0] = t_17;
                  end
                  if (WEM0[18] == 1'b1) begin
                     t_18 = mem[A0];
                     t_18[18] = D0[18];
                     mem[A0] = t_18;
                  end
                  if (WEM0[19] == 1'b1) begin
                     t_19 = mem[A0];
                     t_19[19] = D0[19];
                     mem[A0] = t_19;
                  end
                  if (WEM0[20] == 1'b1) begin
                     t_20 = mem[A0];
                     t_20[20] = D0[20];
                     mem[A0] = t_20;
                  end
                  if (WEM0[21] == 1'b1) begin
                     t_21 = mem[A0];
                     t_21[21] = D0[21];
                     mem[A0] = t_21;
                  end
                  if (WEM0[22] == 1'b1) begin
                     t_22 = mem[A0];
                     t_22[22] = D0[22];
                     mem[A0] = t_22;
                  end
                  if (WEM0[23] == 1'b1) begin
                     t_23 = mem[A0];
                     t_23[23] = D0[23];
                     mem[A0] = t_23;
                  end
                  if (WEM0[24] == 1'b1) begin
                     t_24 = mem[A0];
                     t_24[24] = D0[24];
                     mem[A0] = t_24;
                  end
                  if (WEM0[25] == 1'b1) begin
                     t_25 = mem[A0];
                     t_25[25] = D0[25];
                     mem[A0] = t_25;
                  end
                  if (WEM0[26] == 1'b1) begin
                     t_26 = mem[A0];
                     t_26[26] = D0[26];
                     mem[A0] = t_26;
                  end
                  if (WEM0[27] == 1'b1) begin
                     t_27 = mem[A0];
                     t_27[27] = D0[27];
                     mem[A0] = t_27;
                  end
                  if (WEM0[28] == 1'b1) begin
                     t_28 = mem[A0];
                     t_28[28] = D0[28];
                     mem[A0] = t_28;
                  end
                  if (WEM0[29] == 1'b1) begin
                     t_29 = mem[A0];
                     t_29[29] = D0[29];
                     mem[A0] = t_29;
                  end
                  if (WEM0[30] == 1'b1) begin
                     t_30 = mem[A0];
                     t_30[30] = D0[30];
                     mem[A0] = t_30;
                  end
                  if (WEM0[31] == 1'b1) begin
                     t_31 = mem[A0];
                     t_31[31] = D0[31];
                     mem[A0] = t_31;
                  end
               end
            end
         end

         always @(posedge CLK)
          begin :thread1
            if ({1'b0, CE1} == 2'd1) begin
               // Perform an address range check to prevent crashes on out of bounds
               // accesses in SystemC behavioral simulations.
               if ({1'b0, WE1} == 2'd1) begin
                  if (WEM1[0] == 1'b1) begin
                     t_32 = mem[A1];
                     t_32[0] = D1[0];
                     mem[A1] = t_32;
                  end
                  if (WEM1[1] == 1'b1) begin
                     t_33 = mem[A1];
                     t_33[1] = D1[1];
                     mem[A1] = t_33;
                  end
                  if (WEM1[2] == 1'b1) begin
                     t_34 = mem[A1];
                     t_34[2] = D1[2];
                     mem[A1] = t_34;
                  end
                  if (WEM1[3] == 1'b1) begin
                     t_35 = mem[A1];
                     t_35[3] = D1[3];
                     mem[A1] = t_35;
                  end
                  if (WEM1[4] == 1'b1) begin
                     t_36 = mem[A1];
                     t_36[4] = D1[4];
                     mem[A1] = t_36;
                  end
                  if (WEM1[5] == 1'b1) begin
                     t_37 = mem[A1];
                     t_37[5] = D1[5];
                     mem[A1] = t_37;
                  end
                  if (WEM1[6] == 1'b1) begin
                     t_38 = mem[A1];
                     t_38[6] = D1[6];
                     mem[A1] = t_38;
                  end
                  if (WEM1[7] == 1'b1) begin
                     t_39 = mem[A1];
                     t_39[7] = D1[7];
                     mem[A1] = t_39;
                  end
                  if (WEM1[8] == 1'b1) begin
                     t_40 = mem[A1];
                     t_40[8] = D1[8];
                     mem[A1] = t_40;
                  end
                  if (WEM1[9] == 1'b1) begin
                     t_41 = mem[A1];
                     t_41[9] = D1[9];
                     mem[A1] = t_41;
                  end
                  if (WEM1[10] == 1'b1) begin
                     t_42 = mem[A1];
                     t_42[10] = D1[10];
                     mem[A1] = t_42;
                  end
                  if (WEM1[11] == 1'b1) begin
                     t_43 = mem[A1];
                     t_43[11] = D1[11];
                     mem[A1] = t_43;
                  end
                  if (WEM1[12] == 1'b1) begin
                     t_44 = mem[A1];
                     t_44[12] = D1[12];
                     mem[A1] = t_44;
                  end
                  if (WEM1[13] == 1'b1) begin
                     t_45 = mem[A1];
                     t_45[13] = D1[13];
                     mem[A1] = t_45;
                  end
                  if (WEM1[14] == 1'b1) begin
                     t_46 = mem[A1];
                     t_46[14] = D1[14];
                     mem[A1] = t_46;
                  end
                  if (WEM1[15] == 1'b1) begin
                     t_47 = mem[A1];
                     t_47[15] = D1[15];
                     mem[A1] = t_47;
                  end
                  if (WEM1[16] == 1'b1) begin
                     t_48 = mem[A1];
                     t_48[16] = D1[16];
                     mem[A1] = t_48;
                  end
                  if (WEM1[17] == 1'b1) begin
                     t_49 = mem[A1];
                     t_49[17] = D1[17];
                     mem[A1] = t_49;
                  end
                  if (WEM1[18] == 1'b1) begin
                     t_50 = mem[A1];
                     t_50[18] = D1[18];
                     mem[A1] = t_50;
                  end
                  if (WEM1[19] == 1'b1) begin
                     t_51 = mem[A1];
                     t_51[19] = D1[19];
                     mem[A1] = t_51;
                  end
                  if (WEM1[20] == 1'b1) begin
                     t_52 = mem[A1];
                     t_52[20] = D1[20];
                     mem[A1] = t_52;
                  end
                  if (WEM1[21] == 1'b1) begin
                     t_53 = mem[A1];
                     t_53[21] = D1[21];
                     mem[A1] = t_53;
                  end
                  if (WEM1[22] == 1'b1) begin
                     t_54 = mem[A1];
                     t_54[22] = D1[22];
                     mem[A1] = t_54;
                  end
                  if (WEM1[23] == 1'b1) begin
                     t_55 = mem[A1];
                     t_55[23] = D1[23];
                     mem[A1] = t_55;
                  end
                  if (WEM1[24] == 1'b1) begin
                     t_56 = mem[A1];
                     t_56[24] = D1[24];
                     mem[A1] = t_56;
                  end
                  if (WEM1[25] == 1'b1) begin
                     t_57 = mem[A1];
                     t_57[25] = D1[25];
                     mem[A1] = t_57;
                  end
                  if (WEM1[26] == 1'b1) begin
                     t_58 = mem[A1];
                     t_58[26] = D1[26];
                     mem[A1] = t_58;
                  end
                  if (WEM1[27] == 1'b1) begin
                     t_59 = mem[A1];
                     t_59[27] = D1[27];
                     mem[A1] = t_59;
                  end
                  if (WEM1[28] == 1'b1) begin
                     t_60 = mem[A1];
                     t_60[28] = D1[28];
                     mem[A1] = t_60;
                  end
                  if (WEM1[29] == 1'b1) begin
                     t_61 = mem[A1];
                     t_61[29] = D1[29];
                     mem[A1] = t_61;
                  end
                  if (WEM1[30] == 1'b1) begin
                     t_62 = mem[A1];
                     t_62[30] = D1[30];
                     mem[A1] = t_62;
                  end
                  if (WEM1[31] == 1'b1) begin
                     t_63 = mem[A1];
                     t_63[31] = D1[31];
                     mem[A1] = t_63;
                  end
               end
            end
         end

         always @(posedge CLK)
          begin :thread2
            if ({1'b0, CE2} == 2'd1) begin
               // Perform an address range check to prevent crashes on out of bounds
               // accesses in SystemC behavioral simulations.
               Q2 <= mem[A2];
            end
            else begin
               Q2 <= 32'd0000000000;
            end
         end


endmodule

