module node_5_9(clk,reset,N9x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x);
	input clk;
	input reset;
	input [7:0] A0x, A1x, A2x, A3x, A4x, A5x, A6x, A7x, A8x, A9x, A10x, A11x, A12x, A13x, A14x, A15x, A16x, A17x, A18x, A19x, A20x, A21x, A22x, A23x, A24x, A25x, A26x, A27x, A28x, A29x;
	reg [7:0] A0x_c, A1x_c, A2x_c, A3x_c, A4x_c, A5x_c, A6x_c, A7x_c, A8x_c, A9x_c, A10x_c, A11x_c, A12x_c, A13x_c, A14x_c, A15x_c, A16x_c, A17x_c, A18x_c, A19x_c, A20x_c, A21x_c, A22x_c, A23x_c, A24x_c, A25x_c, A26x_c, A27x_c, A28x_c, A29x_c;
	wire [15:0] sum0x, sum1x, sum2x, sum3x, sum4x, sum5x, sum6x, sum7x, sum8x, sum9x, sum10x, sum11x, sum12x, sum13x, sum14x, sum15x, sum16x, sum17x, sum18x, sum19x, sum20x, sum21x, sum22x, sum23x, sum24x, sum25x, sum26x, sum27x, sum28x, sum29x;
	output reg [7:0] N9x;
	reg [22:0] sumout;

	parameter [7:0] W0x=-8'd19;
	parameter [7:0] W1x=8'd7;
	parameter [7:0] W2x=-8'd31;
	parameter [7:0] W3x=-8'd5;
	parameter [7:0] W4x=-8'd12;
	parameter [7:0] W5x=-8'd24;
	parameter [7:0] W6x=8'd18;
	parameter [7:0] W7x=-8'd1;
	parameter [7:0] W8x=-8'd6;
	parameter [7:0] W9x=-8'd2;
	parameter [7:0] W10x=-8'd21;
	parameter [7:0] W11x=-8'd25;
	parameter [7:0] W12x=8'd9;
	parameter [7:0] W13x=8'd1;
	parameter [7:0] W14x=-8'd25;
	parameter [7:0] W15x=-8'd19;
	parameter [7:0] W16x=-8'd16;
	parameter [7:0] W17x=-8'd17;
	parameter [7:0] W18x=8'd30;
	parameter [7:0] W19x=-8'd11;
	parameter [7:0] W20x=-8'd19;
	parameter [7:0] W21x=-8'd8;
	parameter [7:0] W22x=-8'd11;
	parameter [7:0] W23x=8'd18;
	parameter [7:0] W24x=8'd2;
	parameter [7:0] W25x=8'd6;
	parameter [7:0] W26x=-8'd13;
	parameter [7:0] W27x=8'd31;
	parameter [7:0] W28x=8'd31;
	parameter [7:0] W29x=8'd31;
	parameter [15:0] B0x=16'd0;


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
	assign sum15x = {A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c[7],A15x_c}*{W15x[7],W15x[7],W15x[7],W15x[7],W15x[7],W15x[7],W15x[7],W15x[7],W15x};
	assign sum16x = {A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c[7],A16x_c}*{W16x[7],W16x[7],W16x[7],W16x[7],W16x[7],W16x[7],W16x[7],W16x[7],W16x};
	assign sum17x = {A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c[7],A17x_c}*{W17x[7],W17x[7],W17x[7],W17x[7],W17x[7],W17x[7],W17x[7],W17x[7],W17x};
	assign sum18x = {A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c[7],A18x_c}*{W18x[7],W18x[7],W18x[7],W18x[7],W18x[7],W18x[7],W18x[7],W18x[7],W18x};
	assign sum19x = {A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c[7],A19x_c}*{W19x[7],W19x[7],W19x[7],W19x[7],W19x[7],W19x[7],W19x[7],W19x[7],W19x};
	assign sum20x = {A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c[7],A20x_c}*{W20x[7],W20x[7],W20x[7],W20x[7],W20x[7],W20x[7],W20x[7],W20x[7],W20x};
	assign sum21x = {A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c[7],A21x_c}*{W21x[7],W21x[7],W21x[7],W21x[7],W21x[7],W21x[7],W21x[7],W21x[7],W21x};
	assign sum22x = {A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c[7],A22x_c}*{W22x[7],W22x[7],W22x[7],W22x[7],W22x[7],W22x[7],W22x[7],W22x[7],W22x};
	assign sum23x = {A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c[7],A23x_c}*{W23x[7],W23x[7],W23x[7],W23x[7],W23x[7],W23x[7],W23x[7],W23x[7],W23x};
	assign sum24x = {A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c[7],A24x_c}*{W24x[7],W24x[7],W24x[7],W24x[7],W24x[7],W24x[7],W24x[7],W24x[7],W24x};
	assign sum25x = {A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c[7],A25x_c}*{W25x[7],W25x[7],W25x[7],W25x[7],W25x[7],W25x[7],W25x[7],W25x[7],W25x};
	assign sum26x = {A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c[7],A26x_c}*{W26x[7],W26x[7],W26x[7],W26x[7],W26x[7],W26x[7],W26x[7],W26x[7],W26x};
	assign sum27x = {A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c[7],A27x_c}*{W27x[7],W27x[7],W27x[7],W27x[7],W27x[7],W27x[7],W27x[7],W27x[7],W27x};
	assign sum28x = {A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c[7],A28x_c}*{W28x[7],W28x[7],W28x[7],W28x[7],W28x[7],W28x[7],W28x[7],W28x[7],W28x};
	assign sum29x = {A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c[7],A29x_c}*{W29x[7],W29x[7],W29x[7],W29x[7],W29x[7],W29x[7],W29x[7],W29x[7],W29x};

	always@(posedge clk) begin

		if(reset)
			begin
			N9x<=8'd0;
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
				begin
				if(sumout[21:13]!=9'b0)
					N9x<=8'd127;
				else
					begin
					if(sumout[5]==1)
						N9x<=sumout[13:6]+8'd1;
					else
						N9x<=sumout[13:6];
					end
				end
			else
				N9x<=8'd0;
			end
		end
endmodule
