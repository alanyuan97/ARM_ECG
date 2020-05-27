module node1_1(clk,N1x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x,A30x,A31x,A32x,A33x,A34x,A35x,A36x,A37x,A38x,A39x,A40x,A41x,A42x,A43x,A44x,A45x,A46x,A47x,A48x,A49x);
	input clk;
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
	input [31:0] A30x;
	input [31:0] A31x;
	input [31:0] A32x;
	input [31:0] A33x;
	input [31:0] A34x;
	input [31:0] A35x;
	input [31:0] A36x;
	input [31:0] A37x;
	input [31:0] A38x;
	input [31:0] A39x;
	input [31:0] A40x;
	input [31:0] A41x;
	input [31:0] A42x;
	input [31:0] A43x;
	input [31:0] A44x;
	input [31:0] A45x;
	input [31:0] A46x;
	input [31:0] A47x;
	input [31:0] A48x;
	input [31:0] A49x;
	output [31:0] N1x;
	reg [31:0] N1x; 

	parameter [31:0] W0x=32'b10111110010000100101111001110100;
	parameter [31:0] W1x=32'b00111110110010110100010001100101;
	parameter [31:0] W2x=32'b00111101010001011110101001100111;
	parameter [31:0] W3x=32'b10111110101111110111001100011011;
	parameter [31:0] W4x=32'b10111110001111011010010010100100;
	parameter [31:0] W5x=32'b10111101100111111101000100111101;
	parameter [31:0] W6x=32'b00111110110100111111101110000001;
	parameter [31:0] W7x=32'b00111101011010111100111010011000;
	parameter [31:0] W8x=32'b00111110110001111010110111100111;
	parameter [31:0] W9x=32'b00111110101010010011101110110010;
	parameter [31:0] W10x=32'b00111110100111100100010010110010;
	parameter [31:0] W11x=32'b00111110110000011111101000011000;
	parameter [31:0] W12x=32'b00111100111110000001010000100010;
	parameter [31:0] W13x=32'b10111011111001000101111000011000;
	parameter [31:0] W14x=32'b00111101111011100110000010110001;
	parameter [31:0] W15x=32'b10111100101000010110010010000010;
	parameter [31:0] W16x=32'b00111110000100000000110101011000;
	parameter [31:0] W17x=32'b10111110011001100011101010001010;
	parameter [31:0] W18x=32'b10111110001001000010100110011100;
	parameter [31:0] W19x=32'b00111100110011101101110011011100;
	parameter [31:0] W20x=32'b10111110001111000011011001101111;
	parameter [31:0] W21x=32'b00111110000001110110100111111000;
	parameter [31:0] W22x=32'b10111110001101111111110000000111;
	parameter [31:0] W23x=32'b10111101000010001001110110100000;
	parameter [31:0] W24x=32'b10111101100100000001001000011100;
	parameter [31:0] W25x=32'b10111110110011110101100010011111;
	parameter [31:0] W26x=32'b10111110110011111110010001110110;
	parameter [31:0] W27x=32'b10111110110111001000101101010101;
	parameter [31:0] W28x=32'b10111111000001100011011111000100;
	parameter [31:0] W29x=32'b10111110101110001001110000110011;
	parameter [31:0] W30x=32'b10111110100110110111010111001001;
	parameter [31:0] W31x=32'b10111110111011010011001000100111;
	parameter [31:0] W32x=32'b10111110011011101011001101001010;
	parameter [31:0] W33x=32'b10111110100100100000011001001111;
	parameter [31:0] W34x=32'b00111101001010000100100101100110;
	parameter [31:0] W35x=32'b00111011111101111001111001011000;
	parameter [31:0] W36x=32'b00111110011010110011011111010000;
	parameter [31:0] W37x=32'b10111100101100000011000111100010;
	parameter [31:0] W38x=32'b10111101100000110010110100101111;
	parameter [31:0] W39x=32'b10111100000010101010100111000011;
	parameter [31:0] W40x=32'b10111101001011000001110001010101;
	parameter [31:0] W41x=32'b00111101100010110101101101110000;
	parameter [31:0] W42x=32'b10111100110111101100001101100100;
	parameter [31:0] W43x=32'b00111101110011101010101010100100;
	parameter [31:0] W44x=32'b10111100010010010101101010101001;
	parameter [31:0] W45x=32'b10111100100101110000000111010001;
	parameter [31:0] W46x=32'b00111101110100010111111011101111;
	parameter [31:0] W47x=32'b00111101111111110110010000011011;
	parameter [31:0] W48x=32'b00111110100011011111001010000111;
	parameter [31:0] W49x=32'b00111110000110111101001100001000;
	parameter [31:0] B0x=32'b10111100011110001100110010110000;
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
	wire [31:0] in30x;
	wire [31:0] in31x;
	wire [31:0] in32x;
	wire [31:0] in33x;
	wire [31:0] in34x;
	wire [31:0] in35x;
	wire [31:0] in36x;
	wire [31:0] in37x;
	wire [31:0] in38x;
	wire [31:0] in39x;
	wire [31:0] in40x;
	wire [31:0] in41x;
	wire [31:0] in42x;
	wire [31:0] in43x;
	wire [31:0] in44x;
	wire [31:0] in45x;
	wire [31:0] in46x;
	wire [31:0] in47x;
	wire [31:0] in48x;
	wire [31:0] in49x;
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
	wire [31:0] sum29x;
	wire [31:0] sum30x;
	wire [31:0] sum31x;
	wire [31:0] sum32x;
	wire [31:0] sum33x;
	wire [31:0] sum34x;
	wire [31:0] sum35x;
	wire [31:0] sum36x;
	wire [31:0] sum37x;
	wire [31:0] sum38x;
	wire [31:0] sum39x;
	wire [31:0] sum40x;
	wire [31:0] sum41x;
	wire [31:0] sum42x;
	wire [31:0] sum43x;
	wire [31:0] sum44x;
	wire [31:0] sum45x;
	wire [31:0] sum46x;
	wire [31:0] sum47x;
	wire [31:0] sum48x;

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
	float_mult mult30(
		.x(A30x),
		.y(W30x),
		.z(in30x));
	float_mult mult31(
		.x(A31x),
		.y(W31x),
		.z(in31x));
	float_mult mult32(
		.x(A32x),
		.y(W32x),
		.z(in32x));
	float_mult mult33(
		.x(A33x),
		.y(W33x),
		.z(in33x));
	float_mult mult34(
		.x(A34x),
		.y(W34x),
		.z(in34x));
	float_mult mult35(
		.x(A35x),
		.y(W35x),
		.z(in35x));
	float_mult mult36(
		.x(A36x),
		.y(W36x),
		.z(in36x));
	float_mult mult37(
		.x(A37x),
		.y(W37x),
		.z(in37x));
	float_mult mult38(
		.x(A38x),
		.y(W38x),
		.z(in38x));
	float_mult mult39(
		.x(A39x),
		.y(W39x),
		.z(in39x));
	float_mult mult40(
		.x(A40x),
		.y(W40x),
		.z(in40x));
	float_mult mult41(
		.x(A41x),
		.y(W41x),
		.z(in41x));
	float_mult mult42(
		.x(A42x),
		.y(W42x),
		.z(in42x));
	float_mult mult43(
		.x(A43x),
		.y(W43x),
		.z(in43x));
	float_mult mult44(
		.x(A44x),
		.y(W44x),
		.z(in44x));
	float_mult mult45(
		.x(A45x),
		.y(W45x),
		.z(in45x));
	float_mult mult46(
		.x(A46x),
		.y(W46x),
		.z(in46x));
	float_mult mult47(
		.x(A47x),
		.y(W47x),
		.z(in47x));
	float_mult mult48(
		.x(A48x),
		.y(W48x),
		.z(in48x));
	float_mult mult49(
		.x(A49x),
		.y(W49x),
		.z(in49x));

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
		.a(in30x),
		.b(in31x),
		.Out(sum15x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add16(
		.a(in32x),
		.b(in33x),
		.Out(sum16x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add17(
		.a(in34x),
		.b(in35x),
		.Out(sum17x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add18(
		.a(in36x),
		.b(in37x),
		.Out(sum18x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add19(
		.a(in38x),
		.b(in39x),
		.Out(sum19x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add20(
		.a(in40x),
		.b(in41x),
		.Out(sum20x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add21(
		.a(in42x),
		.b(in43x),
		.Out(sum21x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add22(
		.a(in44x),
		.b(in45x),
		.Out(sum22x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add23(
		.a(in46x),
		.b(in47x),
		.Out(sum23x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add24(
		.a(in48x),
		.b(in49x),
		.Out(sum24x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add25(
		.a(sum0x),
		.b(sum1x),
		.Out(sum25x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add26(
		.a(sum2x),
		.b(sum3x),
		.Out(sum26x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add27(
		.a(sum4x),
		.b(sum5x),
		.Out(sum27x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add28(
		.a(sum6x),
		.b(sum7x),
		.Out(sum28x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add29(
		.a(sum8x),
		.b(sum9x),
		.Out(sum29x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add30(
		.a(sum10x),
		.b(sum11x),
		.Out(sum30x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add31(
		.a(sum12x),
		.b(sum13x),
		.Out(sum31x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add32(
		.a(sum14x),
		.b(sum15x),
		.Out(sum32x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add33(
		.a(sum16x),
		.b(sum17x),
		.Out(sum33x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add34(
		.a(sum18x),
		.b(sum19x),
		.Out(sum34x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add35(
		.a(sum20x),
		.b(sum21x),
		.Out(sum35x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add36(
		.a(sum22x),
		.b(sum23x),
		.Out(sum36x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add37(
		.a(sum24x),
		.b(B0x),
		.Out(sum37x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add38(
		.a(sum25x),
		.b(sum26x),
		.Out(sum38x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add39(
		.a(sum27x),
		.b(sum28x),
		.Out(sum39x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add40(
		.a(sum29x),
		.b(sum30x),
		.Out(sum40x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add41(
		.a(sum31x),
		.b(sum32x),
		.Out(sum41x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add42(
		.a(sum33x),
		.b(sum34x),
		.Out(sum42x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add43(
		.a(sum35x),
		.b(sum36x),
		.Out(sum43x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add44(
		.a(sum38x),
		.b(sum39x),
		.Out(sum44x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add45(
		.a(sum40x),
		.b(sum41x),
		.Out(sum45x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add46(
		.a(sum42x),
		.b(sum43x),
		.Out(sum46x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add47(
		.a(sum44x),
		.b(sum45x),
		.Out(sum47x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add48(
		.a(sum46x),
		.b(sum37x),
		.Out(sum48x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add49(
		.a(sum47x),
		.b(sum48x),
		.Out(sumout),
		.Out_test(),
		.shift(),
		.c_out());
always@(posedge clk)
	begin 
		if(sumout[31]==0)
			N1x<=sumout;
		else
			N1x<=32'd0;
	end
endmodule
