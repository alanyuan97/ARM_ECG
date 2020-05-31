module node3_15(clk,reset,N15x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x);
	input clk;
	input reset;
	input [15:0] A0x;
	input [15:0] A1x;
	input [15:0] A2x;
	input [15:0] A3x;
	input [15:0] A4x;
	input [15:0] A5x;
	input [15:0] A6x;
	input [15:0] A7x;
	input [15:0] A8x;
	input [15:0] A9x;
	output reg [15:0] N15x;

	parameter [15:0] W0x=15;
	parameter [15:0] W1x=-1;
	parameter [15:0] W2x=-1;
	parameter [15:0] W3x=7;
	parameter [15:0] W4x=10;
	parameter [15:0] W5x=-14;
	parameter [15:0] W6x=-1;
	parameter [15:0] W7x=5;
	parameter [15:0] W8x=12;
	parameter [15:0] W9x=-13;
	parameter [15:0] B0x=3;
	wire [15:0] in0x;
	wire [15:0] in1x;
	wire [15:0] in2x;
	wire [15:0] in3x;
	wire [15:0] in4x;
	wire [15:0] in5x;
	wire [15:0] in6x;
	wire [15:0] in7x;
	wire [15:0] in8x;
	wire [15:0] in9x;
	reg [15:0] sum0x;
	reg [15:0] sum1x;
	reg [15:0] sum2x;
	reg [15:0] sum3x;
	reg [15:0] sum4x;
	reg [15:0] sum5x;
	reg [15:0] sum6x;
	reg [15:0] sum7x;
	reg [15:0] sum8x;

	reg [15:0] sumout;
	reg [15:0] A0x_c;
	reg [15:0] A1x_c;
	reg [15:0] A2x_c;
	reg [15:0] A3x_c;
	reg [15:0] A4x_c;
	reg [15:0] A5x_c;
	reg [15:0] A6x_c;
	reg [15:0] A7x_c;
	reg [15:0] A8x_c;
	reg [15:0] A9x_c;


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
		N15x<=16'b0;
		sumout<=16'b0;
		A0x_c<=16'b0;
		A1x_c<=16'b0;
		A2x_c<=16'b0;
		A3x_c<=16'b0;
		A4x_c<=16'b0;
		A5x_c<=16'b0;
		A6x_c<=16'b0;
		A7x_c<=16'b0;
		A8x_c<=16'b0;
		A9x_c<=16'b0;
		sum0x<=16'b0;
		sum1x<=16'b0;
		sum2x<=16'b0;
		sum3x<=16'b0;
		sum4x<=16'b0;
		sum5x<=16'b0;
		sum6x<=16'b0;
		sum7x<=16'b0;
		sum8x<=16'b0;
		sumout<=16'b0;
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

	if(sumout[15]==0)
		begin
		N15x<=sumout;
		end
	else
		begin
		N15x<=16'd0;
		end
	end
endmodule
