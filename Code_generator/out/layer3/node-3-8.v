module node3_8(clk,N8x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x);
	input clk;
	input [31:0] A0x;
	input clk;
	input [31:0] A1x;
	input clk;
	input [31:0] A2x;
	input clk;
	input [31:0] A3x;
	input clk;
	input [31:0] A4x;
	input clk;
	input [31:0] A5x;
	input clk;
	input [31:0] A6x;
	input clk;
	input [31:0] A7x;
	input clk;
	input [31:0] A8x;
	input clk;
	input [31:0] A9x;
	output [31:0] N8x;
	reg [31:0] N8x; 

	parameter [31:0] W0x=32'b10111110101100100111100010010011;
	parameter [31:0] W1x=32'b10111110111000111100100001010111;
	parameter [31:0] W2x=32'b00111110000010010001000111010001;
	parameter [31:0] W3x=32'b00111110010001101001111000100010;
	parameter [31:0] W4x=32'b10111110111011010000110011000110;
	parameter [31:0] W5x=32'b00111101010010010110110110101101;
	parameter [31:0] W6x=32'b10111111000001101110011010110101;
	parameter [31:0] W7x=32'b00111110110000001010110001111111;
	parameter [31:0] W8x=32'b00111110101000111000011101111011;
	parameter [31:0] W9x=32'b00111110110001000011011000011100;
	parameter [31:0] B0x=32'b00111110000001101000101011000111;
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
		.b(in5x),
		.Out(sum2x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add3(
		.a(in6x),
		.b(in7x),
		.Out(sum3x),
		.Out_test(),
		.shift(),
		.c_out());

	float_adder add4(
		.a(in8x),
		.b(in9x),
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
		.Out(sumout),
		.Out_test(),
		.shift(),
		.c_out());
always@(posedge clk)
	begin 
		if(sumout[31]==0)
			N8x=sumout;
		else
			N8x=32'd0;
	end
endmodule
