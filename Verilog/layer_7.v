module layer_7(reset,clk,N1x,R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x);
	input reset, clk; 
	output [23:0] N1x;
	input [23:0] R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x;

	node7_1 node7_1( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.A5x(R5x), 
		.A6x(R6x), 
		.A7x(R7x), 
		.A8x(R8x), 
		.A9x(R9x), 
		.clk(clk), 
		.reset(reset), 
		.N1x(N1x) 
	); 
endmodule
