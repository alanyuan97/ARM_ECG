module node1_3(clk,reset,N3x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x,A30x,A31x,A32x,A33x,A34x,A35x,A36x,A37x,A38x,A39x,A40x,A41x,A42x,A43x,A44x,A45x,A46x,A47x,A48x,A49x,A50x,A51x,A52x,A53x,A54x,A55x,A56x,A57x,A58x,A59x,A60x,A61x,A62x,A63x,A64x,A65x,A66x,A67x,A68x,A69x,A70x,A71x,A72x,A73x,A74x);
	input clk;
	input reset;
	input [23:0] A0x;
	input [23:0] A1x;
	input [23:0] A2x;
	input [23:0] A3x;
	input [23:0] A4x;
	input [23:0] A5x;
	input [23:0] A6x;
	input [23:0] A7x;
	input [23:0] A8x;
	input [23:0] A9x;
	input [23:0] A10x;
	input [23:0] A11x;
	input [23:0] A12x;
	input [23:0] A13x;
	input [23:0] A14x;
	input [23:0] A15x;
	input [23:0] A16x;
	input [23:0] A17x;
	input [23:0] A18x;
	input [23:0] A19x;
	input [23:0] A20x;
	input [23:0] A21x;
	input [23:0] A22x;
	input [23:0] A23x;
	input [23:0] A24x;
	input [23:0] A25x;
	input [23:0] A26x;
	input [23:0] A27x;
	input [23:0] A28x;
	input [23:0] A29x;
	input [23:0] A30x;
	input [23:0] A31x;
	input [23:0] A32x;
	input [23:0] A33x;
	input [23:0] A34x;
	input [23:0] A35x;
	input [23:0] A36x;
	input [23:0] A37x;
	input [23:0] A38x;
	input [23:0] A39x;
	input [23:0] A40x;
	input [23:0] A41x;
	input [23:0] A42x;
	input [23:0] A43x;
	input [23:0] A44x;
	input [23:0] A45x;
	input [23:0] A46x;
	input [23:0] A47x;
	input [23:0] A48x;
	input [23:0] A49x;
	input [23:0] A50x;
	input [23:0] A51x;
	input [23:0] A52x;
	input [23:0] A53x;
	input [23:0] A54x;
	input [23:0] A55x;
	input [23:0] A56x;
	input [23:0] A57x;
	input [23:0] A58x;
	input [23:0] A59x;
	input [23:0] A60x;
	input [23:0] A61x;
	input [23:0] A62x;
	input [23:0] A63x;
	input [23:0] A64x;
	input [23:0] A65x;
	input [23:0] A66x;
	input [23:0] A67x;
	input [23:0] A68x;
	input [23:0] A69x;
	input [23:0] A70x;
	input [23:0] A71x;
	input [23:0] A72x;
	input [23:0] A73x;
	input [23:0] A74x;
	output reg [23:0] N3x;

	parameter [23:0] W0x=0;
	parameter [23:0] W1x=8;
	parameter [23:0] W2x=-8;
	parameter [23:0] W3x=-13;
	parameter [23:0] W4x=-14;
	parameter [23:0] W5x=-11;
	parameter [23:0] W6x=4;
	parameter [23:0] W7x=4;
	parameter [23:0] W8x=5;
	parameter [23:0] W9x=1;
	parameter [23:0] W10x=2;
	parameter [23:0] W11x=3;
	parameter [23:0] W12x=0;
	parameter [23:0] W13x=5;
	parameter [23:0] W14x=-2;
	parameter [23:0] W15x=0;
	parameter [23:0] W16x=-3;
	parameter [23:0] W17x=-1;
	parameter [23:0] W18x=-3;
	parameter [23:0] W19x=1;
	parameter [23:0] W20x=1;
	parameter [23:0] W21x=2;
	parameter [23:0] W22x=2;
	parameter [23:0] W23x=3;
	parameter [23:0] W24x=7;
	parameter [23:0] W25x=3;
	parameter [23:0] W26x=1;
	parameter [23:0] W27x=4;
	parameter [23:0] W28x=3;
	parameter [23:0] W29x=7;
	parameter [23:0] W30x=4;
	parameter [23:0] W31x=9;
	parameter [23:0] W32x=7;
	parameter [23:0] W33x=6;
	parameter [23:0] W34x=4;
	parameter [23:0] W35x=2;
	parameter [23:0] W36x=5;
	parameter [23:0] W37x=1;
	parameter [23:0] W38x=6;
	parameter [23:0] W39x=9;
	parameter [23:0] W40x=-1;
	parameter [23:0] W41x=7;
	parameter [23:0] W42x=-3;
	parameter [23:0] W43x=0;
	parameter [23:0] W44x=6;
	parameter [23:0] W45x=0;
	parameter [23:0] W46x=-2;
	parameter [23:0] W47x=2;
	parameter [23:0] W48x=-6;
	parameter [23:0] W49x=-7;
	parameter [23:0] W50x=-5;
	parameter [23:0] W51x=-4;
	parameter [23:0] W52x=-4;
	parameter [23:0] W53x=-9;
	parameter [23:0] W54x=0;
	parameter [23:0] W55x=-6;
	parameter [23:0] W56x=-6;
	parameter [23:0] W57x=-2;
	parameter [23:0] W58x=4;
	parameter [23:0] W59x=-1;
	parameter [23:0] W60x=-1;
	parameter [23:0] W61x=4;
	parameter [23:0] W62x=-4;
	parameter [23:0] W63x=6;
	parameter [23:0] W64x=1;
	parameter [23:0] W65x=6;
	parameter [23:0] W66x=2;
	parameter [23:0] W67x=5;
	parameter [23:0] W68x=5;
	parameter [23:0] W69x=2;
	parameter [23:0] W70x=0;
	parameter [23:0] W71x=-5;
	parameter [23:0] W72x=2;
	parameter [23:0] W73x=0;
	parameter [23:0] W74x=1;
	parameter [23:0] B0x=0;
	wire [23:0] in0x;
	wire [23:0] in1x;
	wire [23:0] in2x;
	wire [23:0] in3x;
	wire [23:0] in4x;
	wire [23:0] in5x;
	wire [23:0] in6x;
	wire [23:0] in7x;
	wire [23:0] in8x;
	wire [23:0] in9x;
	wire [23:0] in10x;
	wire [23:0] in11x;
	wire [23:0] in12x;
	wire [23:0] in13x;
	wire [23:0] in14x;
	wire [23:0] in15x;
	wire [23:0] in16x;
	wire [23:0] in17x;
	wire [23:0] in18x;
	wire [23:0] in19x;
	wire [23:0] in20x;
	wire [23:0] in21x;
	wire [23:0] in22x;
	wire [23:0] in23x;
	wire [23:0] in24x;
	wire [23:0] in25x;
	wire [23:0] in26x;
	wire [23:0] in27x;
	wire [23:0] in28x;
	wire [23:0] in29x;
	wire [23:0] in30x;
	wire [23:0] in31x;
	wire [23:0] in32x;
	wire [23:0] in33x;
	wire [23:0] in34x;
	wire [23:0] in35x;
	wire [23:0] in36x;
	wire [23:0] in37x;
	wire [23:0] in38x;
	wire [23:0] in39x;
	wire [23:0] in40x;
	wire [23:0] in41x;
	wire [23:0] in42x;
	wire [23:0] in43x;
	wire [23:0] in44x;
	wire [23:0] in45x;
	wire [23:0] in46x;
	wire [23:0] in47x;
	wire [23:0] in48x;
	wire [23:0] in49x;
	wire [23:0] in50x;
	wire [23:0] in51x;
	wire [23:0] in52x;
	wire [23:0] in53x;
	wire [23:0] in54x;
	wire [23:0] in55x;
	wire [23:0] in56x;
	wire [23:0] in57x;
	wire [23:0] in58x;
	wire [23:0] in59x;
	wire [23:0] in60x;
	wire [23:0] in61x;
	wire [23:0] in62x;
	wire [23:0] in63x;
	wire [23:0] in64x;
	wire [23:0] in65x;
	wire [23:0] in66x;
	wire [23:0] in67x;
	wire [23:0] in68x;
	wire [23:0] in69x;
	wire [23:0] in70x;
	wire [23:0] in71x;
	wire [23:0] in72x;
	wire [23:0] in73x;
	wire [23:0] in74x;

	reg [23:0] sumout;
	reg [23:0] A0x_c;
	reg [23:0] A1x_c;
	reg [23:0] A2x_c;
	reg [23:0] A3x_c;
	reg [23:0] A4x_c;
	reg [23:0] A5x_c;
	reg [23:0] A6x_c;
	reg [23:0] A7x_c;
	reg [23:0] A8x_c;
	reg [23:0] A9x_c;
	reg [23:0] A10x_c;
	reg [23:0] A11x_c;
	reg [23:0] A12x_c;
	reg [23:0] A13x_c;
	reg [23:0] A14x_c;
	reg [23:0] A15x_c;
	reg [23:0] A16x_c;
	reg [23:0] A17x_c;
	reg [23:0] A18x_c;
	reg [23:0] A19x_c;
	reg [23:0] A20x_c;
	reg [23:0] A21x_c;
	reg [23:0] A22x_c;
	reg [23:0] A23x_c;
	reg [23:0] A24x_c;
	reg [23:0] A25x_c;
	reg [23:0] A26x_c;
	reg [23:0] A27x_c;
	reg [23:0] A28x_c;
	reg [23:0] A29x_c;
	reg [23:0] A30x_c;
	reg [23:0] A31x_c;
	reg [23:0] A32x_c;
	reg [23:0] A33x_c;
	reg [23:0] A34x_c;
	reg [23:0] A35x_c;
	reg [23:0] A36x_c;
	reg [23:0] A37x_c;
	reg [23:0] A38x_c;
	reg [23:0] A39x_c;
	reg [23:0] A40x_c;
	reg [23:0] A41x_c;
	reg [23:0] A42x_c;
	reg [23:0] A43x_c;
	reg [23:0] A44x_c;
	reg [23:0] A45x_c;
	reg [23:0] A46x_c;
	reg [23:0] A47x_c;
	reg [23:0] A48x_c;
	reg [23:0] A49x_c;
	reg [23:0] A50x_c;
	reg [23:0] A51x_c;
	reg [23:0] A52x_c;
	reg [23:0] A53x_c;
	reg [23:0] A54x_c;
	reg [23:0] A55x_c;
	reg [23:0] A56x_c;
	reg [23:0] A57x_c;
	reg [23:0] A58x_c;
	reg [23:0] A59x_c;
	reg [23:0] A60x_c;
	reg [23:0] A61x_c;
	reg [23:0] A62x_c;
	reg [23:0] A63x_c;
	reg [23:0] A64x_c;
	reg [23:0] A65x_c;
	reg [23:0] A66x_c;
	reg [23:0] A67x_c;
	reg [23:0] A68x_c;
	reg [23:0] A69x_c;
	reg [23:0] A70x_c;
	reg [23:0] A71x_c;
	reg [23:0] A72x_c;
	reg [23:0] A73x_c;
	reg [23:0] A74x_c;


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
	assign in30x=A30x_c*W30x;
	assign in31x=A31x_c*W31x;
	assign in32x=A32x_c*W32x;
	assign in33x=A33x_c*W33x;
	assign in34x=A34x_c*W34x;
	assign in35x=A35x_c*W35x;
	assign in36x=A36x_c*W36x;
	assign in37x=A37x_c*W37x;
	assign in38x=A38x_c*W38x;
	assign in39x=A39x_c*W39x;
	assign in40x=A40x_c*W40x;
	assign in41x=A41x_c*W41x;
	assign in42x=A42x_c*W42x;
	assign in43x=A43x_c*W43x;
	assign in44x=A44x_c*W44x;
	assign in45x=A45x_c*W45x;
	assign in46x=A46x_c*W46x;
	assign in47x=A47x_c*W47x;
	assign in48x=A48x_c*W48x;
	assign in49x=A49x_c*W49x;
	assign in50x=A50x_c*W50x;
	assign in51x=A51x_c*W51x;
	assign in52x=A52x_c*W52x;
	assign in53x=A53x_c*W53x;
	assign in54x=A54x_c*W54x;
	assign in55x=A55x_c*W55x;
	assign in56x=A56x_c*W56x;
	assign in57x=A57x_c*W57x;
	assign in58x=A58x_c*W58x;
	assign in59x=A59x_c*W59x;
	assign in60x=A60x_c*W60x;
	assign in61x=A61x_c*W61x;
	assign in62x=A62x_c*W62x;
	assign in63x=A63x_c*W63x;
	assign in64x=A64x_c*W64x;
	assign in65x=A65x_c*W65x;
	assign in66x=A66x_c*W66x;
	assign in67x=A67x_c*W67x;
	assign in68x=A68x_c*W68x;
	assign in69x=A69x_c*W69x;
	assign in70x=A70x_c*W70x;
	assign in71x=A71x_c*W71x;
	assign in72x=A72x_c*W72x;
	assign in73x=A73x_c*W73x;
	assign in74x=A74x_c*W74x;

always@(posedge clk)
	begin

	if(reset) begin
		N3x<=24'b0;
		sumout<=24'b0;
		A0x_c<=24'b0;
		A1x_c<=24'b0;
		A2x_c<=24'b0;
		A3x_c<=24'b0;
		A4x_c<=24'b0;
		A5x_c<=24'b0;
		A6x_c<=24'b0;
		A7x_c<=24'b0;
		A8x_c<=24'b0;
		A9x_c<=24'b0;
		A10x_c<=24'b0;
		A11x_c<=24'b0;
		A12x_c<=24'b0;
		A13x_c<=24'b0;
		A14x_c<=24'b0;
		A15x_c<=24'b0;
		A16x_c<=24'b0;
		A17x_c<=24'b0;
		A18x_c<=24'b0;
		A19x_c<=24'b0;
		A20x_c<=24'b0;
		A21x_c<=24'b0;
		A22x_c<=24'b0;
		A23x_c<=24'b0;
		A24x_c<=24'b0;
		A25x_c<=24'b0;
		A26x_c<=24'b0;
		A27x_c<=24'b0;
		A28x_c<=24'b0;
		A29x_c<=24'b0;
		A30x_c<=24'b0;
		A31x_c<=24'b0;
		A32x_c<=24'b0;
		A33x_c<=24'b0;
		A34x_c<=24'b0;
		A35x_c<=24'b0;
		A36x_c<=24'b0;
		A37x_c<=24'b0;
		A38x_c<=24'b0;
		A39x_c<=24'b0;
		A40x_c<=24'b0;
		A41x_c<=24'b0;
		A42x_c<=24'b0;
		A43x_c<=24'b0;
		A44x_c<=24'b0;
		A45x_c<=24'b0;
		A46x_c<=24'b0;
		A47x_c<=24'b0;
		A48x_c<=24'b0;
		A49x_c<=24'b0;
		A50x_c<=24'b0;
		A51x_c<=24'b0;
		A52x_c<=24'b0;
		A53x_c<=24'b0;
		A54x_c<=24'b0;
		A55x_c<=24'b0;
		A56x_c<=24'b0;
		A57x_c<=24'b0;
		A58x_c<=24'b0;
		A59x_c<=24'b0;
		A60x_c<=24'b0;
		A61x_c<=24'b0;
		A62x_c<=24'b0;
		A63x_c<=24'b0;
		A64x_c<=24'b0;
		A65x_c<=24'b0;
		A66x_c<=24'b0;
		A67x_c<=24'b0;
		A68x_c<=24'b0;
		A69x_c<=24'b0;
		A70x_c<=24'b0;
		A71x_c<=24'b0;
		A72x_c<=24'b0;
		A73x_c<=24'b0;
		A74x_c<=24'b0;
		sumout<=24'b0;
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
	A30x_c<=A30x;
	A31x_c<=A31x;
	A32x_c<=A32x;
	A33x_c<=A33x;
	A34x_c<=A34x;
	A35x_c<=A35x;
	A36x_c<=A36x;
	A37x_c<=A37x;
	A38x_c<=A38x;
	A39x_c<=A39x;
	A40x_c<=A40x;
	A41x_c<=A41x;
	A42x_c<=A42x;
	A43x_c<=A43x;
	A44x_c<=A44x;
	A45x_c<=A45x;
	A46x_c<=A46x;
	A47x_c<=A47x;
	A48x_c<=A48x;
	A49x_c<=A49x;
	A50x_c<=A50x;
	A51x_c<=A51x;
	A52x_c<=A52x;
	A53x_c<=A53x;
	A54x_c<=A54x;
	A55x_c<=A55x;
	A56x_c<=A56x;
	A57x_c<=A57x;
	A58x_c<=A58x;
	A59x_c<=A59x;
	A60x_c<=A60x;
	A61x_c<=A61x;
	A62x_c<=A62x;
	A63x_c<=A63x;
	A64x_c<=A64x;
	A65x_c<=A65x;
	A66x_c<=A66x;
	A67x_c<=A67x;
	A68x_c<=A68x;
	A69x_c<=A69x;
	A70x_c<=A70x;
	A71x_c<=A71x;
	A72x_c<=A72x;
	A73x_c<=A73x;
	A74x_c<=A74x;
	sumout<=in0x+in1x+in2x+in3x+in4x+in5x+in6x+in7x+in8x+in9x+in10x+in11x+in12x+in13x+in14x+in15x+in16x+in17x+in18x+in19x+in20x+in21x+in22x+in23x+in24x+in25x+in26x+in27x+in28x+in29x+in30x+in31x+in32x+in33x+in34x+in35x+in36x+in37x+in38x+in39x+in40x+in41x+in42x+in43x+in44x+in45x+in46x+in47x+in48x+in49x+in50x+in51x+in52x+in53x+in54x+in55x+in56x+in57x+in58x+in59x+in60x+in61x+in62x+in63x+in64x+in65x+in66x+in67x+in68x+in69x+in70x+in71x+in72x+in73x+in74x+B0x;

	if(sumout[23]==0)
		begin
		if(sumout>8192)
			N3x<=8'b11111111;
		else
			N3x<=sumout[12:5];
		end
	else
		begin
		N3x<=24'd0;
		end
	end
endmodule
