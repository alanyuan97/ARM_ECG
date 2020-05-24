module node4_12(A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14);
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

	parameter [31:0] W0=32'b10111110001001110011101110110010;
	parameter [31:0] W1=32'b10111110001001110011101110110010;
	parameter [31:0] W2=32'b10111110001001110011101110110010;
	parameter [31:0] W3=32'b10111110001001110011101110110010;
	parameter [31:0] W4=32'b10111110001001110011101110110010;
	parameter [31:0] W5=32'b10111110001001110011101110110010;
	parameter [31:0] W6=32'b10111110001001110011101110110010;
	parameter [31:0] W7=32'b10111110001001110011101110110010;
	parameter [31:0] W8=32'b10111110001001110011101110110010;
	parameter [31:0] W9=32'b10111110001001110011101110110010;
	parameter [31:0] W10=32'b10111110001001110011101110110010;
	parameter [31:0] W11=32'b10111110001001110011101110110010;
	parameter [31:0] W12=32'b10111110001001110011101110110010;
	parameter [31:0] W13=32'b10111110001001110011101110110010;
	parameter [31:0] W14=32'b10111110001001110011101110110010;
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
	float_adder add4(
		.a(in4),
		.b(sum3),
		.Out(sum4),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add5(
		.a(in5),
		.b(sum4),
		.Out(sum5),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add6(
		.a(in6),
		.b(sum5),
		.Out(sum6),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add7(
		.a(in7),
		.b(sum6),
		.Out(sum7),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add8(
		.a(in8),
		.b(sum7),
		.Out(sum8),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add9(
		.a(in9),
		.b(sum8),
		.Out(sum9),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add10(
		.a(in10),
		.b(sum9),
		.Out(sum10),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add11(
		.a(in11),
		.b(sum10),
		.Out(sum11),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add12(
		.a(in12),
		.b(sum11),
		.Out(sum12),
		.Out_test(),
		.shift(),
		.c_out());
	float_adder add13(
		.a(in13),
		.b(sum12),
		.Out(sum13),
		.Out_test(),
		.shift(),
		.c_out());
always@(*)
	begin 
		if(sum13[31]==0)
			N1=sum13;
		else
			N1=32'd0;
	end
endmodule
