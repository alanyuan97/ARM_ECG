module node2_8(clk,reset,N8x,A0x,A1x,A2x,A3x,A4x);
	input clk;
	input reset;
	input signed [7:0] A0x;
	input signed [7:0] A1x;
	input signed [7:0] A2x;
	input signed [7:0] A3x;
	input signed [7:0] A4x;
	output reg [15:0] N8x;

	parameter signed [7:0] W0x=8'sb00110001;
	parameter signed [7:0] W1x=8'sb00101011;
	parameter signed [7:0] W2x=8'sb00001000;
	parameter signed [7:0] W3x=8'sb10101100;
	parameter signed [7:0] W4x=8'sb11100000;
	parameter signed [7:0] B0x=8'sb00001010;
	wire signed [15:0] in0x;
	wire signed [15:0] in1x;
	wire signed [15:0] in2x;
	wire signed [15:0] in3x;
	wire signed [15:0] in4x;
	reg signed [15:0] sum0x;
	reg signed [15:0] sum1x;
	reg signed [15:0] sum2x;
	reg signed [15:0] sum3x;

	reg [15:0] sumout;
	reg signed [7:0] A0x_c;
	reg signed [7:0] A1x_c;
	reg signed [7:0] A2x_c;
	reg signed [7:0] A3x_c;
	reg signed [7:0] A4x_c;


	assign in0x=A0x_c*W0x;
	assign in1x=A1x_c*W1x;
	assign in2x=A2x_c*W2x;
	assign in3x=A3x_c*W3x;
	assign in4x=A4x_c*W4x;

always@(posedge clk)
	begin

	if(reset) begin
		N8x<=8'b0;
		sumout<=8'b0;
		A0x_c<=8'b0;
		A1x_c<=8'b0;
		A2x_c<=8'b0;
		A3x_c<=8'b0;
		A4x_c<=8'b0;
		sum0x<=8'b0;
		sum1x<=8'b0;
		sum2x<=8'b0;
		sum3x<=8'b0;
		sumout<=8'b0;
	end

	A0x_c<=A0x;
	A1x_c<=A1x;
	A2x_c<=A2x;
	A3x_c<=A3x;
	A4x_c<=A4x;
	sumout<=in0x+in1x+in2x+in3x+in4x+B0x;

	if(sumout[7]==0)
		begin
		N8x<=sumout;
		end
	else
		begin
		N8x<=8'd0;
		end
	end
endmodule
