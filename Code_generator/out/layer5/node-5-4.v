module node5_4(clk,N4x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x);
	input clk;
	input [31:0] A0x;
	input clk;
	input [31:0] A1x;
	input clk;
	input [31:0] A2x;
	input clk;
	input [31:0] A3x;
	input clk;
	input [31:0] A4x;
	input clk;
	input [31:0] A5x;
	input clk;
	input [31:0] A6x;
	input clk;
	input [31:0] A7x;
	input clk;
	input [31:0] A8x;
	input clk;
	input [31:0] A9x;
	input clk;
	input [31:0] A10x;
	input clk;
	input [31:0] A11x;
	input clk;
	input [31:0] A12x;
	input clk;
	input [31:0] A13x;
	input clk;
	input [31:0] A14x;
	input clk;
	input [31:0] A15x;
	input clk;
	input [31:0] A16x;
	input clk;
	input [31:0] A17x;
	input clk;
	input [31:0] A18x;
	input clk;
	input [31:0] A19x;
	input clk;
	input [31:0] A20x;
	input clk;
	input [31:0] A21x;
	input clk;
	input [31:0] A22x;
	input clk;
	input [31:0] A23x;
	input clk;
	input [31:0] A24x;
	input clk;
	input [31:0] A25x;
	input clk;
	input [31:0] A26x;
	input clk;
	input [31:0] A27x;
	input clk;
	input [31:0] A28x;
	input clk;
	input [31:0] A29x;
	output [31:0] N4x;
	reg [31:0] N4x; 

	parameter [31:0] W0x=32'b00111110111011000100111110011110;
	parameter [31:0] W1x=32'b00111100010101001010001011110111;
	parameter [31:0] W2x=32'b00111101100101000100101000111101;
	parameter [31:0] W3x=32'b00111111001111010010100101001011;
	parameter [31:0] W4x=32'b00111110101100101111011101001001;
	parameter [31:0] W5x=32'b10111111100000001001011111100010;
	parameter [31:0] W6x=32'b00111101101011000101101101000000;
	parameter [31:0] W7x=32'b00111110001000101110011100010000;
	parameter [31:0] W8x=32'b00111110010110101101110010111101;
	parameter [31:0] W9x=32'b10111100100110101100010010011010;
	parameter [31:0] W10x=32'b10111101100011110010110001111101;
	parameter [31:0] W11x=32'b00111101100011011011100110111111;
	parameter [31:0] W12x=32'b10111011011111110101000101011000;
	parameter [31:0] W13x=32'b10111101100110111110000010010001;
	parameter [31:0] W14x=32'b10111100101011101110001101100001;
	parameter [31:0] W15x=32'b00111110101000111010101101100000;
	parameter [31:0] W16x=32'b10111101100000101000101001011110;
	parameter [31:0] W17x=32'b00111101010101011111000100110100;
	parameter [31:0] W18x=32'b10111110011010010001111011110000;
	parameter [31:0] W19x=32'b10111111000001010100001001110111;
	parameter [31:0] W20x=32'b10111110010011010110111000000001;
	parameter [31:0] W21x=32'b10111101101001100101001100011000;
	parameter [31:0] W22x=32'b00111110100000111101111110011100;
	parameter [31:0] W23x=32'b00111110110001101001010011101011;
	parameter [31:0] W24x=32'b10111110101001101101111110100101;
	parameter [31:0] W25x=32'b00111110101011101010001010010101;
	parameter [31:0] W26x=32'b00111111011000000100000010010000;
	parameter [31:0] W27x=32'b00111101111101010110110101000110;
	parameter [31:0] W28x=32'b10111110100011010101011101110100;
	parameter [31:0] W29x=32'b00111110111101000101011111010010;
	parameter [31:0] B0x=32'b00111101111001111100000010001100;
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
	wire [31:0] in15x;
	wire [31:0] in16x;
	wire [31:0] in17x;
	wire [31:0] in18x;
	wire [31:0] in19x;
	wire [31:0] in20x;
	wire [31:0] in21x;
	wire [31:0] in22x;
	wire [31:0] in23x;
	wire [31:0] in24x;
	wire [31:0] in25x;
	wire [31:0] in26x;
	wire [31:0] in27x;
	wire [31:0] in28x;
	wire [31:0] in29x;
	wire [31:0] sum0x;
	wire [31:0] sum1x;
	wire [31:0] sum2x;
	wire [31:0] sum3x;
	wire [31:0] sum4x;
	wire [31:0] sum5x;
	wire [31:0] sum6x;
	wire [31:0] sum7x;
	wire [31:0] sum8x;
	wire [31:0] sum9x;
	wire [31:0] sum10x;
	wire [31:0] sum11x;
	wire [31:0] sum12x;
	wire [31:0] sum13x;
	wire [31:0] sum14x;
	wire [31:0] sum15x;
	wire [31:0] sum16x;
	wire [31:0] sum17x;
	wire [31:0] sum18x;
	wire [31:0] sum19x;
	wire [31:0] sum20x;
	wire [31:0] sum21x;
	wire [31:0] sum22x;
	wire [31:0] sum23x;
	wire [31:0] sum24x;
	wire [31:0] sum25x;
	wire [31:0] sum26x;
	wire [31:0] sum27x;
	wire [31:0] sum28x;

	wire [31:0] sumout;
	float_mult mult0(
		.x(A0x),
		.y(W0x),
		.z(in0x));
	float_mult mult1(
		.x(A1x),
		.y(W1x),
		.z(in1x));
	float_mult mult2(
		.x(A2x),
		.y(W2x),
		.z(in2x));
	float_mult mult3(
		.x(A3x),
		.y(W3x),
		.z(in3x));
	float_mult mult4(
		.x(A4x),
		.y(W4x),
		.z(in4x));
	float_mult mult5(
		.x(A5x),
		.y(W5x),
		.z(in5x));
	float_mult mult6(
		.x(A6x),
		.y(W6x),
		.z(in6x));
	float_mult mult7(
		.x(A7x),
		.y(W7x),
		.z(in7x));
	float_mult mult8(
		.x(A8x),
		.y(W8x),
		.z(in8x));
	float_mult mult9(
		.x(A9x),
		.y(W9x),
		.z(in9x));
	float_mult mult10(
		.x(A10x),
		.y(W10x),
		.z(in10x));
	float_mult mult11(
		.x(A11x),
		.y(W11x),
		.z(in11x));
	float_mult mult12(
		.x(A12x),
		.y(W12x),
		.z(in12x));
	float_mult mult13(
		.x(A13x),
		.y(W13x),
		.z(in13x));
	float_mult mult14(
		.x(A14x),
		.y(W14x),
		.z(in14x));
	float_mult mult15(
		.x(A15x),
		.y(W15x),
		.z(in15x));
	float_mult mult16(
		.x(A16x),
		.y(W16x),
		.z(in16x));
	float_mult mult17(
		.x(A17x),
		.y(W17x),
		.z(in17x));
	float_mult mult18(
		.x(A18x),
		.y(W18x),
		.z(in18x));
	float_mult mult19(
		.x(A19x),
		.y(W19x),
		.z(in19x));
	float_mult mult20(
		.x(A20x),
		.y(W20x),
		.z(in20x));
	float_mult mult21(
		.x(A21x),
		.y(W21x),
		.z(in21x));
	float_mult mult22(
		.x(A22x),
		.y(W22x),
		.z(in22x));
	float_mult mult23(
		.x(A23x),
		.y(W23x),
		.z(in23x));
	float_mult mult24(
		.x(A24x),
		.y(W24x),
		.z(in24x));
	float_mult mult25(
		.x(A25x),
		.y(W25x),
		.z(in25x));
	float_mult mult26(
		.x(A26x),
		.y(W26x),
		.z(in26x));
	float_mult mult27(
		.x(A27x),
		.y(W27x),
		.z(in27x));
	float_mult mult28(
		.x(A28x),
		.y(W28x),
		.z(in28x));
	float_mult mult29(
		.x(A29x),
		.y(W29x),
		.z(in29x));

	float_adder add0(
		.a(in0x),
		.b(in1x),
		.Out(sum0x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add1(
		.a(in2x),
		.b(in3x),
		.Out(sum1x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add2(
		.a(in4x),
		.b(in5x),
		.Out(sum2x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add3(
		.a(in6x),
		.b(in7x),
		.Out(sum3x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add4(
		.a(in8x),
		.b(in9x),
		.Out(sum4x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add5(
		.a(in10x),
		.b(in11x),
		.Out(sum5x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add6(
		.a(in12x),
		.b(in13x),
		.Out(sum6x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add7(
		.a(in14x),
		.b(in15x),
		.Out(sum7x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add8(
		.a(in16x),
		.b(in17x),
		.Out(sum8x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add9(
		.a(in18x),
		.b(in19x),
		.Out(sum9x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add10(
		.a(in20x),
		.b(in21x),
		.Out(sum10x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add11(
		.a(in22x),
		.b(in23x),
		.Out(sum11x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add12(
		.a(in24x),
		.b(in25x),
		.Out(sum12x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add13(
		.a(in26x),
		.b(in27x),
		.Out(sum13x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add14(
		.a(in28x),
		.b(in29x),
		.Out(sum14x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add15(
		.a(sum0x),
		.b(sum1x),
		.Out(sum15x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add16(
		.a(sum2x),
		.b(sum3x),
		.Out(sum16x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add17(
		.a(sum4x),
		.b(sum5x),
		.Out(sum17x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add18(
		.a(sum6x),
		.b(sum7x),
		.Out(sum18x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add19(
		.a(sum8x),
		.b(sum9x),
		.Out(sum19x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add20(
		.a(sum10x),
		.b(sum11x),
		.Out(sum20x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add21(
		.a(sum12x),
		.b(sum13x),
		.Out(sum21x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add22(
		.a(sum14x),
		.b(B0x),
		.Out(sum22x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add23(
		.a(sum15x),
		.b(sum16x),
		.Out(sum23x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add24(
		.a(sum17x),
		.b(sum18x),
		.Out(sum24x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add25(
		.a(sum19x),
		.b(sum20x),
		.Out(sum25x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add26(
		.a(sum21x),
		.b(sum22x),
		.Out(sum26x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add27(
		.a(sum23x),
		.b(sum24x),
		.Out(sum27x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add28(
		.a(sum25x),
		.b(sum26x),
		.Out(sum28x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add29(
		.a(sum27x),
		.b(sum28x),
		.Out(sumout),
		.Out_test(),
		.shift(),
		.c_out());
always@(posedge clk)
	begin 
		if(sumout[31]==0)
			N4x=sumout;
		else
			N4x=32'd0;
	end
endmodule