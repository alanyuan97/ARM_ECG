module node4_1(clk,reset,N1x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x);
	input clk;
	input reset;
	input [31:0] A0x;
	input [31:0] A1x;
	input [31:0] A2x;
	input [31:0] A3x;
	input [31:0] A4x;
	input [31:0] A5x;
	input [31:0] A6x;
	input [31:0] A7x;
	input [31:0] A8x;
	input [31:0] A9x;
	input [31:0] A10x;
	input [31:0] A11x;
	input [31:0] A12x;
	input [31:0] A13x;
	input [31:0] A14x;
	output reg [31:0] N1x;

	parameter [31:0] W0x=1485;
	parameter [31:0] W1x=-5035;
	parameter [31:0] W2x=-767;
	parameter [31:0] W3x=149;
	parameter [31:0] W4x=2557;
	parameter [31:0] W5x=1782;
	parameter [31:0] W6x=-358;
	parameter [31:0] W7x=5223;
	parameter [31:0] W8x=2001;
	parameter [31:0] W9x=2225;
	parameter [31:0] W10x=-2127;
	parameter [31:0] W11x=-4454;
	parameter [31:0] W12x=3126;
	parameter [31:0] W13x=-2552;
	parameter [31:0] W14x=3042;
	parameter [31:0] B0x=1243;
	wire [31:0] in0x;
	wire [31:0] in1x;
	wire [31:0] in2x;
	wire [31:0] in3x;
	wire [31:0] in4x;
	wire [31:0] in5x;
	wire [31:0] in6x;
	wire [31:0] in7x;
	wire [31:0] in8x;
	wire [31:0] in9x;
	wire [31:0] in10x;
	wire [31:0] in11x;
	wire [31:0] in12x;
	wire [31:0] in13x;
	wire [31:0] in14x;
	reg [31:0] sum0x;
	reg [31:0] sum1x;
	reg [31:0] sum2x;
	reg [31:0] sum3x;
	reg [31:0] sum4x;
	reg [31:0] sum5x;
	reg [31:0] sum6x;
	reg [31:0] sum7x;
	reg [31:0] sum8x;
	reg [31:0] sum9x;
	reg [31:0] sum10x;
	reg [31:0] sum11x;
	reg [31:0] sum12x;
	reg [31:0] sum13x;

	reg [31:0] sumout;
	reg [31:0] A0x_c;
	reg [31:0] A1x_c;
	reg [31:0] A2x_c;
	reg [31:0] A3x_c;
	reg [31:0] A4x_c;
	reg [31:0] A5x_c;
	reg [31:0] A6x_c;
	reg [31:0] A7x_c;
	reg [31:0] A8x_c;
	reg [31:0] A9x_c;
	reg [31:0] A10x_c;
	reg [31:0] A11x_c;
	reg [31:0] A12x_c;
	reg [31:0] A13x_c;
	reg [31:0] A14x_c;


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
		N1x<=32'b0;
		sumout<=32'b0;
		A0x_c<=32'b0;
		A1x_c<=32'b0;
		A2x_c<=32'b0;
		A3x_c<=32'b0;
		A4x_c<=32'b0;
		A5x_c<=32'b0;
		A6x_c<=32'b0;
		A7x_c<=32'b0;
		A8x_c<=32'b0;
		A9x_c<=32'b0;
		A10x_c<=32'b0;
		A11x_c<=32'b0;
		A12x_c<=32'b0;
		A13x_c<=32'b0;
		A14x_c<=32'b0;
		sum0x<=32'b0;
		sum1x<=32'b0;
		sum2x<=32'b0;
		sum3x<=32'b0;
		sum4x<=32'b0;
		sum5x<=32'b0;
		sum6x<=32'b0;
		sum7x<=32'b0;
		sum8x<=32'b0;
		sum9x<=32'b0;
		sum10x<=32'b0;
		sum11x<=32'b0;
		sum12x<=32'b0;
		sum13x<=32'b0;
		sumout<=32'b0;
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

	if(sumout[31]==0)
		begin
		N1x<=sumout;
		end
	else
		begin
		N1x<=32'd0;
		end
	end
endmodule
