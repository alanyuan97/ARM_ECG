module node5_11(clk,reset,N11x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x);
	input clk;
	input reset;
	input signed [7:0] A0x;
	input signed [7:0] A1x;
	input signed [7:0] A2x;
	input signed [7:0] A3x;
	input signed [7:0] A4x;
	input signed [7:0] A5x;
	input signed [7:0] A6x;
	input signed [7:0] A7x;
	input signed [7:0] A8x;
	input signed [7:0] A9x;
	input signed [7:0] A10x;
	input signed [7:0] A11x;
	input signed [7:0] A12x;
	input signed [7:0] A13x;
	input signed [7:0] A14x;
	input signed [7:0] A15x;
	input signed [7:0] A16x;
	input signed [7:0] A17x;
	input signed [7:0] A18x;
	input signed [7:0] A19x;
	input signed [7:0] A20x;
	input signed [7:0] A21x;
	input signed [7:0] A22x;
	input signed [7:0] A23x;
	input signed [7:0] A24x;
	input signed [7:0] A25x;
	input signed [7:0] A26x;
	input signed [7:0] A27x;
	input signed [7:0] A28x;
	input signed [7:0] A29x;
	output reg [7:0] N11x;

	parameter signed [7:0] W0x=8'sb11111100;
	parameter signed [7:0] W1x=8'sb00011100;
	parameter signed [7:0] W2x=8'sb01000010;
	parameter signed [7:0] W3x=8'sb11001111;
	parameter signed [7:0] W4x=8'sb00000101;
	parameter signed [7:0] W5x=8'sb01000001;
	parameter signed [7:0] W6x=8'sb00011100;
	parameter signed [7:0] W7x=8'sb10000110;
	parameter signed [7:0] W8x=8'sb00011000;
	parameter signed [7:0] W9x=8'sb10100000;
	parameter signed [7:0] W10x=8'sb11101010;
	parameter signed [7:0] W11x=8'sb00011000;
	parameter signed [7:0] W12x=8'sb00101000;
	parameter signed [7:0] W13x=8'sb00000101;
	parameter signed [7:0] W14x=8'sb00111100;
	parameter signed [7:0] W15x=8'sb11000100;
	parameter signed [7:0] W16x=8'sb00111110;
	parameter signed [7:0] W17x=8'sb00011011;
	parameter signed [7:0] W18x=8'sb11111010;
	parameter signed [7:0] W19x=8'sb00000010;
	parameter signed [7:0] W20x=8'sb11101110;
	parameter signed [7:0] W21x=8'sb00111111;
	parameter signed [7:0] W22x=8'sb11000110;
	parameter signed [7:0] W23x=8'sb11100010;
	parameter signed [7:0] W24x=8'sb11101111;
	parameter signed [7:0] W25x=8'sb00011110;
	parameter signed [7:0] W26x=8'sb00100111;
	parameter signed [7:0] W27x=8'sb11111111;
	parameter signed [7:0] W28x=8'sb00010010;
	parameter signed [7:0] W29x=8'sb00000110;
	parameter signed [7:0] B0x=8'sb11111001;
	wire signed [7:0] in0x;
	wire signed [7:0] in1x;
	wire signed [7:0] in2x;
	wire signed [7:0] in3x;
	wire signed [7:0] in4x;
	wire signed [7:0] in5x;
	wire signed [7:0] in6x;
	wire signed [7:0] in7x;
	wire signed [7:0] in8x;
	wire signed [7:0] in9x;
	wire signed [7:0] in10x;
	wire signed [7:0] in11x;
	wire signed [7:0] in12x;
	wire signed [7:0] in13x;
	wire signed [7:0] in14x;
	wire signed [7:0] in15x;
	wire signed [7:0] in16x;
	wire signed [7:0] in17x;
	wire signed [7:0] in18x;
	wire signed [7:0] in19x;
	wire signed [7:0] in20x;
	wire signed [7:0] in21x;
	wire signed [7:0] in22x;
	wire signed [7:0] in23x;
	wire signed [7:0] in24x;
	wire signed [7:0] in25x;
	wire signed [7:0] in26x;
	wire signed [7:0] in27x;
	wire signed [7:0] in28x;
	wire signed [7:0] in29x;
	reg signed [7:0] sum0x;
	reg signed [7:0] sum1x;
	reg signed [7:0] sum2x;
	reg signed [7:0] sum3x;
	reg signed [7:0] sum4x;
	reg signed [7:0] sum5x;
	reg signed [7:0] sum6x;
	reg signed [7:0] sum7x;
	reg signed [7:0] sum8x;
	reg signed [7:0] sum9x;
	reg signed [7:0] sum10x;
	reg signed [7:0] sum11x;
	reg signed [7:0] sum12x;
	reg signed [7:0] sum13x;
	reg signed [7:0] sum14x;
	reg signed [7:0] sum15x;
	reg signed [7:0] sum16x;
	reg signed [7:0] sum17x;
	reg signed [7:0] sum18x;
	reg signed [7:0] sum19x;
	reg signed [7:0] sum20x;
	reg signed [7:0] sum21x;
	reg signed [7:0] sum22x;
	reg signed [7:0] sum23x;
	reg signed [7:0] sum24x;
	reg signed [7:0] sum25x;
	reg signed [7:0] sum26x;
	reg signed [7:0] sum27x;
	reg signed [7:0] sum28x;

	reg [7:0] sumout;
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


	assign in0x=A0x_c*W0x;
	assign in1x=A1x_c*W1x;
	assign in2x=A2x_c*W2x;
	assign in3x=A3x_c*W3x;
	assign in4x=A4x_c*W4x;
	assign in5x=A5x_c*W5x;
	assign in6x=A6x_c*W6x;
	assign in7x=A7x_c*W7x;
	assign in8x=A8x_c*W8x;
	assign in9x=A9x_c*W9x;
	assign in10x=A10x_c*W10x;
	assign in11x=A11x_c*W11x;
	assign in12x=A12x_c*W12x;
	assign in13x=A13x_c*W13x;
	assign in14x=A14x_c*W14x;
	assign in15x=A15x_c*W15x;
	assign in16x=A16x_c*W16x;
	assign in17x=A17x_c*W17x;
	assign in18x=A18x_c*W18x;
	assign in19x=A19x_c*W19x;
	assign in20x=A20x_c*W20x;
	assign in21x=A21x_c*W21x;
	assign in22x=A22x_c*W22x;
	assign in23x=A23x_c*W23x;
	assign in24x=A24x_c*W24x;
	assign in25x=A25x_c*W25x;
	assign in26x=A26x_c*W26x;
	assign in27x=A27x_c*W27x;
	assign in28x=A28x_c*W28x;
	assign in29x=A29x_c*W29x;

always@(posedge clk)
	begin

	if(reset) begin
		N11x<=8'b0;
		sumout<=8'b0;
		A0x_c<=8'b0;
		A1x_c<=8'b0;
		A2x_c<=8'b0;
		A3x_c<=8'b0;
		A4x_c<=8'b0;
		A5x_c<=8'b0;
		A6x_c<=8'b0;
		A7x_c<=8'b0;
		A8x_c<=8'b0;
		A9x_c<=8'b0;
		A10x_c<=8'b0;
		A11x_c<=8'b0;
		A12x_c<=8'b0;
		A13x_c<=8'b0;
		A14x_c<=8'b0;
		A15x_c<=8'b0;
		A16x_c<=8'b0;
		A17x_c<=8'b0;
		A18x_c<=8'b0;
		A19x_c<=8'b0;
		A20x_c<=8'b0;
		A21x_c<=8'b0;
		A22x_c<=8'b0;
		A23x_c<=8'b0;
		A24x_c<=8'b0;
		A25x_c<=8'b0;
		A26x_c<=8'b0;
		A27x_c<=8'b0;
		A28x_c<=8'b0;
		A29x_c<=8'b0;
		sum0x<=8'b0;
		sum1x<=8'b0;
		sum2x<=8'b0;
		sum3x<=8'b0;
		sum4x<=8'b0;
		sum5x<=8'b0;
		sum6x<=8'b0;
		sum7x<=8'b0;
		sum8x<=8'b0;
		sum9x<=8'b0;
		sum10x<=8'b0;
		sum11x<=8'b0;
		sum12x<=8'b0;
		sum13x<=8'b0;
		sum14x<=8'b0;
		sum15x<=8'b0;
		sum16x<=8'b0;
		sum17x<=8'b0;
		sum18x<=8'b0;
		sum19x<=8'b0;
		sum20x<=8'b0;
		sum21x<=8'b0;
		sum22x<=8'b0;
		sum23x<=8'b0;
		sum24x<=8'b0;
		sum25x<=8'b0;
		sum26x<=8'b0;
		sum27x<=8'b0;
		sum28x<=8'b0;
		sum29x<=8'b0;
	end

	A0x_c<=A0x;
	A1x_c<=A1x;
	A2x_c<=A2x;
	A3x_c<=A3x;
	A4x_c<=A4x;
	A5x_c<=A5x;
	A6x_c<=A6x;
	A7x_c<=A7x;
	A8x_c<=A8x;
	A9x_c<=A9x;
	A10x_c<=A10x;
	A11x_c<=A11x;
	A12x_c<=A12x;
	A13x_c<=A13x;
	A14x_c<=A14x;
	A15x_c<=A15x;
	A16x_c<=A16x;
	A17x_c<=A17x;
	A18x_c<=A18x;
	A19x_c<=A19x;
	A20x_c<=A20x;
	A21x_c<=A21x;
	A22x_c<=A22x;
	A23x_c<=A23x;
	A24x_c<=A24x;
	A25x_c<=A25x;
	A26x_c<=A26x;
	A27x_c<=A27x;
	A28x_c<=A28x;
	A29x_c<=A29x;
	sumout<=in0x+in1x+in2x+in3x+in4x+in5x+in6x+in7x+in8x+in9x+in10x+in11x+in12x+in13x+in14x+in15x+in16x+in17x+in18x+in19x+in20x+in21x+in22x+in23x+in24x+in25x+in26x+in27x+in28x+in29x+B0x;

	if(sumout[7]==0)
		begin
		N11x<=sumout;
		end
	else
		begin
		N11x<=8'd0;
		end
	end
endmodule
