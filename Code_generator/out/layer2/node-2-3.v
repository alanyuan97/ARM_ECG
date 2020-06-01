module node2_3(clk,reset,N3x,A0x,A1x,A2x,A3x,A4x);
	input clk;
	input reset;
	input [31:0] A0x;
	input [31:0] A1x;
	input [31:0] A2x;
	input [31:0] A3x;
	input [31:0] A4x;
	output reg [31:0] N3x;

	parameter [31:0] W0x=-926;
	parameter [31:0] W1x=-3115;
	parameter [31:0] W2x=-3697;
	parameter [31:0] W3x=-4513;
	parameter [31:0] W4x=-90;
	parameter [31:0] B0x=0;
	wire [31:0] in0x;
	wire [31:0] in1x;
	wire [31:0] in2x;
	wire [31:0] in3x;
	wire [31:0] in4x;

	reg [31:0] sumout;
	reg [31:0] A0x_c;
	reg [31:0] A1x_c;
	reg [31:0] A2x_c;
	reg [31:0] A3x_c;
	reg [31:0] A4x_c;


	assign in0x=A0x_c*W0x;
	assign in1x=A1x_c*W1x;
	assign in2x=A2x_c*W2x;
	assign in3x=A3x_c*W3x;
	assign in4x=A4x_c*W4x;

always@(posedge clk)
	begin

	if(reset) begin
		N3x<=32'b0;
		sumout<=32'b0;
		A0x_c<=32'b0;
		A1x_c<=32'b0;
		A2x_c<=32'b0;
		A3x_c<=32'b0;
		A4x_c<=32'b0;
		sumout<=32'b0;
	end

	A0x_c<=A0x;
	A1x_c<=A1x;
	A2x_c<=A2x;
	A3x_c<=A3x;
	A4x_c<=A4x;
	sumout<=in0x+in1x+in2x+in3x+in4x+B0x;

	if(sumout[31]==0)
		begin
		N3x<=sumout[28:13];
		end
	else
		begin
		N3x<=32'd0;
		end
	end
endmodule
