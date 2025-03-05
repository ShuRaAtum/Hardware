`timescale 1ns / 1ps

module LEA_TOP1(
    input reset,
    input clk,
    input [127:0] keyin,
    input [127:0] datain,
    output [127:0] dataout
    );
    
    reg [7:0] X0, X1, X2, X3, X4, X5, X6, X7;
    wire [63:0] X1_OUT, X2_OUT, X3_OUT;
    wire [63:0] key_value = cnt[0]? keyin[127:64]:keyin[63:0];
    
    wire [3:0] key_xor = key_value[3:0] ^ cnt[3:0];
    
    
    wire [63:0] key_value2 = {key_value[63:4],key_xor[3:0]}; 
    

endmodule
