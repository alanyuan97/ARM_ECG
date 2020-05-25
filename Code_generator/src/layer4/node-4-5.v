module node4_5(N1x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x);
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
	output [31:0] N1x;
	reg [31:0] N1x 

	parameter [31:0] W0x=32'b10111110100011110010001110010000;
	parameter [31:0] W1x=32'b00111110110100000001101101110111;
	parameter [31:0] W2x=32'b10111110111101100100110011110011;
	parameter [31:0] W3x=32'b00111101110100101000111000000110;
	parameter [31:0] W4x=32'b10111110101011011111011001110111;
	parameter [31:0] W5x=32'b00111110000100011101010100011111;
	parameter [31:0] W6x=32'b00111111001010010001100010010010;
	parameter [31:0] W7x=32'b00111110000111111001101110101101;
	parameter [31:0] W8x=32'b10111101011010110001110011010111;
	parameter [31:0] W9x=32'b10111110110010010111110101111101;
	parameter [31:0] W10x=32'b10111111001101001010111100011100;
	parameter [31:0] W11x=32'b00111101111111100111110110001111;
	parameter [31:0] W12x=32'b00111110110110010010011110111111;
	parameter [31:0] W13x=32'b00111110101110100011100000101101;
	parameter [31:0] W14x=32'b10111101011100111100101111111101;
	parameter [31:0] B0x=32'b10111101011011010101100100110000;
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
		.b(B0x),
		.Out(sum7x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add8(
		.a(sum0x),
		.b(sum1x),
		.Out(sum8x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add9(
		.a(sum2x),
		.b(sum3x),
		.Out(sum9x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add10(
		.a(sum4x),
		.b(sum5x),
		.Out(sum10x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add11(
		.a(sum6x),
		.b(sum7x),
		.Out(sum11x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add12(
		.a(sum8x),
		.b(sum9x),
		.Out(sum12x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add13(
		.a(sum10x),
		.b(sum11x),
		.Out(sum13x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add14(
		.a(sum12x),
		.b(sum13x),
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
