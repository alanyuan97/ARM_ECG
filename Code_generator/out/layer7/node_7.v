module node_7(clk,reset,out,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,w0x,w1x,w2x,w3x,w4x,w5x,w6x,w7x,w8x,w9x, bias);
	input clk;
	input reset;
	input [7:0] bias;
	input [7:0] A0x, A1x, A2x, A3x, A4x, A5x, A6x, A7x, A8x, A9x;
	input [7:0] w0x, w1x, w2x, w3x, w4x, w5x, w6x, w7x, w8x, w9x;
	reg [7:0] A0x_c, A1x_c, A2x_c, A3x_c, A4x_c, A5x_c, A6x_c, A7x_c, A8x_c, A9x_c;
	reg [7:0] B0x, w0x_c, w1x_c, w2x_c, w3x_c, w4x_c, w5x_c, w6x_c, w7x_c, w8x_c, w9x_c;
	wire [15:0] sum0x, sum1x, sum2x, sum3x, sum4x, sum5x, sum6x, sum7x, sum8x, sum9x;
	output reg [7:0] out;
	reg [22:0] sumout;

	assign sum0x = {A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c}*{w0x_c[7],w0x_c[7],w0x_c[7],w0x_c[7],w0x_c[7],w0x_c[7],w0x_c[7],w0x_c[7],w0x};
	assign sum1x = {A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c}*{w1x_c[7],w1x_c[7],w1x_c[7],w1x_c[7],w1x_c[7],w1x_c[7],w1x_c[7],w1x_c[7],w1x};
	assign sum2x = {A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c}*{w2x_c[7],w2x_c[7],w2x_c[7],w2x_c[7],w2x_c[7],w2x_c[7],w2x_c[7],w2x_c[7],w2x};
	assign sum3x = {A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c}*{w3x_c[7],w3x_c[7],w3x_c[7],w3x_c[7],w3x_c[7],w3x_c[7],w3x_c[7],w3x_c[7],w3x};
	assign sum4x = {A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c}*{w4x_c[7],w4x_c[7],w4x_c[7],w4x_c[7],w4x_c[7],w4x_c[7],w4x_c[7],w4x_c[7],w4x};
	assign sum5x = {A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c[7],A5x_c}*{w5x_c[7],w5x_c[7],w5x_c[7],w5x_c[7],w5x_c[7],w5x_c[7],w5x_c[7],w5x_c[7],w5x};
	assign sum6x = {A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c[7],A6x_c}*{w6x_c[7],w6x_c[7],w6x_c[7],w6x_c[7],w6x_c[7],w6x_c[7],w6x_c[7],w6x_c[7],w6x};
	assign sum7x = {A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c[7],A7x_c}*{w7x_c[7],w7x_c[7],w7x_c[7],w7x_c[7],w7x_c[7],w7x_c[7],w7x_c[7],w7x_c[7],w7x};
	assign sum8x = {A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c[7],A8x_c}*{w8x_c[7],w8x_c[7],w8x_c[7],w8x_c[7],w8x_c[7],w8x_c[7],w8x_c[7],w8x_c[7],w8x};
	assign sum9x = {A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c[7],A9x_c}*{w9x_c[7],w9x_c[7],w9x_c[7],w9x_c[7],w9x_c[7],w9x_c[7],w9x_c[7],w9x_c[7],w9x};

	always@(posedge clk) begin

		if(reset)
			begin
			out<=8'd0;
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
			B0x <= 8'b0;			end
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
			w0x_c <= w0x;
			w1x_c <= w1x;
			w2x_c <= w2x;
			w3x_c <= w3x;
			w4x_c <= w4x;
			w5x_c <= w5x;
			w6x_c <= w6x;
			w7x_c <= w7x;
			w8x_c <= w8x;
			w9x_c <= w9x;
			B0x <= bias;
			sumout<={sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x}+{sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x}+{sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x}+{sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x}+{sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x}+{sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x}+{sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x}+{sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x}+{sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x}+{sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x}+{B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x,6'b0};

			if(sumout[22]==0)
				begin
				if(sumout[21:13]!=9'b0)
					out<=8'd127;
				else
					begin
					if(sumout[5]==1)
						out<=sumout[13:6]+8'd1;
					else
						out<=sumout[13:6];
					end
				end
			else
				begin
				if(sumout[21:13]!=9'b1)
					out<=-8'd128;
				else
					begin
					if(sumout[5]==1)
						out<=sumout[13:6]+8'd1;
					else
						out<=sumout[13:6];
					end
				end
			end
		end
endmodule
