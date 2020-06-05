module node4_6(clk,reset,N6x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x);
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
	input [23:0] A10x;
	input [23:0] A11x;
	input [23:0] A12x;
	input [23:0] A13x;
	input [23:0] A14x;
	output reg [23:0] N6x;

	parameter [23:0] W0x=8;
	parameter [23:0] W1x=-3;
	parameter [23:0] W2x=4;
	parameter [23:0] W3x=-11;
	parameter [23:0] W4x=-31;
	parameter [23:0] W5x=-14;
	parameter [23:0] W6x=0;
	parameter [23:0] W7x=-12;
	parameter [23:0] W8x=16;
	parameter [23:0] W9x=0;
	parameter [23:0] W10x=26;
	parameter [23:0] W11x=-15;
	parameter [23:0] W12x=-15;
	parameter [23:0] W13x=2;
	parameter [23:0] W14x=4;
	parameter [23:0] B0x=0;
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
	wire [23:0] in10x;
	wire [23:0] in11x;
	wire [23:0] in12x;
	wire [23:0] in13x;
	wire [23:0] in14x;

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
	reg [23:0] A10x_c;
	reg [23:0] A11x_c;
	reg [23:0] A12x_c;
	reg [23:0] A13x_c;
	reg [23:0] A14x_c;


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
	assign in10x=A10x_c*W10x;
	assign in11x=A11x_c*W11x;
	assign in12x=A12x_c*W12x;
	assign in13x=A13x_c*W13x;
	assign in14x=A14x_c*W14x;

always@(posedge clk)
	begin

	if(reset) begin
		N6x<=24'b0;
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
		A10x_c<=24'b0;
		A11x_c<=24'b0;
		A12x_c<=24'b0;
		A13x_c<=24'b0;
		A14x_c<=24'b0;
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
	A10x_c<=A10x;
	A11x_c<=A11x;
	A12x_c<=A12x;
	A13x_c<=A13x;
	A14x_c<=A14x;
	sumout<=in0x+in1x+in2x+in3x+in4x+in5x+in6x+in7x+in8x+in9x+in10x+in11x+in12x+in13x+in14x+B0x;

	if(sumout[23]==0)
		begin
		if(sumout>4096)
			N6x<=8'b11111111;
		else
			N6x<=sumout[12:5];
		end
	else
		begin
		N6x<=24'd0;
		end
	end
endmodule
