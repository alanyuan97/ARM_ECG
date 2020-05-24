module node2_1(A0,A1,A2,A3,A4);
	input [31:0] A0;
	input [31:0] A1;
	input [31:0] A2;
	input [31:0] A3;
	input [31:0] A4;
	output [31:0] N1;

	parameter [31:0] W0=32'b10111110100101100111110011000111;
	parameter [31:0] W1=32'b10111110100101100111110011000111;
	parameter [31:0] W2=32'b10111110100101100111110011000111;
	parameter [31:0] W3=32'b10111110100101100111110011000111;
	parameter [31:0] W4=32'b10111110100101100111110011000111;
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
		.a(in1),
		.b(sum0),
		.Out(sum1),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add2(
		.a(in2),
		.b(sum1),
		.Out(sum2),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add3(
		.a(in3),
		.b(sum2),
		.Out(sum3),
		.Out_test(),
		.shift(),
		.c_out());
always@(*)
	begin 
		if(sum3[31]==0)
			N1=sum3;
		else
			N1=32'd0;
	end
endmodule
