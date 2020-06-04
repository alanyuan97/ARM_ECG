module node_4_23(clk,reset,N23x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x);
	input clk;
	input reset;
	input [7:0] A0x, A1x, A2x, A3x, A4x, A5x, A6x, A7x, A8x, A9x, A10x, A11x, A12x, A13x, A14x;
	reg [7:0] A0x_c, A1x_c, A2x_c, A3x_c, A4x_c, A5x_c, A6x_c, A7x_c, A8x_c, A9x_c, A10x_c, A11x_c, A12x_c, A13x_c, A14x_c;
	wire signed [15:0] sum0x, sum1x, sum2x, sum3x, sum4x, sum5x, sum6x, sum7x, sum8x, sum9x, sum10x, sum11x, sum12x, sum13x, sum14x;
	output reg [7:0] N23x;
	reg [22:0] sumout;

	parameter [7:0] W0x=8'd0;
	parameter [7:0] W1x=-8'd6;
	parameter [7:0] W2x=-8'd7;
	parameter [7:0] W3x=-8'd31;
	parameter [7:0] W4x=-8'd31;
	parameter [7:0] W5x=8'd9;
	parameter [7:0] W6x=-8'd25;
	parameter [7:0] W7x=8'd12;
	parameter [7:0] W8x=-8'd25;
	parameter [7:0] W9x=-8'd9;
	parameter [7:0] W10x=8'd31;
	parameter [7:0] W11x=8'd13;
	parameter [7:0] W12x=-8'd2;
	parameter [7:0] W13x=8'd12;
	parameter [7:0] W14x=8'd18;
	parameter signed [15:0] B0x=-16'd1024;


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
	assign sum10x = {A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c}*{W10x[7],W10x[7],W10x[7],W10x[7],W10x[7],W10x[7],W10x[7],W10x[7],W10x};
	assign sum11x = {A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c}*{W11x[7],W11x[7],W11x[7],W11x[7],W11x[7],W11x[7],W11x[7],W11x[7],W11x};
	assign sum12x = {A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c}*{W12x[7],W12x[7],W12x[7],W12x[7],W12x[7],W12x[7],W12x[7],W12x[7],W12x};
	assign sum13x = {A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c}*{W13x[7],W13x[7],W13x[7],W13x[7],W13x[7],W13x[7],W13x[7],W13x[7],W13x};
	assign sum14x = {A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c}*{W14x[7],W14x[7],W14x[7],W14x[7],W14x[7],W14x[7],W14x[7],W14x[7],W14x};

	always@(posedge clk) begin

		if(reset)
			begin
			N23x<=8'd0;
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
			A10x_c <= 8'd0;
			A11x_c <= 8'd0;
			A12x_c <= 8'd0;
			A13x_c <= 8'd0;
			A14x_c <= 8'd0;
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
			A10x_c <= A10x;
			A11x_c <= A11x;
			A12x_c <= A12x;
			A13x_c <= A13x;
			A14x_c <= A14x;
			sumout<={sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x}+{sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x}+{sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x}+{sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x}+{sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x}+{sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x}+{sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x}+{sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x}+{sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x}+{sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x}+{sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x}+{sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x}+{sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x}+{sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x}+{sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x}+{B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x};

			if(sumout[22]==0)
				if(sumout[21:13]!=9'b0)
					N23x<=8'd127;
				else
					if(sumout[5]==1)
						N23x<=sumout[13:6]+8'd1;
					else
						N23x<=sumout[13:6];
			else
				N23x<=8'd0;
			end
		end
endmodule
