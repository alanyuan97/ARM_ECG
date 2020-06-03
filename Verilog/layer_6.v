module layer_6(reset,clk,N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x,R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x,R10x,R11x,R12x,R13x,R14x);
	input reset, clk; 
	output [7:0] N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x;
	input [7:0] R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x,R10x,R11x,R12x,R13x,R14x;

	node_6_1 node_6_1( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N1x(N1x) 
	); 
	node_6_2 node_6_2( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N2x(N2x) 
	); 
	node_6_3 node_6_3( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N3x(N3x) 
	); 
	node_6_4 node_6_4( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N4x(N4x) 
	); 
	node_6_5 node_6_5( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N5x(N5x) 
	); 
	node_6_6 node_6_6( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N6x(N6x) 
	); 
	node_6_7 node_6_7( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N7x(N7x) 
	); 
	node_6_8 node_6_8( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N8x(N8x) 
	); 
	node_6_9 node_6_9( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N9x(N9x) 
	); 
	node_6_10 node_6_10( 
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
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.clk(clk), 
		.reset(reset), 
		.N10x(N10x) 
	); 
endmodule