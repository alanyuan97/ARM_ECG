module node5_1(N1x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x);
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
	input [31:0] A15x;
	input [31:0] A16x;
	input [31:0] A17x;
	input [31:0] A18x;
	input [31:0] A19x;
	input [31:0] A20x;
	input [31:0] A21x;
	input [31:0] A22x;
	input [31:0] A23x;
	input [31:0] A24x;
	input [31:0] A25x;
	input [31:0] A26x;
	input [31:0] A27x;
	input [31:0] A28x;
	input [31:0] A29x;
	output [31:0] N1x;
	reg [31:0] N1x 

	parameter [31:0] W0x=32'b10111110011110111001001100110101;
	parameter [31:0] W1x=32'b10111110111011010000000000001111;
	parameter [31:0] W2x=32'b00111110100010000100111011011011;
	parameter [31:0] W3x=32'b10111101000110110000110111111100;
	parameter [31:0] W4x=32'b00111110101111111101010101010111;
	parameter [31:0] W5x=32'b10111111011111110111110100110110;
	parameter [31:0] W6x=32'b00111110101000110110000101011001;
	parameter [31:0] W7x=32'b00111110100110000001101011111011;
	parameter [31:0] W8x=32'b00111110010101111001011110010101;
	parameter [31:0] W9x=32'b00111110000010101001110000110101;
	parameter [31:0] W10x=32'b00111110010001101111100011011001;
	parameter [31:0] W11x=32'b00111110110001100010101000011010;
	parameter [31:0] W12x=32'b00111110110101010110000001111001;
	parameter [31:0] W13x=32'b00111100010110101110100000011001;
	parameter [31:0] W14x=32'b10111110101110101100100111100001;
	parameter [31:0] W15x=32'b00111110001110101011001111101101;
	parameter [31:0] W16x=32'b10111111010010011000101110010011;
	parameter [31:0] W17x=32'b10111000011100010111111011101011;
	parameter [31:0] W18x=32'b10111110110100110011011011101110;
	parameter [31:0] W19x=32'b00111101110111111110101110000111;
	parameter [31:0] W20x=32'b10111101010011010111110011001100;
	parameter [31:0] W21x=32'b10111111000010000100101101000010;
	parameter [31:0] W22x=32'b00111101110101001101000010001101;
	parameter [31:0] W23x=32'b00111100000101011110111100011000;
	parameter [31:0] W24x=32'b10111110010010000111011010011111;
	parameter [31:0] W25x=32'b10111101100101010100110111110111;
	parameter [31:0] W26x=32'b00111110001110000110101111001111;
	parameter [31:0] W27x=32'b00111110110100011000011100001000;
	parameter [31:0] W28x=32'b00111100111010110010000010110000;
	parameter [31:0] W29x=32'b00111111001000101100011101001100;
	parameter [31:0] B0x=32'b00111101001100101001011001100101;
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
		.a(in0xx),
		.b(in1xx),
		.Out(sum0x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add1(
		.a(in2xx),
		.b(in3xx),
		.Out(sum1x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add2(
		.a(in4xx),
		.b(in5xx),
		.Out(sum2x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add3(
		.a(in6xx),
		.b(in7xx),
		.Out(sum3x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add4(
		.a(in8xx),
		.b(in9xx),
		.Out(sum4x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add5(
		.a(in10xx),
		.b(in11xx),
		.Out(sum5x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add6(
		.a(in12xx),
		.b(in13xx),
		.Out(sum6x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add7(
		.a(in14xx),
		.b(in15xx),
		.Out(sum7x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add8(
		.a(in16xx),
		.b(in17xx),
		.Out(sum8x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add9(
		.a(in18xx),
		.b(in19xx),
		.Out(sum9x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add10(
		.a(in20xx),
		.b(in21xx),
		.Out(sum10x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add11(
		.a(in22xx),
		.b(in23xx),
		.Out(sum11x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add12(
		.a(in24xx),
		.b(in25xx),
		.Out(sum12x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add13(
		.a(in26xx),
		.b(in27xx),
		.Out(sum13x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add14(
		.a(in28xx),
		.b(in29xx),
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
		.Out(N1x),
		.Out_test(),
		.shift(),
		.c_out());
always@(*)
	begin 
		if(N1x[31]==0)
			N1x=N1x;
		else
			N1x=32'd0;
	end
endmodule
