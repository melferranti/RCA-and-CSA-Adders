`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 08:13:12 PM
// Design Name: 
// Module Name: Verification_4Bit
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


module Verification_4Bit(
    input [3:0] A,
    input [3:0] B,
    input C0,
    output C4,
    output [3:0] S
    );
    
    assign {C4, S} = A + B + C0;

endmodule
