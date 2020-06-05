module layer_2(reset,clk,N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x,R0x,R1x,R2x,R3x,R4x);
	input reset, clk; 
	output [23:0] N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x;
	input [23:0] R0x,R1x,R2x,R3x,R4x;

	node2_1 node2_1( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N1x(N1x) 
	); 
	node2_2 node2_2( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N2x(N2x) 
	); 
	node2_3 node2_3( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N3x(N3x) 
	); 
	node2_4 node2_4( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N4x(N4x) 
	); 
	node2_5 node2_5( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N5x(N5x) 
	); 
	node2_6 node2_6( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N6x(N6x) 
	); 
	node2_7 node2_7( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N7x(N7x) 
	); 
	node2_8 node2_8( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N8x(N8x) 
	); 
	node2_9 node2_9( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.clk(clk), 
		.reset(reset), 
		.N9x(N9x) 
	); 
	node2_10 node2_10( 
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
