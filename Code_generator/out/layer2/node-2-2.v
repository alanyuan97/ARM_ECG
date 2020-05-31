module node2_2(clk,reset,N2x,A0x,A1x,A2x,A3x,A4x);
	input clk;
	input reset;
	input [7:0] A0x;
	input [7:0] A1x;
	input [7:0] A2x;
	input [7:0] A3x;
	input [7:0] A4x;
	output reg [7:0] N2x;

	parameter [7:0] W0x=-19;
	parameter [7:0] W1x=69;
	parameter [7:0] W2x=104;
	parameter [7:0] W3x=-119;
	parameter [7:0] W4x=-69;
	parameter [7:0] B0x=-7;
	wire [15:0] in0x;
	wire [15:0] in1x;
	wire [15:0] in2x;
	wire [15:0] in3x;
	wire [15:0] in4x;
	reg [15:0] sum0x;
	reg [15:0] sum1x;
	reg [15:0] sum2x;
	reg [15:0] sum3x;

	reg [15:0] sumout;
	reg [7:0] A0x_c;
	reg [7:0] A1x_c;
	reg [7:0] A2x_c;
	reg [7:0] A3x_c;
	reg [7:0] A4x_c;


	assign in0x=A0x_c*W0x;
	assign in1x=A1x_c*W1x;
	assign in2x=A2x_c*W2x;
	assign in3x=A3x_c*W3x;
	assign in4x=A4x_c*W4x;

always@(posedge clk)
	begin

	if(reset) begin
		N2x<=16'b0;
		sumout<=16'b0;
		A0x_c<=8'b0;
		A1x_c<=8'b0;
		A2x_c<=8'b0;
		A3x_c<=8'b0;
		A4x_c<=8'b0;
		sum0x<=16'b0;
		sum1x<=16'b0;
		sum2x<=16'b0;
		sum3x<=16'b0;
		sumout<=16'b0;
	end

	A0x_c<=A0x;
	A1x_c<=A1x;
	A2x_c<=A2x;
	A3x_c<=A3x;
	A4x_c<=A4x;
	sumout<=in0x+in1x+in2x+in3x+in4x+B0x;

	if(sumout[13]==0)
		begin
		N2x<=sumout[13:6];
		end
	else
		begin
		N2x<=8'd0;
		end
	end
endmodule
