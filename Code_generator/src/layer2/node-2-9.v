module node2_9(N1x,A0x,A1x,A2x,A3x,A4x);
	input [31:0] A0x;
	input [31:0] A1x;
	input [31:0] A2x;
	input [31:0] A3x;
	input [31:0] A4x;
	output [31:0] N1x;
	reg [31:0] N1x 

	parameter [31:0] W0x=32'b10111101110011011000011101010000;
	parameter [31:0] W1x=32'b10111110001011111101000101101000;
	parameter [31:0] W2x=32'b10111110111010111001111101001000;
	parameter [31:0] W3x=32'b10111110100010111000011110101010;
	parameter [31:0] W4x=32'b10111110110010110001101111000000;
	parameter [31:0] B0x=32'b00000000000000000000000000000000;
	wire [31:0] in0x;
	wire [31:0] in1x;
	wire [31:0] in2x;
	wire [31:0] in3x;
	wire [31:0] in4x;
	wire [31:0] sum0x;
	wire [31:0] sum1x;
	wire [31:0] sum2x;
	wire [31:0] sum3x;

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
		.b(B0x),
		.Out(sum2x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add3(
		.a(sum0x),
		.b(sum1x),
		.Out(sum3x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add4(
		.a(sum3x),
		.b(sum2x),
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
