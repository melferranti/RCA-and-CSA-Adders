`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 08:14:27 PM
// Design Name: 
// Module Name: FourBitRCA_Timed_tb
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


module FourBitRCA_Timed_tb(
);
    reg [3:0] A, B;
    reg C0;
    
    reg clk;
    
    wire [3:0] S;
    wire C4;
    wire c_out_verify;
	wire [3:0] sum_verify;
	wire error_flag;
    
    FourBitRCA_Timed four_bit(.S(S), .C4(C4), .A(A), .B(B), .C0(C0));
    
    // Verification module
	Verification_4Bit Verification (
	   .C4(c_out_verify),
	   .S(sum_verify),
	   .A(A),
	   .B(B),
	   .C0(C0)
	);
	
	// Assign Error_flag
	assign error_flag = (C4 != c_out_verify || S != sum_verify);
	
    always @ (posedge clk)
		begin
		if(error_flag)
			$display("Error occurs when a = %d, b = %d, c_in = %d\n", A, B, C0);
		end
		
	always #5 clk = ~clk;		
    
    initial begin
        clk = 0;
        A = 0; B = 0;
        C0 = 0;
    end
    
    always #27  {A, B, C0} = {A, B, C0} + 1;

endmodule
