module mux_32(out,sel,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31);
output reg out;
input [4:0] sel;
input in0;
input in1;
input in2;
input in3;
input in4;
input in5;
input in6;
input in7;
input in8;
input in9;
input in10;
input in11;
input in12;
input in13;
input in14;
input in15;
input in16;
input in17;
input in18;
input in19;
input in20;
input in21;
input in22;
input in23;
input in24;
input in25;
input in26;
input in27;
input in28;
input in29;
input in30;
input in31;
always @(*) case (sel)
    0: out <= in0;
    1: out <= in1;
    2: out <= in2;
    3: out <= in3;
    4: out <= in4;
    5: out <= in5;
    6: out <= in6;
    7: out <= in7;
    8: out <= in8;
    9: out <= in9;
    10: out <= in10;
    11: out <= in11;
    12: out <= in12;
    13: out <= in13;
    14: out <= in14;
    15: out <= in15;
    16: out <= in16;
    17: out <= in17;
    18: out <= in18;
    19: out <= in19;
    20: out <= in20;
    21: out <= in21;
    22: out <= in22;
    23: out <= in23;
    24: out <= in24;
    25: out <= in25;
    26: out <= in26;
    27: out <= in27;
    28: out <= in28;
    29: out <= in29;
    30: out <= in30;
    31: out <= in31;
endcase
endmodule