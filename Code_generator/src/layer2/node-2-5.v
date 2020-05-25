module node2_5(N5x,A0x,A1x,A2x,A3x,A4x);
	input [31:0] A0x;
	input [31:0] A1x;
	input [31:0] A2x;
	input [31:0] A3x;
	input [31:0] A4x;
	output [31:0] N5x;
	reg [31:0] N5x; 

	parameter [31:0] W0x=32'b10111110100011001101100001011001;
	parameter [31:0] W1x=32'b10111101001100100100101000100100;
	parameter [31:0] W2x=32'b00111111001001111000100100100001;
	parameter [31:0] W3x=32'b10111110111010010011110100010110;
	parameter [31:0] W4x=32'b10111101000000010001010110110010;
	parameter [31:0] B0x=32'b10111101111101010110000001111100;
	wire [31:0] in0x;
	wire [31:0] in1x;
	wire [31:0] in2x;
	wire [31:0] in3x;
	wire [31:0] in4x;
	wire [31:0] sum0x;
	wire [31:0] sum1x;
	wire [31:0] sum2x;
	wire [31:0] sum3x;

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
		.b(B0),
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
		.Out(sumout),
		.Out_test(),
		.shift(),
		.c_out());
always@(*)
	begin 
		if(sumout[31]==0)
			N5x=sumout;
		else
			N5x=32'd0;
	end
endmodule
