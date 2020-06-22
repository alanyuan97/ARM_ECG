module node_5(clk,reset,out,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x,w0x,w1x,w2x,w3x,w4x,w5x,w6x,w7x,w8x,w9x,w10x,w11x,w12x,w13x,w14x,w15x,w16x,w17x,w18x,w19x,w20x,w21x,w22x,w23x,w24x,w25x,w26x,w27x,w28x,w29x, bias);
	input clk;
	input reset;
	input [7:0] bias;
	input [7:0] A0x, A1x, A2x, A3x, A4x, A5x, A6x, A7x, A8x, A9x, A10x, A11x, A12x, A13x, A14x, A15x, A16x, A17x, A18x, A19x, A20x, A21x, A22x, A23x, A24x, A25x, A26x, A27x, A28x, A29x;
	input [7:0] w0x, w1x, w2x, w3x, w4x, w5x, w6x, w7x, w8x, w9x, w10x, w11x, w12x, w13x, w14x, w15x, w16x, w17x, w18x, w19x, w20x, w21x, w22x, w23x, w24x, w25x, w26x, w27x, w28x, w29x;
	reg [7:0] A0x_c, A1x_c, A2x_c, A3x_c, A4x_c, A5x_c, A6x_c, A7x_c, A8x_c, A9x_c, A10x_c, A11x_c, A12x_c, A13x_c, A14x_c, A15x_c, A16x_c, A17x_c, A18x_c, A19x_c, A20x_c, A21x_c, A22x_c, A23x_c, A24x_c, A25x_c, A26x_c, A27x_c, A28x_c, A29x_c;
	reg [7:0] B0x, w0x_c, w1x_c, w2x_c, w3x_c, w4x_c, w5x_c, w6x_c, w7x_c, w8x_c, w9x_c, w10x_c, w11x_c, w12x_c, w13x_c, w14x_c, w15x_c, w16x_c, w17x_c, w18x_c, w19x_c, w20x_c, w21x_c, w22x_c, w23x_c, w24x_c, w25x_c, w26x_c, w27x_c, w28x_c, w29x_c;
	wire [15:0] sum0x, sum1x, sum2x, sum3x, sum4x, sum5x, sum6x, sum7x, sum8x, sum9x, sum10x, sum11x, sum12x, sum13x, sum14x, sum15x, sum16x, sum17x, sum18x, sum19x, sum20x, sum21x, sum22x, sum23x, sum24x, sum25x, sum26x, sum27x, sum28x, sum29x;
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
	assign sum10x = {A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c[7],A10x_c}*{w10x_c[7],w10x_c[7],w10x_c[7],w10x_c[7],w10x_c[7],w10x_c[7],w10x_c[7],w10x_c[7],w10x};
	assign sum11x = {A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c[7],A11x_c}*{w11x_c[7],w11x_c[7],w11x_c[7],w11x_c[7],w11x_c[7],w11x_c[7],w11x_c[7],w11x_c[7],w11x};
	assign sum12x = {A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c[7],A12x_c}*{w12x_c[7],w12x_c[7],w12x_c[7],w12x_c[7],w12x_c[7],w12x_c[7],w12x_c[7],w12x_c[7],w12x};
	assign sum13x = {A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c[7],A13x_c}*{w13x_c[7],w13x_c[7],w13x_c[7],w13x_c[7],w13x_c[7],w13x_c[7],w13x_c[7],w13x_c[7],w13x};
	assign sum14x = {A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c[7],A14x_c}*{w14x_c[7],w14x_c[7],w14x_c[7],w14x_c[7],w14x_c[7],w14x_c[7],w14x_c[7],w14x_c[7],w14x};
	assign sum15x = {A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c}*{w15x_c[7],w15x_c[7],w15x_c[7],w15x_c[7],w15x_c[7],w15x_c[7],w15x_c[7],w15x_c[7],w15x};
	assign sum16x = {A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c}*{w16x_c[7],w16x_c[7],w16x_c[7],w16x_c[7],w16x_c[7],w16x_c[7],w16x_c[7],w16x_c[7],w16x};
	assign sum17x = {A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c}*{w17x_c[7],w17x_c[7],w17x_c[7],w17x_c[7],w17x_c[7],w17x_c[7],w17x_c[7],w17x_c[7],w17x};
	assign sum18x = {A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c}*{w18x_c[7],w18x_c[7],w18x_c[7],w18x_c[7],w18x_c[7],w18x_c[7],w18x_c[7],w18x_c[7],w18x};
	assign sum19x = {A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c}*{w19x_c[7],w19x_c[7],w19x_c[7],w19x_c[7],w19x_c[7],w19x_c[7],w19x_c[7],w19x_c[7],w19x};
	assign sum20x = {A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c}*{w20x_c[7],w20x_c[7],w20x_c[7],w20x_c[7],w20x_c[7],w20x_c[7],w20x_c[7],w20x_c[7],w20x};
	assign sum21x = {A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c}*{w21x_c[7],w21x_c[7],w21x_c[7],w21x_c[7],w21x_c[7],w21x_c[7],w21x_c[7],w21x_c[7],w21x};
	assign sum22x = {A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c}*{w22x_c[7],w22x_c[7],w22x_c[7],w22x_c[7],w22x_c[7],w22x_c[7],w22x_c[7],w22x_c[7],w22x};
	assign sum23x = {A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c}*{w23x_c[7],w23x_c[7],w23x_c[7],w23x_c[7],w23x_c[7],w23x_c[7],w23x_c[7],w23x_c[7],w23x};
	assign sum24x = {A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c}*{w24x_c[7],w24x_c[7],w24x_c[7],w24x_c[7],w24x_c[7],w24x_c[7],w24x_c[7],w24x_c[7],w24x};
	assign sum25x = {A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c}*{w25x_c[7],w25x_c[7],w25x_c[7],w25x_c[7],w25x_c[7],w25x_c[7],w25x_c[7],w25x_c[7],w25x};
	assign sum26x = {A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c}*{w26x_c[7],w26x_c[7],w26x_c[7],w26x_c[7],w26x_c[7],w26x_c[7],w26x_c[7],w26x_c[7],w26x};
	assign sum27x = {A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c}*{w27x_c[7],w27x_c[7],w27x_c[7],w27x_c[7],w27x_c[7],w27x_c[7],w27x_c[7],w27x_c[7],w27x};
	assign sum28x = {A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c}*{w28x_c[7],w28x_c[7],w28x_c[7],w28x_c[7],w28x_c[7],w28x_c[7],w28x_c[7],w28x_c[7],w28x};
	assign sum29x = {A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c}*{w29x_c[7],w29x_c[7],w29x_c[7],w29x_c[7],w29x_c[7],w29x_c[7],w29x_c[7],w29x_c[7],w29x};

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
			w10x_c <= w10x;
			w11x_c <= w11x;
			w12x_c <= w12x;
			w13x_c <= w13x;
			w14x_c <= w14x;
			w15x_c <= w15x;
			w16x_c <= w16x;
			w17x_c <= w17x;
			w18x_c <= w18x;
			w19x_c <= w19x;
			w20x_c <= w20x;
			w21x_c <= w21x;
			w22x_c <= w22x;
			w23x_c <= w23x;
			w24x_c <= w24x;
			w25x_c <= w25x;
			w26x_c <= w26x;
			w27x_c <= w27x;
			w28x_c <= w28x;
			w29x_c <= w29x;
			B0x <= bias;
			sumout<={sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x}+{sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x}+{sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x}+{sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x}+{sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x}+{sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x}+{sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x}+{sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x}+{sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x}+{sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x}+{sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x}+{sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x}+{sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x}+{sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x}+{sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x}+{sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x}+{sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x}+{sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x}+{sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x}+{sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x}+{sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x}+{sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x}+{sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x}+{sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x}+{sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x}+{sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x}+{sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x}+{sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x}+{sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x}+{sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x}+{B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x,6'b0};

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
				out<=8'd0;
			end
		end
endmodule