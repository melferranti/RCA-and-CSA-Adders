`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 11:38:02 PM
// Design Name: 
// Module Name: SixtyFourBitRCA_Standard
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SixtyFourBitRCA_Standard(
    input [63:0] A,
    input [63:0] B,
    input C0,
    output [63:0] S,
    output C_Out
    );
    
    wire C1;
    
    ThirtyTwoBitRCA_Standard ThirtyTwoB_RCA01 (.S(S[31:0]), .C_Out(C1), .A(A[31:0]), .B(B[31:0]), .C0(C0));
    ThirtyTwoBitRCA_Standard ThirtyTwoB_RCA02 (.S(S[63:32]), .C_Out(C_Out), .A(A[63:32]), .B(B[63:32]), .C0(C1));
    
endmodule
