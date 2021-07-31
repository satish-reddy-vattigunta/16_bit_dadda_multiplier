`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:07:09 08/01/2021
// Design Name:   dadda_multiplier
// Module Name:   C:/Users/Satish/dadda_multiplier/dadda_test.v
// Project Name:  dadda_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dadda_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dadda_test;

	// Inputs
	reg [15:0] mltpr;
	reg [15:0] mltpd;

	// Outputs
	wire [31:0] product;

	// Instantiate the Unit Under Test (UUT)
	dadda_multiplier uut (
		.mltpr(mltpr), 
		.mltpd(mltpd), 
		.product(product)
	);
integer i,j;
	initial begin
		// Initialize Inputs
		mltpr = 0;
		mltpd = 0;
		
for(i=0;i<65535;i=i+1)
for(j=0;j<65535;j=j+1)
begin
 mltpr=i+1;
 mltpd=j;
 #5;

end

		// Wait 100 ns for global reset to finish
		#276447232 ;
        
		// Add stimulus here

	end
      
endmodule

