module node_3_6(clk,reset,N6x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x);
	input clk;
	input reset;
	input [7:0] A0x, A1x, A2x, A3x, A4x, A5x, A6x, A7x, A8x, A9x;
	reg [7:0] A0x_c, A1x_c, A2x_c, A3x_c, A4x_c, A5x_c, A6x_c, A7x_c, A8x_c, A9x_c;
	wire [15:0] sum0x, sum1x, sum2x, sum3x, sum4x, sum5x, sum6x, sum7x, sum8x, sum9x;
	output reg [7:0] N6x;
	reg [22:0] sumout;

	parameter [7:0] W0x=8'd15;
	parameter [7:0] W1x=-8'd15;
	parameter [7:0] W2x=8'd0;
	parameter [7:0] W3x=8'd5;
	parameter [7:0] W4x=-8'd12;
	parameter [7:0] W5x=-8'd15;
	parameter [7:0] W6x=8'd7;
	parameter [7:0] W7x=8'd0;
	parameter [7:0] W8x=-8'd11;
	parameter [7:0] W9x=-8'd1;
	parameter [15:0] B0x=16'd1024;


	assign sum0x = {A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c}*{W0x[7],W0x[7],W0x[7],W0x[7],W0x[7],W0x[7],W0x[7],W0x[7],W0x};
	assign sum1x = {A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c}*{W1x[7],W1x[7],W1x[7],W1x[7],W1x[7],W1x[7],W1x[7],W1x[7],W1x};
	assign sum2x = {A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c}*{W2x[7],W2x[7],W2x[7],W2x[7],W2x[7],W2x[7],W2x[7],W2x[7],W2x};
	assign sum3x = {A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c}*{W3x[7],W3x[7],W3x[7],W3x[7],W3x[7],W3x[7],W3x[7],W3x[7],W3x};
	assign sum4x = {A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c}*{W4x[7],W4x[7],W4x[7],W4x[7],W4x[7],W4x[7],W4x[7],W4x[7],W4x};
	assign sum5x = {A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c}*{W5x[7],W5x[7],W5x[7],W5x[7],W5x[7],W5x[7],W5x[7],W5x[7],W5x};
	assign sum6x = {A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c}*{W6x[7],W6x[7],W6x[7],W6x[7],W6x[7],W6x[7],W6x[7],W6x[7],W6x};
	assign sum7x = {A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c}*{W7x[7],W7x[7],W7x[7],W7x[7],W7x[7],W7x[7],W7x[7],W7x[7],W7x};
	assign sum8x = {A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c}*{W8x[7],W8x[7],W8x[7],W8x[7],W8x[7],W8x[7],W8x[7],W8x[7],W8x};
	assign sum9x = {A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c}*{W9x[7],W9x[7],W9x[7],W9x[7],W9x[7],W9x[7],W9x[7],W9x[7],W9x};

	always@(posedge clk) begin

		if(reset)
			begin
			N6x<=8'd0;
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
				begin
				if(sumout[21:13]!=9'b0)
					N6x<=8'd127;
				else
					begin
					if(sumout[5]==1)
						N6x<=sumout[13:6]+8'd1;
					else
						N6x<=sumout[13:6];
					end
				end
			else
				N6x<=8'd0;
			end
		end
endmodule
