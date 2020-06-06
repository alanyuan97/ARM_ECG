module node_2_8(clk,reset,N8x,A0x,A1x,A2x,A3x,A4x);
	input clk;
	input reset;
	input [7:0] A0x, A1x, A2x, A3x, A4x;
	reg [7:0] A0x_c, A1x_c, A2x_c, A3x_c, A4x_c;
	wire [15:0] sum0x, sum1x, sum2x, sum3x, sum4x;
	output reg [7:0] N8x;
	reg [22:0] sumout;

	parameter [7:0] W0x=8'd19;
	parameter [7:0] W1x=8'd31;
	parameter [7:0] W2x=8'd31;
	parameter [7:0] W3x=8'd8;
	parameter [7:0] W4x=8'd31;
	parameter [15:0] B0x=-16'd1024;


	assign sum0x = {A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c[7],A0x_c}*{W0x[7],W0x[7],W0x[7],W0x[7],W0x[7],W0x[7],W0x[7],W0x[7],W0x};
	assign sum1x = {A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c[7],A1x_c}*{W1x[7],W1x[7],W1x[7],W1x[7],W1x[7],W1x[7],W1x[7],W1x[7],W1x};
	assign sum2x = {A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c[7],A2x_c}*{W2x[7],W2x[7],W2x[7],W2x[7],W2x[7],W2x[7],W2x[7],W2x[7],W2x};
	assign sum3x = {A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c[7],A3x_c}*{W3x[7],W3x[7],W3x[7],W3x[7],W3x[7],W3x[7],W3x[7],W3x[7],W3x};
	assign sum4x = {A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c[7],A4x_c}*{W4x[7],W4x[7],W4x[7],W4x[7],W4x[7],W4x[7],W4x[7],W4x[7],W4x};

	always@(posedge clk) begin

		if(reset)
			begin
			N8x<=8'd0;
			sumout<=16'd0;
			A0x_c <= 8'd0;
			A1x_c <= 8'd0;
			A2x_c <= 8'd0;
			A3x_c <= 8'd0;
			A4x_c <= 8'd0;
			end
		else
			begin
			A0x_c <= A0x;
			A1x_c <= A1x;
			A2x_c <= A2x;
			A3x_c <= A3x;
			A4x_c <= A4x;
			sumout<={sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x}+{sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x}+{sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x}+{sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x}+{sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x}+{B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x};

			if(sumout[22]==0)
				begin
				if(sumout[21:13]!=9'b0)
					N8x<=8'd127;
				else
					begin
					if(sumout[5]==1)
						N8x<=sumout[13:6]+8'd1;
					else
						N8x<=sumout[13:6];
					end
				end
			else
				N8x<=8'd0;
			end
		end
endmodule
