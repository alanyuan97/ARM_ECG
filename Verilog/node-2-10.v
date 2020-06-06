module node2_10(clk,reset,N10x,A0x,A1x,A2x,A3x,A4x);
	input clk;
	input reset;
	input [23:0] A0x;
	input [23:0] A1x;
	input [23:0] A2x;
	input [23:0] A3x;
	input [23:0] A4x;
	output reg [23:0] N10x;

	parameter [23:0] W0x=8;
	parameter [23:0] W1x=-11;
	parameter [23:0] W2x=25;
	parameter [23:0] W3x=21;
	parameter [23:0] W4x=28;
	parameter [23:0] B0x=4;
	wire [23:0] in0x;
	wire [23:0] in1x;
	wire [23:0] in2x;
	wire [23:0] in3x;
	wire [23:0] in4x;

	reg [23:0] sumout;
	reg [23:0] A0x_c;
	reg [23:0] A1x_c;
	reg [23:0] A2x_c;
	reg [23:0] A3x_c;
	reg [23:0] A4x_c;


	assign in0x=A0x_c*W0x;
	assign in1x=A1x_c*W1x;
	assign in2x=A2x_c*W2x;
	assign in3x=A3x_c*W3x;
	assign in4x=A4x_c*W4x;

always@(posedge clk)
	begin

	if(reset) begin
		N10x<=24'b0;
		sumout<=24'b0;
		A0x_c<=24'b0;
		A1x_c<=24'b0;
		A2x_c<=24'b0;
		A3x_c<=24'b0;
		A4x_c<=24'b0;
		sumout<=24'b0;
	end

	A0x_c<=A0x;
	A1x_c<=A1x;
	A2x_c<=A2x;
	A3x_c<=A3x;
	A4x_c<=A4x;
	sumout<=in0x+in1x+in2x+in3x+in4x+B0x;

	if(sumout[23]==0)
		begin
		if(sumout>8192)
			N10x<=8'b11111111;
		else
			N10x<=sumout[12:5];
		end
	else
		begin
		N10x<=24'd0;
		end
	end
endmodule
