module node_3_4(clk,reset,N4x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x);
	input clk;
	input reset;
	input [7:0] A0x;
	input [7:0] A1x;
	input [7:0] A2x;
	input [7:0] A3x;
	input [7:0] A4x;
	input [7:0] A5x;
	input [7:0] A6x;
	input [7:0] A7x;
	input [7:0] A8x;
	input [7:0] A9x;
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
	wire [15:0] sum0x;
	wire [15:0] sum1x;
	wire [15:0] sum2x;
	wire [15:0] sum3x;
	wire [15:0] sum4x;
	wire [15:0] sum5x;
	wire [15:0] sum6x;
	wire [15:0] sum7x;
	wire [15:0] sum8x;
	wire [15:0] sum9x;
	output reg [7:0] N4x;
	reg signed [22:0] sumout;

	parameter signed [7:0] W0x=8'd50;
	parameter signed [7:0] W1x=-8'd30;
	parameter signed [7:0] W2x=-8'd36;
	parameter signed [7:0] W3x=8'd8;
	parameter signed [7:0] W4x=-8'd26;
	parameter signed [7:0] W5x=8'd16;
	parameter signed [7:0] W6x=-8'd14;
	parameter signed [7:0] W7x=-8'd30;
	parameter signed [7:0] W8x=8'd62;
	parameter signed [7:0] W9x=8'd6;
	parameter [15:0] B0x=16'd512;


	assign sum0x = A0x_c*W0x;
	assign sum1x = A1x_c*W1x;
	assign sum2x = A2x_c*W2x;
	assign sum3x = A3x_c*W3x;
	assign sum4x = A4x_c*W4x;
	assign sum5x = A5x_c*W5x;
	assign sum6x = A6x_c*W6x;
	assign sum7x = A7x_c*W7x;
	assign sum8x = A8x_c*W8x;
	assign sum9x = A9x_c*W9x;

	always@(posedge clk) begin

		if(reset)
			begin
			N4x<=8'd0;
			sumout<=16'd0;
			A0x_c <= 8'd0;
			A1x_c <= 8'd0;
			A2x_c <= 8'd0;
			A3x_c <= 8'd0;
			A4x_c <= 8'd0;
			A5x_c <= 8'd0;
			A6x_c <= 8'd0;
			A7x_c <= 8'd0;
			A8x_c <= 8'd0;
			A9x_c <= 8'd0;
			end
		else
			begin
			A0x_c <= A0x;
			A1x_c <= A1x;
			A2x_c <= A2x;
			A3x_c <= A3x;
			A4x_c <= A4x;
			A5x_c <= A5x;
			A6x_c <= A6x;
			A7x_c <= A7x;
			A8x_c <= A8x;
			A9x_c <= A9x;
			sumout<={sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x}+{sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x}+{sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x}+{sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x}+{sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x}+{sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x}+{sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x}+{sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x}+{sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x}+{sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x}+{B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x};

			if(sumout[22]==0)
				if(sumout[21:13]!=9'b0)
					N4x<=8'd127;
				else
					if(sumout[5]==1 && sumout[4:0]!=5'd0)
						N4x<=sumout[13:6]+8'd1;
					else
						N4x<=sumout[13:6];
			else
				N4x<=8'd0;
			end
		end
endmodule
