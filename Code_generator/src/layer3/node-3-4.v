module node3_4(N1,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9);
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
	output [31:0] N1;

	parameter [31:0] W0=32'b00111101010111010010010101001011;
	parameter [31:0] W1=32'b00111110110010010011110010111011;
	parameter [31:0] W2=32'b10111111010100100000011000011100;
	parameter [31:0] W3=32'b10111110101110110101010100001000;
	parameter [31:0] W4=32'b10111111000000111111000101101111;
	parameter [31:0] W5=32'b10111110110110000110101111110100;
	parameter [31:0] W6=32'b00111110110000010000010100101010;
	parameter [31:0] W7=32'b00111110101100101000011110100010;
	parameter [31:0] W8=32'b00111110100111110110100101111011;
	parameter [31:0] W9=32'b00111111000101111001110010011000;
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
	wire [31:0] sum0;
	wire [31:0] sum1;
	wire [31:0] sum2;
	wire [31:0] sum3;
	wire [31:0] sum4;
	wire [31:0] sum5;
	wire [31:0] sum6;
	wire [31:0] sum7;
	wire [31:0] sum8;

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
		.a(sum0),
		.b(sum1),
		.Out(sum5),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add6(
		.a(sum2),
		.b(sum3),
		.Out(sum6),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add7(
		.a(sum5),
		.b(sum6),
		.Out(sum7),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add8(
		.a(sum7),
		.b(sum4),
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
