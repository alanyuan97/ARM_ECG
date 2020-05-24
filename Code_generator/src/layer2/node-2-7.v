module node2_7(N1,A0,A1,A2,A3,A4);
	input [31:0] A0;
	input [31:0] A1;
	input [31:0] A2;
	input [31:0] A3;
	input [31:0] A4;
	output [31:0] N1;

	parameter [31:0] W0=32'b10111101000110100100101101100011;
	parameter [31:0] W1=32'b10111111001110010001110100101010;
	parameter [31:0] W2=32'b00111110100001110111011111011110;
	parameter [31:0] W3=32'b00111110111110010010011111111010;
	parameter [31:0] W4=32'b10111111010000100100101010100111;
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
		.a(sum0),
		.b(sum1),
		.Out(sum2),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add3(
		.a(sum2),
		.b(in4),
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
