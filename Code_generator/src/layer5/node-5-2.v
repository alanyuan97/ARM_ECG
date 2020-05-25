module node5_2(N1,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29);
	input [31:0] A0;
	input [31:0] A1;
	input [31:0] A2;
	input [31:0] A3;
	input [31:0] A4;
	input [31:0] A5;
	input [31:0] A6;
	input [31:0] A7;
	input [31:0] A8;
	input [31:0] A9;
	input [31:0] A10;
	input [31:0] A11;
	input [31:0] A12;
	input [31:0] A13;
	input [31:0] A14;
	input [31:0] A15;
	input [31:0] A16;
	input [31:0] A17;
	input [31:0] A18;
	input [31:0] A19;
	input [31:0] A20;
	input [31:0] A21;
	input [31:0] A22;
	input [31:0] A23;
	input [31:0] A24;
	input [31:0] A25;
	input [31:0] A26;
	input [31:0] A27;
	input [31:0] A28;
	input [31:0] A29;
	output [31:0] N1;

	parameter [31:0] W0=32'b00111110000001010011000101000111;
	parameter [31:0] W1=32'b00111101111001011101101011001111;
	parameter [31:0] W2=32'b00111110011001101101110001101101;
	parameter [31:0] W3=32'b10111110100110010001101111110011;
	parameter [31:0] W4=32'b10111110010100010000101110110010;
	parameter [31:0] W5=32'b10111110100101000100001001101101;
	parameter [31:0] W6=32'b00111101100010101011001011110001;
	parameter [31:0] W7=32'b00111110101011100110110000001000;
	parameter [31:0] W8=32'b10111110111011000110100011100010;
	parameter [31:0] W9=32'b10111110010101111101100000000010;
	parameter [31:0] W10=32'b00111110101001000010010111111010;
	parameter [31:0] W11=32'b10111101100110001011100010010011;
	parameter [31:0] W12=32'b10111101100000111100100000010000;
	parameter [31:0] W13=32'b10111111000000011111100100000011;
	parameter [31:0] W14=32'b10111110101011110000001111011000;
	parameter [31:0] W15=32'b00111110000101001011111011101000;
	parameter [31:0] W16=32'b00111100101011111100011010100011;
	parameter [31:0] W17=32'b10111110010001011000001001011110;
	parameter [31:0] W18=32'b00111101110111001011011000100111;
	parameter [31:0] W19=32'b00111110000100111111101010101000;
	parameter [31:0] W20=32'b10111110010101100000111100111111;
	parameter [31:0] W21=32'b00111101100111111001101100111010;
	parameter [31:0] W22=32'b10111110100000101100100010001100;
	parameter [31:0] W23=32'b00111101110101111010101001000001;
	parameter [31:0] W24=32'b10111100011000011001111000010010;
	parameter [31:0] W25=32'b00111110001001111110010101010011;
	parameter [31:0] W26=32'b00111110011010101010010001100010;
	parameter [31:0] W27=32'b10111110001011010110001110110110;
	parameter [31:0] W28=32'b00111101100011011011011000010100;
	parameter [31:0] W29=32'b10111110100000011001100011111010;
	parameter [31:0] B0=32'b00111100011011000010111000000111;
	wire [31:0] in0;
	wire [31:0] in1;
	wire [31:0] in2;
	wire [31:0] in3;
	wire [31:0] in4;
	wire [31:0] in5;
	wire [31:0] in6;
	wire [31:0] in7;
	wire [31:0] in8;
	wire [31:0] in9;
	wire [31:0] in10;
	wire [31:0] in11;
	wire [31:0] in12;
	wire [31:0] in13;
	wire [31:0] in14;
	wire [31:0] in15;
	wire [31:0] in16;
	wire [31:0] in17;
	wire [31:0] in18;
	wire [31:0] in19;
	wire [31:0] in20;
	wire [31:0] in21;
	wire [31:0] in22;
	wire [31:0] in23;
	wire [31:0] in24;
	wire [31:0] in25;
	wire [31:0] in26;
	wire [31:0] in27;
	wire [31:0] in28;
	wire [31:0] in29;
	wire [31:0] sum0;
	wire [31:0] sum1;
	wire [31:0] sum2;
	wire [31:0] sum3;
	wire [31:0] sum4;
	wire [31:0] sum5;
	wire [31:0] sum6;
	wire [31:0] sum7;
	wire [31:0] sum8;
	wire [31:0] sum9;
	wire [31:0] sum10;
	wire [31:0] sum11;
	wire [31:0] sum12;
	wire [31:0] sum13;
	wire [31:0] sum14;
	wire [31:0] sum15;
	wire [31:0] sum16;
	wire [31:0] sum17;
	wire [31:0] sum18;
	wire [31:0] sum19;
	wire [31:0] sum20;
	wire [31:0] sum21;
	wire [31:0] sum22;
	wire [31:0] sum23;
	wire [31:0] sum24;
	wire [31:0] sum25;
	wire [31:0] sum26;
	wire [31:0] sum27;
	wire [31:0] sum28;

	float_mult mult0(
		.x(A0),
		.y(W0),
		.z(in0));
	float_mult mult1(
		.x(A1),
		.y(W1),
		.z(in1));
	float_mult mult2(
		.x(A2),
		.y(W2),
		.z(in2));
	float_mult mult3(
		.x(A3),
		.y(W3),
		.z(in3));
	float_mult mult4(
		.x(A4),
		.y(W4),
		.z(in4));
	float_mult mult5(
		.x(A5),
		.y(W5),
		.z(in5));
	float_mult mult6(
		.x(A6),
		.y(W6),
		.z(in6));
	float_mult mult7(
		.x(A7),
		.y(W7),
		.z(in7));
	float_mult mult8(
		.x(A8),
		.y(W8),
		.z(in8));
	float_mult mult9(
		.x(A9),
		.y(W9),
		.z(in9));
	float_mult mult10(
		.x(A10),
		.y(W10),
		.z(in10));
	float_mult mult11(
		.x(A11),
		.y(W11),
		.z(in11));
	float_mult mult12(
		.x(A12),
		.y(W12),
		.z(in12));
	float_mult mult13(
		.x(A13),
		.y(W13),
		.z(in13));
	float_mult mult14(
		.x(A14),
		.y(W14),
		.z(in14));
	float_mult mult15(
		.x(A15),
		.y(W15),
		.z(in15));
	float_mult mult16(
		.x(A16),
		.y(W16),
		.z(in16));
	float_mult mult17(
		.x(A17),
		.y(W17),
		.z(in17));
	float_mult mult18(
		.x(A18),
		.y(W18),
		.z(in18));
	float_mult mult19(
		.x(A19),
		.y(W19),
		.z(in19));
	float_mult mult20(
		.x(A20),
		.y(W20),
		.z(in20));
	float_mult mult21(
		.x(A21),
		.y(W21),
		.z(in21));
	float_mult mult22(
		.x(A22),
		.y(W22),
		.z(in22));
	float_mult mult23(
		.x(A23),
		.y(W23),
		.z(in23));
	float_mult mult24(
		.x(A24),
		.y(W24),
		.z(in24));
	float_mult mult25(
		.x(A25),
		.y(W25),
		.z(in25));
	float_mult mult26(
		.x(A26),
		.y(W26),
		.z(in26));
	float_mult mult27(
		.x(A27),
		.y(W27),
		.z(in27));
	float_mult mult28(
		.x(A28),
		.y(W28),
		.z(in28));
	float_mult mult29(
		.x(A29),
		.y(W29),
		.z(in29));

	float_adder add0(
		.a(in0),
		.b(in1),
		.Out(sum0),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add1(
		.a(in2),
		.b(in3),
		.Out(sum1),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add2(
		.a(in4),
		.b(in5),
		.Out(sum2),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add3(
		.a(in6),
		.b(in7),
		.Out(sum3),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add4(
		.a(in8),
		.b(in9),
		.Out(sum4),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add5(
		.a(in10),
		.b(in11),
		.Out(sum5),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add6(
		.a(in12),
		.b(in13),
		.Out(sum6),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add7(
		.a(in14),
		.b(in15),
		.Out(sum7),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add8(
		.a(in16),
		.b(in17),
		.Out(sum8),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add9(
		.a(in18),
		.b(in19),
		.Out(sum9),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add10(
		.a(in20),
		.b(in21),
		.Out(sum10),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add11(
		.a(in22),
		.b(in23),
		.Out(sum11),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add12(
		.a(in24),
		.b(in25),
		.Out(sum12),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add13(
		.a(in26),
		.b(in27),
		.Out(sum13),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add14(
		.a(in28),
		.b(in29),
		.Out(sum14),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add15(
		.a(sum0),
		.b(sum1),
		.Out(sum15),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add16(
		.a(sum2),
		.b(sum3),
		.Out(sum16),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add17(
		.a(sum4),
		.b(sum5),
		.Out(sum17),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add18(
		.a(sum6),
		.b(sum7),
		.Out(sum18),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add19(
		.a(sum8),
		.b(sum9),
		.Out(sum19),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add20(
		.a(sum10),
		.b(sum11),
		.Out(sum20),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add21(
		.a(sum12),
		.b(sum13),
		.Out(sum21),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add22(
		.a(sum14),
		.b(B0),
		.Out(sum22),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add23(
		.a(sum15),
		.b(sum16),
		.Out(sum23),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add24(
		.a(sum17),
		.b(sum18),
		.Out(sum24),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add25(
		.a(sum19),
		.b(sum20),
		.Out(sum25),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add26(
		.a(sum21),
		.b(sum22),
		.Out(sum26),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add27(
		.a(sum23),
		.b(sum24),
		.Out(sum27),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add28(
		.a(sum25),
		.b(sum26),
		.Out(sum28),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add29(
		.a(sum27),
		.b(sum28),
		.Out(N1),
		.Out_test(),
		.shift(),
		.c_out());
always@(*)
	begin 
		if(N1[31]==0)
			N1=N1;
		else
			N1=32'd0;
	end
endmodule
