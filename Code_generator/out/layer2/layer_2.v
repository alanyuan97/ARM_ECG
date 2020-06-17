module layer_2(reset,clk,N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x,R0x,R1x,R2x,R3x,R4x);
	input reset, clk; 
	output [7:0] N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x;
	input [7:0] R0x,R1x,R2x,R3x,R4x;

	node_2_1 node_2_1( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N1x(N1x) 
	); 
	node_2_2 node_2_2( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N2x(N2x) 
	); 
	node_2_3 node_2_3( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N3x(N3x) 
	); 
	node_2_4 node_2_4( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N4x(N4x) 
	); 
	node_2_5 node_2_5( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N5x(N5x) 
	); 
	node_2_6 node_2_6( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N6x(N6x) 
	); 
	node_2_7 node_2_7( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N7x(N7x) 
	); 
	node_2_8 node_2_8( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N8x(N8x) 
	); 
	node_2_9 node_2_9( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N9x(N9x) 
	); 
	node_2_10 node_2_10( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N10x(N10x) 
	); 
endmodule
