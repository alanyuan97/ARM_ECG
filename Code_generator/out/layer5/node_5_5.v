module node_5_5(clk,reset,N5x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x);
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
	input [7:0] A10x;
	input [7:0] A11x;
	input [7:0] A12x;
	input [7:0] A13x;
	input [7:0] A14x;
	input [7:0] A15x;
	input [7:0] A16x;
	input [7:0] A17x;
	input [7:0] A18x;
	input [7:0] A19x;
	input [7:0] A20x;
	input [7:0] A21x;
	input [7:0] A22x;
	input [7:0] A23x;
	input [7:0] A24x;
	input [7:0] A25x;
	input [7:0] A26x;
	input [7:0] A27x;
	input [7:0] A28x;
	input [7:0] A29x;
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
	reg signed [7:0] A10x_c;
	reg signed [7:0] A11x_c;
	reg signed [7:0] A12x_c;
	reg signed [7:0] A13x_c;
	reg signed [7:0] A14x_c;
	reg signed [7:0] A15x_c;
	reg signed [7:0] A16x_c;
	reg signed [7:0] A17x_c;
	reg signed [7:0] A18x_c;
	reg signed [7:0] A19x_c;
	reg signed [7:0] A20x_c;
	reg signed [7:0] A21x_c;
	reg signed [7:0] A22x_c;
	reg signed [7:0] A23x_c;
	reg signed [7:0] A24x_c;
	reg signed [7:0] A25x_c;
	reg signed [7:0] A26x_c;
	reg signed [7:0] A27x_c;
	reg signed [7:0] A28x_c;
	reg signed [7:0] A29x_c;
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
	wire [15:0] sum10x;
	wire [15:0] sum11x;
	wire [15:0] sum12x;
	wire [15:0] sum13x;
	wire [15:0] sum14x;
	wire [15:0] sum15x;
	wire [15:0] sum16x;
	wire [15:0] sum17x;
	wire [15:0] sum18x;
	wire [15:0] sum19x;
	wire [15:0] sum20x;
	wire [15:0] sum21x;
	wire [15:0] sum22x;
	wire [15:0] sum23x;
	wire [15:0] sum24x;
	wire [15:0] sum25x;
	wire [15:0] sum26x;
	wire [15:0] sum27x;
	wire [15:0] sum28x;
	wire [15:0] sum29x;
	output reg [7:0] N5x;
	reg signed [22:0] sumout;

	parameter signed [7:0] W0x=-8'd29;
	parameter signed [7:0] W1x=8'd15;
	parameter signed [7:0] W2x=8'd13;
	parameter signed [7:0] W3x=-8'd8;
	parameter signed [7:0] W4x=8'd31;
	parameter signed [7:0] W5x=-8'd7;
	parameter signed [7:0] W6x=-8'd2;
	parameter signed [7:0] W7x=8'd19;
	parameter signed [7:0] W8x=8'd10;
	parameter signed [7:0] W9x=8'd17;
	parameter signed [7:0] W10x=-8'd7;
	parameter signed [7:0] W11x=8'd1;
	parameter signed [7:0] W12x=-8'd15;
	parameter signed [7:0] W13x=-8'd4;
	parameter signed [7:0] W14x=8'd4;
	parameter signed [7:0] W15x=8'd18;
	parameter signed [7:0] W16x=-8'd19;
	parameter signed [7:0] W17x=-8'd16;
	parameter signed [7:0] W18x=-8'd3;
	parameter signed [7:0] W19x=-8'd26;
	parameter signed [7:0] W20x=8'd31;
	parameter signed [7:0] W21x=8'd31;
	parameter signed [7:0] W22x=8'd17;
	parameter signed [7:0] W23x=8'd6;
	parameter signed [7:0] W24x=8'd2;
	parameter signed [7:0] W25x=8'd25;
	parameter signed [7:0] W26x=8'd9;
	parameter signed [7:0] W27x=8'd26;
	parameter signed [7:0] W28x=-8'd17;
	parameter signed [7:0] W29x=-8'd7;
	parameter [15:0] B0x=-16'd512;


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
	assign sum10x = A10x_c*W10x;
	assign sum11x = A11x_c*W11x;
	assign sum12x = A12x_c*W12x;
	assign sum13x = A13x_c*W13x;
	assign sum14x = A14x_c*W14x;
	assign sum15x = A15x_c*W15x;
	assign sum16x = A16x_c*W16x;
	assign sum17x = A17x_c*W17x;
	assign sum18x = A18x_c*W18x;
	assign sum19x = A19x_c*W19x;
	assign sum20x = A20x_c*W20x;
	assign sum21x = A21x_c*W21x;
	assign sum22x = A22x_c*W22x;
	assign sum23x = A23x_c*W23x;
	assign sum24x = A24x_c*W24x;
	assign sum25x = A25x_c*W25x;
	assign sum26x = A26x_c*W26x;
	assign sum27x = A27x_c*W27x;
	assign sum28x = A28x_c*W28x;
	assign sum29x = A29x_c*W29x;

	always@(posedge clk) begin

		if(reset)
			begin
			N5x<=8'd0;
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
			A15x_c <= 8'd0;
			A16x_c <= 8'd0;
			A17x_c <= 8'd0;
			A18x_c <= 8'd0;
			A19x_c <= 8'd0;
			A20x_c <= 8'd0;
			A21x_c <= 8'd0;
			A22x_c <= 8'd0;
			A23x_c <= 8'd0;
			A24x_c <= 8'd0;
			A25x_c <= 8'd0;
			A26x_c <= 8'd0;
			A27x_c <= 8'd0;
			A28x_c <= 8'd0;
			A29x_c <= 8'd0;
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
			A15x_c <= A15x;
			A16x_c <= A16x;
			A17x_c <= A17x;
			A18x_c <= A18x;
			A19x_c <= A19x;
			A20x_c <= A20x;
			A21x_c <= A21x;
			A22x_c <= A22x;
			A23x_c <= A23x;
			A24x_c <= A24x;
			A25x_c <= A25x;
			A26x_c <= A26x;
			A27x_c <= A27x;
			A28x_c <= A28x;
			A29x_c <= A29x;
			sumout<={sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x}+{sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x}+{sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x}+{sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x}+{sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x}+{sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x}+{sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x}+{sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x}+{sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x}+{sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x}+{sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x}+{sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x}+{sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x}+{sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x}+{sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x}+{sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x}+{sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x}+{sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x}+{sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x}+{sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x}+{sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x}+{sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x}+{sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x}+{sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x}+{sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x}+{sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x}+{sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x}+{sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x}+{sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x}+{sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x}+{B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x};

			if(sumout[22]==0)
				if(sumout[21:13]!=9'b0)
					N5x<=8'd127;
				else
					if(sumout[5]==1)
						N5x<=sumout[13:6]+8'd1;
					else
						N5x<=sumout[13:6];
			else
				N5x<=8'd0;
			end
		end
endmodule
