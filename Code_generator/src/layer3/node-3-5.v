module node3_5(N1x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x);
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
	output [31:0] N1x;
	reg [31:0] N1x 

	parameter [31:0] W0x=32'b10111110011101011100001101111011;
	parameter [31:0] W1x=32'b10111110100100010011110100101011;
	parameter [31:0] W2x=32'b10111101110101100011011001000000;
	parameter [31:0] W3x=32'b10111110111000000110100111011011;
	parameter [31:0] W4x=32'b10111110011101000101001010011110;
	parameter [31:0] W5x=32'b00111101101000110000111111100001;
	parameter [31:0] W6x=32'b00111110000100010111011110111110;
	parameter [31:0] W7x=32'b10111101110101101010101110100011;
	parameter [31:0] W8x=32'b10111110011010011010101111001000;
	parameter [31:0] W9x=32'b10111011111110010000001110000000;
	parameter [31:0] B0x=32'b00111011000101111100011011100010;
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
	wire [31:0] sum0x;
	wire [31:0] sum1x;
	wire [31:0] sum2x;
	wire [31:0] sum3x;
	wire [31:0] sum4x;
	wire [31:0] sum5x;
	wire [31:0] sum6x;
	wire [31:0] sum7x;
	wire [31:0] sum8x;

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
		.a(sum0x),
		.b(sum1x),
		.Out(sum5x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add6(
		.a(sum2x),
		.b(sum3x),
		.Out(sum6x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add7(
		.a(sum4x),
		.b(B0x),
		.Out(sum7x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add8(
		.a(sum5x),
		.b(sum6x),
		.Out(sum8x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add9(
		.a(sum8x),
		.b(sum7x),
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
