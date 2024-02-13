`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 10:59:09 PM
// Design Name: 
// Module Name: SixtyFourBitCSA_Timed_tb
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


module SixtyFourBitCSA_Timed_tb(
    );
    
    reg [63:0] A, B;
    reg C0;
    
    reg clk;
    
    wire [63:0] S;
    wire C_Out;
    wire c_out_verify;
	wire [63:0] sum_verify;
	wire error_flag;
    
    SixtyFourBitCSA_Timed SixtyFour_B(.S(S), .C_Out(C_Out), .A(A), .B(B), .C0(C0));
    
    // Verification module
	Verification_64Bit Verification (
	   .C_Out(c_out_verify),
	   .S(sum_verify),
	   .A(A),
	   .B(B),
	   .C0(C0)
	);
	
	// Assign Error_flag
	assign error_flag = (C_Out != c_out_verify || S != sum_verify);
	
    always @ (posedge clk)
		begin
		if(error_flag)
			$display("Error occurs when a = %d, b = %d, c_in = %d\n", A, B, C0);
		end
		
	always #5 clk = ~clk;		
    
    initial begin
        clk = 0;
        A = 0; B = 0;
        C0 = 1'b0;
        #150 A = 64'h0000000000000001; B = 64'hFFFFFFFFFFFFFFFF;
        #150 C0 = 1'b1; #47 C0 = 1'b0;
        #150 A = 64'hFFFFFFFFFFFFFFFF; B = 64'hAAAAAAAAAAAAAAAA;
        #150 C0 = 1'b1; #47 C0 = 1'b0;
        #150 A = 64'h00000000000000FF; B = 64'h000000000000FF01;
        #150 C0 = 1'b1; 
    end
    
    // always #27  {A, B, C0} = {A, B, C0} + 64'b0000000000000001000000000000000000000000000000000000000000000001;
    
endmodule
