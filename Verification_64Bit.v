`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 08:58:50 PM
// Design Name: 
// Module Name: Verification_64Bit
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


module Verification_64Bit(
    input [63:0] A,
    input [63:0] B,
    input C0,
    output C_Out,
    output [63:0] S
    );
    
    assign {C_Out, S} = A + B + C0;
endmodule
