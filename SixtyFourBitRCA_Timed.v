`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 08:30:26 PM
// Design Name: 
// Module Name: SixtyFourBitRCA_Timed
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


module SixtyFourBitRCA_Timed(
    input [63:0] A,
    input [63:0] B,
    input C0,
    output [63:0] S,
    output C_Out
    );
    
    wire C1;
    
    ThirtyTwoBitRCA_Timed ThirtyTwoB_RCA01 (.S(S[31:0]), .C_Out(C1), .A(A[31:0]), .B(B[31:0]), .C0(C0));
    ThirtyTwoBitRCA_Timed ThirtyTwoB_RCA02 (.S(S[63:32]), .C_Out(C_Out), .A(A[63:32]), .B(B[63:32]), .C0(C1));
    
    /*
    wire C1, C2, C3, C4, C5, C6, C7, C8;
    wire C9, C10, C11, C12, C13, C14, C15;
    
    FourBitRCA_Timed FourB_RCA01 (.S(S[3:0]), .C4(C1), .A(A[3:0]), .B(B[3:0]), .C0(C0));
    FourBitRCA_Timed FourB_RCA02 (.S(S[7:4]), .C4(C2), .A(A[7:4]), .B(B[7:4]), .C0(C1));
    FourBitRCA_Timed FourB_RCA03 (.S(S[11:8]), .C4(C3), .A(A[11:8]), .B(B[11:8]), .C0(C2));
    FourBitRCA_Timed FourB_RCA04 (.S(S[15:12]), .C4(C4), .A(A[15:12]), .B(B[15:12]), .C0(C3));
    
    FourBitRCA_Timed FourB_RCA05 (.S(S[19:16]), .C4(C5), .A(A[19:16]), .B(B[19:16]), .C0(C4));
    FourBitRCA_Timed FourB_RCA06 (.S(S[23:20]), .C4(C6), .A(A[23:20]), .B(B[23:20]), .C0(C5));
    FourBitRCA_Timed FourB_RCA07 (.S(S[27:24]), .C4(C7), .A(A[27:24]), .B(B[27:24]), .C0(C6));
    FourBitRCA_Timed FourB_RCA08 (.S(S[31:28]), .C4(C8), .A(A[31:28]), .B(B[31:28]), .C0(C7));
    
    FourBitRCA_Timed FourB_RCA09 (.S(S[35:32]), .C4(C9), .A(A[35:32]), .B(B[35:32]), .C0(C8));
    FourBitRCA_Timed FourB_RCA10 (.S(S[39:36]), .C4(C10), .A(A[39:36]), .B(B[39:36]), .C0(C9));
    FourBitRCA_Timed FourB_RCA11 (.S(S[43:40]), .C4(C11), .A(A[43:40]), .B(B[43:40]), .C0(C10));
    FourBitRCA_Timed FourB_RCA12 (.S(S[47:44]), .C4(C12), .A(A[47:44]), .B(B[47:44]), .C0(C11));
    
    FourBitRCA_Timed FourB_RCA13 (.S(S[51:48]), .C4(C13), .A(A[51:48]), .B(B[51:48]), .C0(C12));
    FourBitRCA_Timed FourB_RCA14 (.S(S[55:52]), .C4(C14), .A(A[55:52]), .B(B[55:52]), .C0(C13));
    FourBitRCA_Timed FourB_RCA15 (.S(S[59:56]), .C4(C15), .A(A[59:56]), .B(B[59:56]), .C0(C14));
    FourBitRCA_Timed FourB_RCA16 (.S(S[63:60]), .C4(C_Out), .A(A[63:60]), .B(B[63:60]), .C0(C15));
    */
    
endmodule
