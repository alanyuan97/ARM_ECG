module layer_3(reset,clk,N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x,N11x,N12x,N13x,N14x,N15x,R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x);
	input reset, clk; 
	output [7:0] N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x,N11x,N12x,N13x,N14x,N15x;
	input [7:0] R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x;

	node_3_1 node_3_1( 
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
	node_3_2 node_3_2( 
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
		.N2x(N2x) 
	); 
	node_3_3 node_3_3( 
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
		.N3x(N3x) 
	); 
	node_3_4 node_3_4( 
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
		.N4x(N4x) 
	); 
	node_3_5 node_3_5( 
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
		.N5x(N5x) 
	); 
	node_3_6 node_3_6( 
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
		.N6x(N6x) 
	); 
	node_3_7 node_3_7( 
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
		.N7x(N7x) 
	); 
	node_3_8 node_3_8( 
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
		.N8x(N8x) 
	); 
	node_3_9 node_3_9( 
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
		.N9x(N9x) 
	); 
	node_3_10 node_3_10( 
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
		.N10x(N10x) 
	); 
	node_3_11 node_3_11( 
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
		.N11x(N11x) 
	); 
	node_3_12 node_3_12( 
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
		.N12x(N12x) 
	); 
	node_3_13 node_3_13( 
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
		.N13x(N13x) 
	); 
	node_3_14 node_3_14( 
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
		.N14x(N14x) 
	); 
	node_3_15 node_3_15( 
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
		.N15x(N15x) 
	); 
endmodule
