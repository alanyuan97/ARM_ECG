module node6_10(N1,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14);
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
	output [31:0] N1;

	parameter [31:0] W0=32'b10111101110011111011001000010101;
	parameter [31:0] W1=32'b00111111000010001001101001100100;
	parameter [31:0] W2=32'b00111101100011101000011101010000;
	parameter [31:0] W3=32'b00111110011101001001110100001111;
	parameter [31:0] W4=32'b00111111000011101101101010001110;
	parameter [31:0] W5=32'b10111110111001000111011011101001;
	parameter [31:0] W6=32'b00111101101101111000001010110001;
	parameter [31:0] W7=32'b00111110010101000101010000111100;
	parameter [31:0] W8=32'b10111111000100001100000111011100;
	parameter [31:0] W9=32'b00111110010010110111110010011001;
	parameter [31:0] W10=32'b10111111001110000000010111111111;
	parameter [31:0] W11=32'b00111111001100111101100100111100;
	parameter [31:0] W12=32'b10111111000001100100111000001101;
	parameter [31:0] W13=32'b00111110101100011110001000101010;
	parameter [31:0] W14=32'b10111110100101000110011001110000;
	parameter [31:0] B0=32'b10111110000101001011101100011110;
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
		.b(B0),
		.Out(sum7),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add8(
		.a(sum0),
		.b(sum1),
		.Out(sum8),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add9(
		.a(sum2),
		.b(sum3),
		.Out(sum9),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add10(
		.a(sum4),
		.b(sum5),
		.Out(sum10),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add11(
		.a(sum6),
		.b(sum7),
		.Out(sum11),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add12(
		.a(sum8),
		.b(sum9),
		.Out(sum12),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add13(
		.a(sum10),
		.b(sum11),
		.Out(sum13),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add14(
		.a(sum12),
		.b(sum13),
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
