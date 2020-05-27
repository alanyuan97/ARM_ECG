module layer_2(clk,R0x,R1x,R2x,R3x,R4x,N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x);
	
	input clk;
   input [31:0] R0x,R1x,R2x,R3x,R4x;
   output [31:0] N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x;
	
node2_1 node2_1( 
.clk(clk),
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N1x(N1x) 
); 
node2_2 node2_2( 
.clk(clk),
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N2x(N2x) 
); 
node2_3 node2_3(
.clk(clk), 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N3x(N3x) 
); 
node2_4 node2_4( 
.clk(clk),
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N4x(N4x) 
); 
node2_5 node2_5( 
.clk(clk),
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N5x(N5x) 
); 
node2_6 node2_6( 
.clk(clk),
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N6x(N6x) 
); 
node2_7 node2_7( 
.clk(clk),
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N7x(N7x) 
); 
node2_8 node2_8( 
.clk(clk),
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N8x(N8x) 
); 
node2_9 node2_9(
.clk(clk), 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N9x(N9x) 
); 
node2_10 node2_10( 
.clk(clk),
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.N10x(N10x) 
);


endmodule