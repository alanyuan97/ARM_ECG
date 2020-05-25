module node2_3(N1,A0,A1,A2,A3,A4);
	input [31:0] A0;
	input [31:0] A1;
	input [31:0] A2;
	input [31:0] A3;
	input [31:0] A4;
	output [31:0] N1;

	parameter [31:0] W0=32'b10111111010100001011000111101000;
	parameter [31:0] W1=32'b10111111010100001000001010100001;
	parameter [31:0] W2=32'b00111111000000111101110111011000;
	parameter [31:0] W3=32'b10111101111111110001111111001000;
	parameter [31:0] W4=32'b10111111011111110111111110001100;
	parameter [31:0] B0=32'b10111101111010110011011110001110;
	wire [31:0] in0;
	wire [31:0] in1;
	wire [31:0] in2;
	wire [31:0] in3;
	wire [31:0] in4;
	wire [31:0] sum0;
	wire [31:0] sum1;
	wire [31:0] sum2;
	wire [31:0] sum3;

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
		.b(B0),
		.Out(sum2),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add3(
		.a(sum0),
		.b(sum1),
		.Out(sum3),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add4(
		.a(sum3),
		.b(sum2),
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