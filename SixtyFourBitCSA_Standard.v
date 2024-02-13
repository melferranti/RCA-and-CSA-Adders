`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 11:42:12 PM
// Design Name: 
// Module Name: SixtyFourBitCSA_Standard
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


module SixtyFourBitCSA_Standard(
    input [63:0] A,
    input [63:0] B,
    input C0,
    output reg [63:0] S,
    output reg C_Out
    );
    
    wire select;
    wire [31:0] Sum, Sum0, Sum1;
    wire C_Out0, C_Out1;
    
    ThirtyTwoBitRCA_Standard ThirtyTwoB_RCA01 (.S(Sum), .C_Out(select), .A(A[31:0]), .B(B[31:0]), .C0(C0));
    ThirtyTwoBitRCA_Standard ThirtyTwoB_RCA02 (.S(Sum0), .C_Out(C_Out0), .A(A[63:32]), .B(B[63:32]), .C0(1'b0));
    ThirtyTwoBitRCA_Standard ThirtyTwoB_RCA03 (.S(Sum1), .C_Out(C_Out1), .A(A[63:32]), .B(B[63:32]), .C0(1'b1));

    always @ (*) begin
        S[31:0] <= Sum;
        case (select) 
            1'b0: begin 
                S[63:32] <= Sum0; 
                C_Out <= C_Out0;
            end
            1'b1: begin
                S[63:32] <= Sum1; 
                C_Out <= C_Out1;
            end
        endcase
    end
    
endmodule
