`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 11:35:00 PM
// Design Name: 
// Module Name: FourBitRCA_Standard
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


module FourBitRCA_Standard(
    input [3:0] A,
    input [3:0] B,
    input C0,
    output [3:0] S,
    output C4
    );
    
    wire C1, C2, C3;
    
    FA_standard FA1  (.sum(S[0]), .c_out(C1), .a(A[0]), .b(B[0]), .c_in(C0));
    FA_standard FA2  (.sum(S[1]), .c_out(C2), .a(A[1]), .b(B[1]), .c_in(C1));
    FA_standard FA3  (.sum(S[2]), .c_out(C3), .a(A[2]), .b(B[2]), .c_in(C2));
    FA_standard FA4  (.sum(S[3]), .c_out(C4), .a(A[3]), .b(B[3]), .c_in(C3));
endmodule
