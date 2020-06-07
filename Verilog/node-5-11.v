module node5_11(clk,reset,N11x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x);
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
	input [23:0] A15x;
	input [23:0] A16x;
	input [23:0] A17x;
	input [23:0] A18x;
	input [23:0] A19x;
	input [23:0] A20x;
	input [23:0] A21x;
	input [23:0] A22x;
	input [23:0] A23x;
	input [23:0] A24x;
	input [23:0] A25x;
	input [23:0] A26x;
	input [23:0] A27x;
	input [23:0] A28x;
	input [23:0] A29x;
	output reg [23:0] N11x;

	parameter [23:0] W0x=0;
	parameter [23:0] W1x=7;
	parameter [23:0] W2x=16;
	parameter [23:0] W3x=-12;
	parameter [23:0] W4x=1;
	parameter [23:0] W5x=16;
	parameter [23:0] W6x=7;
	parameter [23:0] W7x=-30;
	parameter [23:0] W8x=6;
	parameter [23:0] W9x=-23;
	parameter [23:0] W10x=-5;
	parameter [23:0] W11x=6;
	parameter [23:0] W12x=10;
	parameter [23:0] W13x=1;
	parameter [23:0] W14x=15;
	parameter [23:0] W15x=-14;
	parameter [23:0] W16x=15;
	parameter [23:0] W17x=6;
	parameter [23:0] W18x=-1;
	parameter [23:0] W19x=0;
	parameter [23:0] W20x=-4;
	parameter [23:0] W21x=15;
	parameter [23:0] W22x=-14;
	parameter [23:0] W23x=-7;
	parameter [23:0] W24x=-4;
	parameter [23:0] W25x=7;
	parameter [23:0] W26x=9;
	parameter [23:0] W27x=0;
	parameter [23:0] W28x=4;
	parameter [23:0] W29x=1;
	parameter [23:0] B0x=-1;
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
	wire [23:0] in15x;
	wire [23:0] in16x;
	wire [23:0] in17x;
	wire [23:0] in18x;
	wire [23:0] in19x;
	wire [23:0] in20x;
	wire [23:0] in21x;
	wire [23:0] in22x;
	wire [23:0] in23x;
	wire [23:0] in24x;
	wire [23:0] in25x;
	wire [23:0] in26x;
	wire [23:0] in27x;
	wire [23:0] in28x;
	wire [23:0] in29x;

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
	reg [23:0] A15x_c;
	reg [23:0] A16x_c;
	reg [23:0] A17x_c;
	reg [23:0] A18x_c;
	reg [23:0] A19x_c;
	reg [23:0] A20x_c;
	reg [23:0] A21x_c;
	reg [23:0] A22x_c;
	reg [23:0] A23x_c;
	reg [23:0] A24x_c;
	reg [23:0] A25x_c;
	reg [23:0] A26x_c;
	reg [23:0] A27x_c;
	reg [23:0] A28x_c;
	reg [23:0] A29x_c;


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
	assign in15x=A15x_c*W15x;
	assign in16x=A16x_c*W16x;
	assign in17x=A17x_c*W17x;
	assign in18x=A18x_c*W18x;
	assign in19x=A19x_c*W19x;
	assign in20x=A20x_c*W20x;
	assign in21x=A21x_c*W21x;
	assign in22x=A22x_c*W22x;
	assign in23x=A23x_c*W23x;
	assign in24x=A24x_c*W24x;
	assign in25x=A25x_c*W25x;
	assign in26x=A26x_c*W26x;
	assign in27x=A27x_c*W27x;
	assign in28x=A28x_c*W28x;
	assign in29x=A29x_c*W29x;

always@(posedge clk)
	begin

	if(reset) begin
		N11x<=24'b0;
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
		A15x_c<=24'b0;
		A16x_c<=24'b0;
		A17x_c<=24'b0;
		A18x_c<=24'b0;
		A19x_c<=24'b0;
		A20x_c<=24'b0;
		A21x_c<=24'b0;
		A22x_c<=24'b0;
		A23x_c<=24'b0;
		A24x_c<=24'b0;
		A25x_c<=24'b0;
		A26x_c<=24'b0;
		A27x_c<=24'b0;
		A28x_c<=24'b0;
		A29x_c<=24'b0;
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
	A15x_c<=A15x;
	A16x_c<=A16x;
	A17x_c<=A17x;
	A18x_c<=A18x;
	A19x_c<=A19x;
	A20x_c<=A20x;
	A21x_c<=A21x;
	A22x_c<=A22x;
	A23x_c<=A23x;
	A24x_c<=A24x;
	A25x_c<=A25x;
	A26x_c<=A26x;
	A27x_c<=A27x;
	A28x_c<=A28x;
	A29x_c<=A29x;
	sumout<=in0x+in1x+in2x+in3x+in4x+in5x+in6x+in7x+in8x+in9x+in10x+in11x+in12x+in13x+in14x+in15x+in16x+in17x+in18x+in19x+in20x+in21x+in22x+in23x+in24x+in25x+in26x+in27x+in28x+in29x+B0x;

	if(sumout[23]==0)
		begin
		if(sumout>8192)
			N11x<=8'b11111111;
		else
			N11x<=sumout[12:5];
		end
	else
		begin
		N11x<=24'd0;
		end
	end
endmodule