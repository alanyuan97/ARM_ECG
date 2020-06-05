module node3_7(clk,reset,N7x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x);
	input clk;
	input reset;
	input [23:0] A0x;
	input [23:0] A1x;
	input [23:0] A2x;
	input [23:0] A3x;
	input [23:0] A4x;
	input [23:0] A5x;
	input [23:0] A6x;
	input [23:0] A7x;
	input [23:0] A8x;
	input [23:0] A9x;
	output reg [23:0] N7x;

	parameter [23:0] W0x=10;
	parameter [23:0] W1x=3;
	parameter [23:0] W2x=31;
	parameter [23:0] W3x=3;
	parameter [23:0] W4x=5;
	parameter [23:0] W5x=-8;
	parameter [23:0] W6x=-1;
	parameter [23:0] W7x=-6;
	parameter [23:0] W8x=19;
	parameter [23:0] W9x=26;
	parameter [23:0] B0x=6;
	wire [23:0] in0x;
	wire [23:0] in1x;
	wire [23:0] in2x;
	wire [23:0] in3x;
	wire [23:0] in4x;
	wire [23:0] in5x;
	wire [23:0] in6x;
	wire [23:0] in7x;
	wire [23:0] in8x;
	wire [23:0] in9x;

	reg [23:0] sumout;
	reg [23:0] A0x_c;
	reg [23:0] A1x_c;
	reg [23:0] A2x_c;
	reg [23:0] A3x_c;
	reg [23:0] A4x_c;
	reg [23:0] A5x_c;
	reg [23:0] A6x_c;
	reg [23:0] A7x_c;
	reg [23:0] A8x_c;
	reg [23:0] A9x_c;


	assign in0x=A0x_c*W0x;
	assign in1x=A1x_c*W1x;
	assign in2x=A2x_c*W2x;
	assign in3x=A3x_c*W3x;
	assign in4x=A4x_c*W4x;
	assign in5x=A5x_c*W5x;
	assign in6x=A6x_c*W6x;
	assign in7x=A7x_c*W7x;
	assign in8x=A8x_c*W8x;
	assign in9x=A9x_c*W9x;

always@(posedge clk)
	begin

	if(reset) begin
		N7x<=24'b0;
		sumout<=24'b0;
		A0x_c<=24'b0;
		A1x_c<=24'b0;
		A2x_c<=24'b0;
		A3x_c<=24'b0;
		A4x_c<=24'b0;
		A5x_c<=24'b0;
		A6x_c<=24'b0;
		A7x_c<=24'b0;
		A8x_c<=24'b0;
		A9x_c<=24'b0;
		sumout<=24'b0;
	end

	A0x_c<=A0x;
	A1x_c<=A1x;
	A2x_c<=A2x;
	A3x_c<=A3x;
	A4x_c<=A4x;
	A5x_c<=A5x;
	A6x_c<=A6x;
	A7x_c<=A7x;
	A8x_c<=A8x;
	A9x_c<=A9x;
	sumout<=in0x+in1x+in2x+in3x+in4x+in5x+in6x+in7x+in8x+in9x+B0x;

	if(sumout[23]==0)
		begin
		if(sumout>4096)
			N7x<=8'b11111111;
		else
			N7x<=sumout[12:5];
		end
	else
		begin
		N7x<=24'd0;
		end
	end
endmodule
