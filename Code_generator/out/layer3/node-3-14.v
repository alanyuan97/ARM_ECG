module node3_14(clk,reset,N14x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x);
	input clk;
	input reset;
	input signed [7:0] A0x;
	input signed [7:0] A1x;
	input signed [7:0] A2x;
	input signed [7:0] A3x;
	input signed [7:0] A4x;
	input signed [7:0] A5x;
	input signed [7:0] A6x;
	input signed [7:0] A7x;
	input signed [7:0] A8x;
	input signed [7:0] A9x;
	output reg [7:0] N14x;

	parameter signed [7:0] W0x=8'sb11001110;
	parameter signed [7:0] W1x=8'sb11010111;
	parameter signed [7:0] W2x=8'sb00000100;
	parameter signed [7:0] W3x=8'sb11010110;
	parameter signed [7:0] W4x=8'sb01000000;
	parameter signed [7:0] W5x=8'sb00110101;
	parameter signed [7:0] W6x=8'sb01100001;
	parameter signed [7:0] W7x=8'sb11111011;
	parameter signed [7:0] W8x=8'sb10010111;
	parameter signed [7:0] W9x=8'sb11111110;
	parameter signed [7:0] B0x=8'sb00000000;
	wire signed [7:0] in0x;
	wire signed [7:0] in1x;
	wire signed [7:0] in2x;
	wire signed [7:0] in3x;
	wire signed [7:0] in4x;
	wire signed [7:0] in5x;
	wire signed [7:0] in6x;
	wire signed [7:0] in7x;
	wire signed [7:0] in8x;
	wire signed [7:0] in9x;
	reg signed [7:0] sum0x;
	reg signed [7:0] sum1x;
	reg signed [7:0] sum2x;
	reg signed [7:0] sum3x;
	reg signed [7:0] sum4x;
	reg signed [7:0] sum5x;
	reg signed [7:0] sum6x;
	reg signed [7:0] sum7x;
	reg signed [7:0] sum8x;

	reg [7:0] sumout;
	reg signed [7:0] A0x_c;
	reg signed [7:0] A1x_c;
	reg signed [7:0] A2x_c;
	reg signed [7:0] A3x_c;
	reg signed [7:0] A4x_c;
	reg signed [7:0] A5x_c;
	reg signed [7:0] A6x_c;
	reg signed [7:0] A7x_c;
	reg signed [7:0] A8x_c;
	reg signed [7:0] A9x_c;


	assign in0x=A0x_c*W0x;
	assign in1x=A1x_c*W1x;
	assign in2x=A2x_c*W2x;
	assign in3x=A3x_c*W3x;
	assign in4x=A4x_c*W4x;
	assign in5x=A5x_c*W5x;
	assign in6x=A6x_c*W6x;
	assign in7x=A7x_c*W7x;
	assign in8x=A8x_c*W8x;
	assign in9x=A9x_c*W9x;

always@(posedge clk)
	begin

	if(reset) begin
		N14x<=8'b0;
		sumout<=8'b0;
		A0x_c<=8'b0;
		A1x_c<=8'b0;
		A2x_c<=8'b0;
		A3x_c<=8'b0;
		A4x_c<=8'b0;
		A5x_c<=8'b0;
		A6x_c<=8'b0;
		A7x_c<=8'b0;
		A8x_c<=8'b0;
		A9x_c<=8'b0;
		sum0x<=8'b0;
		sum1x<=8'b0;
		sum2x<=8'b0;
		sum3x<=8'b0;
		sum4x<=8'b0;
		sum5x<=8'b0;
		sum6x<=8'b0;
		sum7x<=8'b0;
		sum8x<=8'b0;
		sumout<=8'b0;
	end

	A0x_c<=A0x;
	A1x_c<=A1x;
	A2x_c<=A2x;
	A3x_c<=A3x;
	A4x_c<=A4x;
	A5x_c<=A5x;
	A6x_c<=A6x;
	A7x_c<=A7x;
	A8x_c<=A8x;
	A9x_c<=A9x;
	sumout<=in0x+in1x+in2x+in3x+in4x+in5x+in6x+in7x+in8x+in9x+B0x;

	if(sumout[7]==0)
		begin
		N14x<=sumout;
		end
	else
		begin
		N14x<=8'd0;
		end
	end
endmodule
