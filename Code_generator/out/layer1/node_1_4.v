module node_1_4(clk,reset,N4x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x,A30x,A31x,A32x,A33x,A34x,A35x,A36x,A37x,A38x,A39x,A40x,A41x,A42x,A43x,A44x,A45x,A46x,A47x,A48x,A49x,A50x,A51x,A52x,A53x,A54x,A55x,A56x,A57x,A58x,A59x,A60x,A61x,A62x,A63x,A64x,A65x,A66x,A67x,A68x,A69x,A70x,A71x,A72x,A73x,A74x);
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
	input [7:0] A30x;
	input [7:0] A31x;
	input [7:0] A32x;
	input [7:0] A33x;
	input [7:0] A34x;
	input [7:0] A35x;
	input [7:0] A36x;
	input [7:0] A37x;
	input [7:0] A38x;
	input [7:0] A39x;
	input [7:0] A40x;
	input [7:0] A41x;
	input [7:0] A42x;
	input [7:0] A43x;
	input [7:0] A44x;
	input [7:0] A45x;
	input [7:0] A46x;
	input [7:0] A47x;
	input [7:0] A48x;
	input [7:0] A49x;
	input [7:0] A50x;
	input [7:0] A51x;
	input [7:0] A52x;
	input [7:0] A53x;
	input [7:0] A54x;
	input [7:0] A55x;
	input [7:0] A56x;
	input [7:0] A57x;
	input [7:0] A58x;
	input [7:0] A59x;
	input [7:0] A60x;
	input [7:0] A61x;
	input [7:0] A62x;
	input [7:0] A63x;
	input [7:0] A64x;
	input [7:0] A65x;
	input [7:0] A66x;
	input [7:0] A67x;
	input [7:0] A68x;
	input [7:0] A69x;
	input [7:0] A70x;
	input [7:0] A71x;
	input [7:0] A72x;
	input [7:0] A73x;
	input [7:0] A74x;
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
	reg signed [7:0] A30x_c;
	reg signed [7:0] A31x_c;
	reg signed [7:0] A32x_c;
	reg signed [7:0] A33x_c;
	reg signed [7:0] A34x_c;
	reg signed [7:0] A35x_c;
	reg signed [7:0] A36x_c;
	reg signed [7:0] A37x_c;
	reg signed [7:0] A38x_c;
	reg signed [7:0] A39x_c;
	reg signed [7:0] A40x_c;
	reg signed [7:0] A41x_c;
	reg signed [7:0] A42x_c;
	reg signed [7:0] A43x_c;
	reg signed [7:0] A44x_c;
	reg signed [7:0] A45x_c;
	reg signed [7:0] A46x_c;
	reg signed [7:0] A47x_c;
	reg signed [7:0] A48x_c;
	reg signed [7:0] A49x_c;
	reg signed [7:0] A50x_c;
	reg signed [7:0] A51x_c;
	reg signed [7:0] A52x_c;
	reg signed [7:0] A53x_c;
	reg signed [7:0] A54x_c;
	reg signed [7:0] A55x_c;
	reg signed [7:0] A56x_c;
	reg signed [7:0] A57x_c;
	reg signed [7:0] A58x_c;
	reg signed [7:0] A59x_c;
	reg signed [7:0] A60x_c;
	reg signed [7:0] A61x_c;
	reg signed [7:0] A62x_c;
	reg signed [7:0] A63x_c;
	reg signed [7:0] A64x_c;
	reg signed [7:0] A65x_c;
	reg signed [7:0] A66x_c;
	reg signed [7:0] A67x_c;
	reg signed [7:0] A68x_c;
	reg signed [7:0] A69x_c;
	reg signed [7:0] A70x_c;
	reg signed [7:0] A71x_c;
	reg signed [7:0] A72x_c;
	reg signed [7:0] A73x_c;
	reg signed [7:0] A74x_c;
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
	wire [15:0] sum30x;
	wire [15:0] sum31x;
	wire [15:0] sum32x;
	wire [15:0] sum33x;
	wire [15:0] sum34x;
	wire [15:0] sum35x;
	wire [15:0] sum36x;
	wire [15:0] sum37x;
	wire [15:0] sum38x;
	wire [15:0] sum39x;
	wire [15:0] sum40x;
	wire [15:0] sum41x;
	wire [15:0] sum42x;
	wire [15:0] sum43x;
	wire [15:0] sum44x;
	wire [15:0] sum45x;
	wire [15:0] sum46x;
	wire [15:0] sum47x;
	wire [15:0] sum48x;
	wire [15:0] sum49x;
	wire [15:0] sum50x;
	wire [15:0] sum51x;
	wire [15:0] sum52x;
	wire [15:0] sum53x;
	wire [15:0] sum54x;
	wire [15:0] sum55x;
	wire [15:0] sum56x;
	wire [15:0] sum57x;
	wire [15:0] sum58x;
	wire [15:0] sum59x;
	wire [15:0] sum60x;
	wire [15:0] sum61x;
	wire [15:0] sum62x;
	wire [15:0] sum63x;
	wire [15:0] sum64x;
	wire [15:0] sum65x;
	wire [15:0] sum66x;
	wire [15:0] sum67x;
	wire [15:0] sum68x;
	wire [15:0] sum69x;
	wire [15:0] sum70x;
	wire [15:0] sum71x;
	wire [15:0] sum72x;
	wire [15:0] sum73x;
	wire [15:0] sum74x;
	output reg [7:0] N4x;
	reg signed [22:0] sumout;

	parameter signed [7:0] W0x=-8'd2;
	parameter signed [7:0] W1x=-8'd26;
	parameter signed [7:0] W2x=-8'd26;
	parameter signed [7:0] W3x=8'd2;
	parameter signed [7:0] W4x=8'd12;
	parameter signed [7:0] W5x=8'd4;
	parameter signed [7:0] W6x=8'd34;
	parameter signed [7:0] W7x=8'd24;
	parameter signed [7:0] W8x=8'd14;
	parameter signed [7:0] W9x=8'd10;
	parameter signed [7:0] W10x=-8'd24;
	parameter signed [7:0] W11x=-8'd22;
	parameter signed [7:0] W12x=-8'd54;
	parameter signed [7:0] W13x=-8'd40;
	parameter signed [7:0] W14x=-8'd2;
	parameter signed [7:0] W15x=8'd50;
	parameter signed [7:0] W16x=8'd36;
	parameter signed [7:0] W17x=8'd30;
	parameter signed [7:0] W18x=8'd26;
	parameter signed [7:0] W19x=8'd20;
	parameter signed [7:0] W20x=8'd22;
	parameter signed [7:0] W21x=-8'd2;
	parameter signed [7:0] W22x=-8'd20;
	parameter signed [7:0] W23x=8'd18;
	parameter signed [7:0] W24x=8'd22;
	parameter signed [7:0] W25x=-8'd12;
	parameter signed [7:0] W26x=-8'd4;
	parameter signed [7:0] W27x=-8'd12;
	parameter signed [7:0] W28x=8'd4;
	parameter signed [7:0] W29x=8'd2;
	parameter signed [7:0] W30x=-8'd18;
	parameter signed [7:0] W31x=8'd0;
	parameter signed [7:0] W32x=8'd8;
	parameter signed [7:0] W33x=8'd16;
	parameter signed [7:0] W34x=-8'd10;
	parameter signed [7:0] W35x=8'd4;
	parameter signed [7:0] W36x=8'd6;
	parameter signed [7:0] W37x=8'd4;
	parameter signed [7:0] W38x=8'd4;
	parameter signed [7:0] W39x=8'd0;
	parameter signed [7:0] W40x=-8'd2;
	parameter signed [7:0] W41x=-8'd2;
	parameter signed [7:0] W42x=-8'd6;
	parameter signed [7:0] W43x=8'd20;
	parameter signed [7:0] W44x=8'd12;
	parameter signed [7:0] W45x=8'd10;
	parameter signed [7:0] W46x=-8'd4;
	parameter signed [7:0] W47x=8'd12;
	parameter signed [7:0] W48x=8'd2;
	parameter signed [7:0] W49x=8'd6;
	parameter signed [7:0] W50x=-8'd2;
	parameter signed [7:0] W51x=8'd2;
	parameter signed [7:0] W52x=-8'd2;
	parameter signed [7:0] W53x=8'd14;
	parameter signed [7:0] W54x=8'd30;
	parameter signed [7:0] W55x=8'd20;
	parameter signed [7:0] W56x=-8'd4;
	parameter signed [7:0] W57x=-8'd12;
	parameter signed [7:0] W58x=-8'd2;
	parameter signed [7:0] W59x=8'd30;
	parameter signed [7:0] W60x=8'd12;
	parameter signed [7:0] W61x=8'd6;
	parameter signed [7:0] W62x=-8'd20;
	parameter signed [7:0] W63x=8'd26;
	parameter signed [7:0] W64x=-8'd12;
	parameter signed [7:0] W65x=-8'd26;
	parameter signed [7:0] W66x=-8'd26;
	parameter signed [7:0] W67x=-8'd22;
	parameter signed [7:0] W68x=-8'd24;
	parameter signed [7:0] W69x=8'd2;
	parameter signed [7:0] W70x=-8'd4;
	parameter signed [7:0] W71x=8'd6;
	parameter signed [7:0] W72x=-8'd4;
	parameter signed [7:0] W73x=-8'd8;
	parameter signed [7:0] W74x=8'd16;
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
	assign sum30x = A30x_c*W30x;
	assign sum31x = A31x_c*W31x;
	assign sum32x = A32x_c*W32x;
	assign sum33x = A33x_c*W33x;
	assign sum34x = A34x_c*W34x;
	assign sum35x = A35x_c*W35x;
	assign sum36x = A36x_c*W36x;
	assign sum37x = A37x_c*W37x;
	assign sum38x = A38x_c*W38x;
	assign sum39x = A39x_c*W39x;
	assign sum40x = A40x_c*W40x;
	assign sum41x = A41x_c*W41x;
	assign sum42x = A42x_c*W42x;
	assign sum43x = A43x_c*W43x;
	assign sum44x = A44x_c*W44x;
	assign sum45x = A45x_c*W45x;
	assign sum46x = A46x_c*W46x;
	assign sum47x = A47x_c*W47x;
	assign sum48x = A48x_c*W48x;
	assign sum49x = A49x_c*W49x;
	assign sum50x = A50x_c*W50x;
	assign sum51x = A51x_c*W51x;
	assign sum52x = A52x_c*W52x;
	assign sum53x = A53x_c*W53x;
	assign sum54x = A54x_c*W54x;
	assign sum55x = A55x_c*W55x;
	assign sum56x = A56x_c*W56x;
	assign sum57x = A57x_c*W57x;
	assign sum58x = A58x_c*W58x;
	assign sum59x = A59x_c*W59x;
	assign sum60x = A60x_c*W60x;
	assign sum61x = A61x_c*W61x;
	assign sum62x = A62x_c*W62x;
	assign sum63x = A63x_c*W63x;
	assign sum64x = A64x_c*W64x;
	assign sum65x = A65x_c*W65x;
	assign sum66x = A66x_c*W66x;
	assign sum67x = A67x_c*W67x;
	assign sum68x = A68x_c*W68x;
	assign sum69x = A69x_c*W69x;
	assign sum70x = A70x_c*W70x;
	assign sum71x = A71x_c*W71x;
	assign sum72x = A72x_c*W72x;
	assign sum73x = A73x_c*W73x;
	assign sum74x = A74x_c*W74x;

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
			A30x_c <= 8'd0;
			A31x_c <= 8'd0;
			A32x_c <= 8'd0;
			A33x_c <= 8'd0;
			A34x_c <= 8'd0;
			A35x_c <= 8'd0;
			A36x_c <= 8'd0;
			A37x_c <= 8'd0;
			A38x_c <= 8'd0;
			A39x_c <= 8'd0;
			A40x_c <= 8'd0;
			A41x_c <= 8'd0;
			A42x_c <= 8'd0;
			A43x_c <= 8'd0;
			A44x_c <= 8'd0;
			A45x_c <= 8'd0;
			A46x_c <= 8'd0;
			A47x_c <= 8'd0;
			A48x_c <= 8'd0;
			A49x_c <= 8'd0;
			A50x_c <= 8'd0;
			A51x_c <= 8'd0;
			A52x_c <= 8'd0;
			A53x_c <= 8'd0;
			A54x_c <= 8'd0;
			A55x_c <= 8'd0;
			A56x_c <= 8'd0;
			A57x_c <= 8'd0;
			A58x_c <= 8'd0;
			A59x_c <= 8'd0;
			A60x_c <= 8'd0;
			A61x_c <= 8'd0;
			A62x_c <= 8'd0;
			A63x_c <= 8'd0;
			A64x_c <= 8'd0;
			A65x_c <= 8'd0;
			A66x_c <= 8'd0;
			A67x_c <= 8'd0;
			A68x_c <= 8'd0;
			A69x_c <= 8'd0;
			A70x_c <= 8'd0;
			A71x_c <= 8'd0;
			A72x_c <= 8'd0;
			A73x_c <= 8'd0;
			A74x_c <= 8'd0;
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
			A30x_c <= A30x;
			A31x_c <= A31x;
			A32x_c <= A32x;
			A33x_c <= A33x;
			A34x_c <= A34x;
			A35x_c <= A35x;
			A36x_c <= A36x;
			A37x_c <= A37x;
			A38x_c <= A38x;
			A39x_c <= A39x;
			A40x_c <= A40x;
			A41x_c <= A41x;
			A42x_c <= A42x;
			A43x_c <= A43x;
			A44x_c <= A44x;
			A45x_c <= A45x;
			A46x_c <= A46x;
			A47x_c <= A47x;
			A48x_c <= A48x;
			A49x_c <= A49x;
			A50x_c <= A50x;
			A51x_c <= A51x;
			A52x_c <= A52x;
			A53x_c <= A53x;
			A54x_c <= A54x;
			A55x_c <= A55x;
			A56x_c <= A56x;
			A57x_c <= A57x;
			A58x_c <= A58x;
			A59x_c <= A59x;
			A60x_c <= A60x;
			A61x_c <= A61x;
			A62x_c <= A62x;
			A63x_c <= A63x;
			A64x_c <= A64x;
			A65x_c <= A65x;
			A66x_c <= A66x;
			A67x_c <= A67x;
			A68x_c <= A68x;
			A69x_c <= A69x;
			A70x_c <= A70x;
			A71x_c <= A71x;
			A72x_c <= A72x;
			A73x_c <= A73x;
			A74x_c <= A74x;
			sumout<={sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x[15],sum0x}+{sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x[15],sum1x}+{sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x[15],sum2x}+{sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x[15],sum3x}+{sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x[15],sum4x}+{sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x[15],sum5x}+{sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x[15],sum6x}+{sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x[15],sum7x}+{sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x[15],sum8x}+{sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x[15],sum9x}+{sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x[15],sum10x}+{sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x[15],sum11x}+{sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x[15],sum12x}+{sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x[15],sum13x}+{sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x[15],sum14x}+{sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x[15],sum15x}+{sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x[15],sum16x}+{sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x[15],sum17x}+{sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x[15],sum18x}+{sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x[15],sum19x}+{sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x[15],sum20x}+{sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x[15],sum21x}+{sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x[15],sum22x}+{sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x[15],sum23x}+{sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x[15],sum24x}+{sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x[15],sum25x}+{sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x[15],sum26x}+{sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x[15],sum27x}+{sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x[15],sum28x}+{sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x[15],sum29x}+{sum30x[15],sum30x[15],sum30x[15],sum30x[15],sum30x[15],sum30x[15],sum30x[15],sum30x}+{sum31x[15],sum31x[15],sum31x[15],sum31x[15],sum31x[15],sum31x[15],sum31x[15],sum31x}+{sum32x[15],sum32x[15],sum32x[15],sum32x[15],sum32x[15],sum32x[15],sum32x[15],sum32x}+{sum33x[15],sum33x[15],sum33x[15],sum33x[15],sum33x[15],sum33x[15],sum33x[15],sum33x}+{sum34x[15],sum34x[15],sum34x[15],sum34x[15],sum34x[15],sum34x[15],sum34x[15],sum34x}+{sum35x[15],sum35x[15],sum35x[15],sum35x[15],sum35x[15],sum35x[15],sum35x[15],sum35x}+{sum36x[15],sum36x[15],sum36x[15],sum36x[15],sum36x[15],sum36x[15],sum36x[15],sum36x}+{sum37x[15],sum37x[15],sum37x[15],sum37x[15],sum37x[15],sum37x[15],sum37x[15],sum37x}+{sum38x[15],sum38x[15],sum38x[15],sum38x[15],sum38x[15],sum38x[15],sum38x[15],sum38x}+{sum39x[15],sum39x[15],sum39x[15],sum39x[15],sum39x[15],sum39x[15],sum39x[15],sum39x}+{sum40x[15],sum40x[15],sum40x[15],sum40x[15],sum40x[15],sum40x[15],sum40x[15],sum40x}+{sum41x[15],sum41x[15],sum41x[15],sum41x[15],sum41x[15],sum41x[15],sum41x[15],sum41x}+{sum42x[15],sum42x[15],sum42x[15],sum42x[15],sum42x[15],sum42x[15],sum42x[15],sum42x}+{sum43x[15],sum43x[15],sum43x[15],sum43x[15],sum43x[15],sum43x[15],sum43x[15],sum43x}+{sum44x[15],sum44x[15],sum44x[15],sum44x[15],sum44x[15],sum44x[15],sum44x[15],sum44x}+{sum45x[15],sum45x[15],sum45x[15],sum45x[15],sum45x[15],sum45x[15],sum45x[15],sum45x}+{sum46x[15],sum46x[15],sum46x[15],sum46x[15],sum46x[15],sum46x[15],sum46x[15],sum46x}+{sum47x[15],sum47x[15],sum47x[15],sum47x[15],sum47x[15],sum47x[15],sum47x[15],sum47x}+{sum48x[15],sum48x[15],sum48x[15],sum48x[15],sum48x[15],sum48x[15],sum48x[15],sum48x}+{sum49x[15],sum49x[15],sum49x[15],sum49x[15],sum49x[15],sum49x[15],sum49x[15],sum49x}+{sum50x[15],sum50x[15],sum50x[15],sum50x[15],sum50x[15],sum50x[15],sum50x[15],sum50x}+{sum51x[15],sum51x[15],sum51x[15],sum51x[15],sum51x[15],sum51x[15],sum51x[15],sum51x}+{sum52x[15],sum52x[15],sum52x[15],sum52x[15],sum52x[15],sum52x[15],sum52x[15],sum52x}+{sum53x[15],sum53x[15],sum53x[15],sum53x[15],sum53x[15],sum53x[15],sum53x[15],sum53x}+{sum54x[15],sum54x[15],sum54x[15],sum54x[15],sum54x[15],sum54x[15],sum54x[15],sum54x}+{sum55x[15],sum55x[15],sum55x[15],sum55x[15],sum55x[15],sum55x[15],sum55x[15],sum55x}+{sum56x[15],sum56x[15],sum56x[15],sum56x[15],sum56x[15],sum56x[15],sum56x[15],sum56x}+{sum57x[15],sum57x[15],sum57x[15],sum57x[15],sum57x[15],sum57x[15],sum57x[15],sum57x}+{sum58x[15],sum58x[15],sum58x[15],sum58x[15],sum58x[15],sum58x[15],sum58x[15],sum58x}+{sum59x[15],sum59x[15],sum59x[15],sum59x[15],sum59x[15],sum59x[15],sum59x[15],sum59x}+{sum60x[15],sum60x[15],sum60x[15],sum60x[15],sum60x[15],sum60x[15],sum60x[15],sum60x}+{sum61x[15],sum61x[15],sum61x[15],sum61x[15],sum61x[15],sum61x[15],sum61x[15],sum61x}+{sum62x[15],sum62x[15],sum62x[15],sum62x[15],sum62x[15],sum62x[15],sum62x[15],sum62x}+{sum63x[15],sum63x[15],sum63x[15],sum63x[15],sum63x[15],sum63x[15],sum63x[15],sum63x}+{sum64x[15],sum64x[15],sum64x[15],sum64x[15],sum64x[15],sum64x[15],sum64x[15],sum64x}+{sum65x[15],sum65x[15],sum65x[15],sum65x[15],sum65x[15],sum65x[15],sum65x[15],sum65x}+{sum66x[15],sum66x[15],sum66x[15],sum66x[15],sum66x[15],sum66x[15],sum66x[15],sum66x}+{sum67x[15],sum67x[15],sum67x[15],sum67x[15],sum67x[15],sum67x[15],sum67x[15],sum67x}+{sum68x[15],sum68x[15],sum68x[15],sum68x[15],sum68x[15],sum68x[15],sum68x[15],sum68x}+{sum69x[15],sum69x[15],sum69x[15],sum69x[15],sum69x[15],sum69x[15],sum69x[15],sum69x}+{sum70x[15],sum70x[15],sum70x[15],sum70x[15],sum70x[15],sum70x[15],sum70x[15],sum70x}+{sum71x[15],sum71x[15],sum71x[15],sum71x[15],sum71x[15],sum71x[15],sum71x[15],sum71x}+{sum72x[15],sum72x[15],sum72x[15],sum72x[15],sum72x[15],sum72x[15],sum72x[15],sum72x}+{sum73x[15],sum73x[15],sum73x[15],sum73x[15],sum73x[15],sum73x[15],sum73x[15],sum73x}+{sum74x[15],sum74x[15],sum74x[15],sum74x[15],sum74x[15],sum74x[15],sum74x[15],sum74x}+{B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x};

			if(sumout[22]==0)
				if(sumout[21:13]!=9'b0)
					N4x<=8'd127;
				else
					if(sumout[5]==1)
						N4x<=sumout[13:6]+8'd1;
					else
						N4x<=sumout[13:6];
			else
				N4x<=8'd0;
			end
		end
endmodule
