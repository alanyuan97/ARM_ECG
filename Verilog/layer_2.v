module layer_2(reset,clk,N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x,R0x,R1x,R2x,R3x,R4x);
input reset; 
input clk; 
output [7:0] N1x,N2x,N3x,N4x,N5x,N6x,N7x,N8x,N9x,N10x;
input [7:0]R0x,R1x,R2x,R3x,R4x;

node1_1 node1_1( 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.clk(clk), 
.reset(reset), 
.N1x(N1x) 
); 
node1_2 node1_2( 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.clk(clk), 
.reset(reset), 
.N2x(N2x) 
); 
node1_3 node1_3( 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.clk(clk), 
.reset(reset), 
.N3x(N3x) 
); 
node1_4 node1_4( 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.clk(clk), 
.reset(reset), 
.N4x(N4x) 
); 
node1_5 node1_5( 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.clk(clk), 
.reset(reset), 
.N5x(N5x) 
); 
node1_6 node1_6( 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.clk(clk), 
.reset(reset), 
.N6x(N6x) 
); 
node1_7 node1_7( 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.clk(clk), 
.reset(reset), 
.N7x(N7x) 
); 
node1_8 node1_8( 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.clk(clk), 
.reset(reset), 
.N8x(N8x) 
); 
node1_9 node1_9( 
.A0x(R0x), 
.A1x(R1x), 
.A2x(R2x), 
.A3x(R3x), 
.A4x(R4x), 
.clk(clk), 
.reset(reset), 
.N9x(N9x) 
); 
node1_10 node1_10( 
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