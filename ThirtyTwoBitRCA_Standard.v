`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 11:36:46 PM
// Design Name: 
// Module Name: ThirtyTwoBitRCA_Standard
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


module ThirtyTwoBitRCA_Standard(
    input [31:0] A,
    input [31:0] B,
    input C0,
    output [31:0] S,
    output C_Out
    );
    
    wire C1, C2, C3, C4, C5, C6, C7;
    
    FourBitRCA_Standard FourB_RCA01 (.S(S[3:0]), .C4(C1), .A(A[3:0]), .B(B[3:0]), .C0(C0));
    FourBitRCA_Standard FourB_RCA02 (.S(S[7:4]), .C4(C2), .A(A[7:4]), .B(B[7:4]), .C0(C1));
    FourBitRCA_Standard FourB_RCA03 (.S(S[11:8]), .C4(C3), .A(A[11:8]), .B(B[11:8]), .C0(C2));
    FourBitRCA_Standard FourB_RCA04 (.S(S[15:12]), .C4(C4), .A(A[15:12]), .B(B[15:12]), .C0(C3));
    
    FourBitRCA_Standard FourB_RCA05 (.S(S[19:16]), .C4(C5), .A(A[19:16]), .B(B[19:16]), .C0(C4));
    FourBitRCA_Standard FourB_RCA06 (.S(S[23:20]), .C4(C6), .A(A[23:20]), .B(B[23:20]), .C0(C5));
    FourBitRCA_Standard FourB_RCA07 (.S(S[27:24]), .C4(C7), .A(A[27:24]), .B(B[27:24]), .C0(C6));
    FourBitRCA_Standard FourB_RCA08 (.S(S[31:28]), .C4(C_Out), .A(A[31:28]), .B(B[31:28]), .C0(C7));
    
endmodule
