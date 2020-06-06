module layer_1(reset,clk,N1x,N2x,N3x,N4x,N5x,R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x,R10x,R11x,R12x,R13x,R14x,R15x,R16x,R17x,R18x,R19x,R20x,R21x,R22x,R23x,R24x,R25x,R26x,R27x,R28x,R29x,R30x,R31x,R32x,R33x,R34x,R35x,R36x,R37x,R38x,R39x,R40x,R41x,R42x,R43x,R44x,R45x,R46x,R47x,R48x,R49x,R50x,R51x,R52x,R53x,R54x,R55x,R56x,R57x,R58x,R59x,R60x,R61x,R62x,R63x,R64x,R65x,R66x,R67x,R68x,R69x,R70x,R71x,R72x,R73x,R74x);
	input reset, clk; 
	output [23:0] N1x,N2x,N3x,N4x,N5x;
	input [23:0] R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x,R10x,R11x,R12x,R13x,R14x,R15x,R16x,R17x,R18x,R19x,R20x,R21x,R22x,R23x,R24x,R25x,R26x,R27x,R28x,R29x,R30x,R31x,R32x,R33x,R34x,R35x,R36x,R37x,R38x,R39x,R40x,R41x,R42x,R43x,R44x,R45x,R46x,R47x,R48x,R49x,R50x,R51x,R52x,R53x,R54x,R55x,R56x,R57x,R58x,R59x,R60x,R61x,R62x,R63x,R64x,R65x,R66x,R67x,R68x,R69x,R70x,R71x,R72x,R73x,R74x;

	node1_1 node1_1( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.A5x(R5x), 
		.A6x(R6x), 
		.A7x(R7x), 
		.A8x(R8x), 
		.A9x(R9x), 
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.A15x(R15x), 
		.A16x(R16x), 
		.A17x(R17x), 
		.A18x(R18x), 
		.A19x(R19x), 
		.A20x(R20x), 
		.A21x(R21x), 
		.A22x(R22x), 
		.A23x(R23x), 
		.A24x(R24x), 
		.A25x(R25x), 
		.A26x(R26x), 
		.A27x(R27x), 
		.A28x(R28x), 
		.A29x(R29x), 
		.A30x(R30x), 
		.A31x(R31x), 
		.A32x(R32x), 
		.A33x(R33x), 
		.A34x(R34x), 
		.A35x(R35x), 
		.A36x(R36x), 
		.A37x(R37x), 
		.A38x(R38x), 
		.A39x(R39x), 
		.A40x(R40x), 
		.A41x(R41x), 
		.A42x(R42x), 
		.A43x(R43x), 
		.A44x(R44x), 
		.A45x(R45x), 
		.A46x(R46x), 
		.A47x(R47x), 
		.A48x(R48x), 
		.A49x(R49x), 
		.A50x(R50x), 
		.A51x(R51x), 
		.A52x(R52x), 
		.A53x(R53x), 
		.A54x(R54x), 
		.A55x(R55x), 
		.A56x(R56x), 
		.A57x(R57x), 
		.A58x(R58x), 
		.A59x(R59x), 
		.A60x(R60x), 
		.A61x(R61x), 
		.A62x(R62x), 
		.A63x(R63x), 
		.A64x(R64x), 
		.A65x(R65x), 
		.A66x(R66x), 
		.A67x(R67x), 
		.A68x(R68x), 
		.A69x(R69x), 
		.A70x(R70x), 
		.A71x(R71x), 
		.A72x(R72x), 
		.A73x(R73x), 
		.A74x(R74x),  
		.clk(clk), 
		.reset(reset), 
		.N1x(N1x) 
	); 
	node1_2 node1_2( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.A5x(R5x), 
		.A6x(R6x), 
		.A7x(R7x), 
		.A8x(R8x), 
		.A9x(R9x), 
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.A15x(R15x), 
		.A16x(R16x), 
		.A17x(R17x), 
		.A18x(R18x), 
		.A19x(R19x), 
		.A20x(R20x), 
		.A21x(R21x), 
		.A22x(R22x), 
		.A23x(R23x), 
		.A24x(R24x), 
		.A25x(R25x), 
		.A26x(R26x), 
		.A27x(R27x), 
		.A28x(R28x), 
		.A29x(R29x), 
		.A30x(R30x), 
		.A31x(R31x), 
		.A32x(R32x), 
		.A33x(R33x), 
		.A34x(R34x), 
		.A35x(R35x), 
		.A36x(R36x), 
		.A37x(R37x), 
		.A38x(R38x), 
		.A39x(R39x), 
		.A40x(R40x), 
		.A41x(R41x), 
		.A42x(R42x), 
		.A43x(R43x), 
		.A44x(R44x), 
		.A45x(R45x), 
		.A46x(R46x), 
		.A47x(R47x), 
		.A48x(R48x), 
		.A49x(R49x), 
		.A50x(R50x), 
		.A51x(R51x), 
		.A52x(R52x), 
		.A53x(R53x), 
		.A54x(R54x), 
		.A55x(R55x), 
		.A56x(R56x), 
		.A57x(R57x), 
		.A58x(R58x), 
		.A59x(R59x), 
		.A60x(R60x), 
		.A61x(R61x), 
		.A62x(R62x), 
		.A63x(R63x), 
		.A64x(R64x), 
		.A65x(R65x), 
		.A66x(R66x), 
		.A67x(R67x), 
		.A68x(R68x), 
		.A69x(R69x), 
		.A70x(R70x), 
		.A71x(R71x), 
		.A72x(R72x), 
		.A73x(R73x), 
		.A74x(R74x), 
		.clk(clk), 
		.reset(reset), 
		.N2x(N2x) 
	); 
	node1_3 node1_3( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.A5x(R5x), 
		.A6x(R6x), 
		.A7x(R7x), 
		.A8x(R8x), 
		.A9x(R9x), 
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.A15x(R15x), 
		.A16x(R16x), 
		.A17x(R17x), 
		.A18x(R18x), 
		.A19x(R19x), 
		.A20x(R20x), 
		.A21x(R21x), 
		.A22x(R22x), 
		.A23x(R23x), 
		.A24x(R24x), 
		.A25x(R25x), 
		.A26x(R26x), 
		.A27x(R27x), 
		.A28x(R28x), 
		.A29x(R29x), 
		.A30x(R30x), 
		.A31x(R31x), 
		.A32x(R32x), 
		.A33x(R33x), 
		.A34x(R34x), 
		.A35x(R35x), 
		.A36x(R36x), 
		.A37x(R37x), 
		.A38x(R38x), 
		.A39x(R39x), 
		.A40x(R40x), 
		.A41x(R41x), 
		.A42x(R42x), 
		.A43x(R43x), 
		.A44x(R44x), 
		.A45x(R45x), 
		.A46x(R46x), 
		.A47x(R47x), 
		.A48x(R48x), 
		.A49x(R49x), 
		.A50x(R50x), 
		.A51x(R51x), 
		.A52x(R52x), 
		.A53x(R53x), 
		.A54x(R54x), 
		.A55x(R55x), 
		.A56x(R56x), 
		.A57x(R57x), 
		.A58x(R58x), 
		.A59x(R59x), 
		.A60x(R60x), 
		.A61x(R61x), 
		.A62x(R62x), 
		.A63x(R63x), 
		.A64x(R64x), 
		.A65x(R65x), 
		.A66x(R66x), 
		.A67x(R67x), 
		.A68x(R68x), 
		.A69x(R69x), 
		.A70x(R70x), 
		.A71x(R71x), 
		.A72x(R72x), 
		.A73x(R73x), 
		.A74x(R74x), 
		.clk(clk), 
		.reset(reset), 
		.N3x(N3x) 
	); 
	node1_4 node1_4( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.A5x(R5x), 
		.A6x(R6x), 
		.A7x(R7x), 
		.A8x(R8x), 
		.A9x(R9x), 
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.A15x(R15x), 
		.A16x(R16x), 
		.A17x(R17x), 
		.A18x(R18x), 
		.A19x(R19x), 
		.A20x(R20x), 
		.A21x(R21x), 
		.A22x(R22x), 
		.A23x(R23x), 
		.A24x(R24x), 
		.A25x(R25x), 
		.A26x(R26x), 
		.A27x(R27x), 
		.A28x(R28x), 
		.A29x(R29x), 
		.A30x(R30x), 
		.A31x(R31x), 
		.A32x(R32x), 
		.A33x(R33x), 
		.A34x(R34x), 
		.A35x(R35x), 
		.A36x(R36x), 
		.A37x(R37x), 
		.A38x(R38x), 
		.A39x(R39x), 
		.A40x(R40x), 
		.A41x(R41x), 
		.A42x(R42x), 
		.A43x(R43x), 
		.A44x(R44x), 
		.A45x(R45x), 
		.A46x(R46x), 
		.A47x(R47x), 
		.A48x(R48x), 
		.A49x(R49x), 
		.A50x(R50x), 
		.A51x(R51x), 
		.A52x(R52x), 
		.A53x(R53x), 
		.A54x(R54x), 
		.A55x(R55x), 
		.A56x(R56x), 
		.A57x(R57x), 
		.A58x(R58x), 
		.A59x(R59x), 
		.A60x(R60x), 
		.A61x(R61x), 
		.A62x(R62x), 
		.A63x(R63x), 
		.A64x(R64x), 
		.A65x(R65x), 
		.A66x(R66x), 
		.A67x(R67x), 
		.A68x(R68x), 
		.A69x(R69x), 
		.A70x(R70x), 
		.A71x(R71x), 
		.A72x(R72x), 
		.A73x(R73x), 
		.A74x(R74x), 
		.clk(clk), 
		.reset(reset), 
		.N4x(N4x) 
	); 
	node1_5 node1_5( 
		.A0x(R0x), 
		.A1x(R1x), 
		.A2x(R2x), 
		.A3x(R3x), 
		.A4x(R4x), 
		.A5x(R5x), 
		.A6x(R6x), 
		.A7x(R7x), 
		.A8x(R8x), 
		.A9x(R9x), 
		.A10x(R10x), 
		.A11x(R11x), 
		.A12x(R12x), 
		.A13x(R13x), 
		.A14x(R14x), 
		.A15x(R15x), 
		.A16x(R16x), 
		.A17x(R17x), 
		.A18x(R18x), 
		.A19x(R19x), 
		.A20x(R20x), 
		.A21x(R21x), 
		.A22x(R22x), 
		.A23x(R23x), 
		.A24x(R24x), 
		.A25x(R25x), 
		.A26x(R26x), 
		.A27x(R27x), 
		.A28x(R28x), 
		.A29x(R29x), 
		.A30x(R30x), 
		.A31x(R31x), 
		.A32x(R32x), 
		.A33x(R33x), 
		.A34x(R34x), 
		.A35x(R35x), 
		.A36x(R36x), 
		.A37x(R37x), 
		.A38x(R38x), 
		.A39x(R39x), 
		.A40x(R40x), 
		.A41x(R41x), 
		.A42x(R42x), 
		.A43x(R43x), 
		.A44x(R44x), 
		.A45x(R45x), 
		.A46x(R46x), 
		.A47x(R47x), 
		.A48x(R48x), 
		.A49x(R49x), 
		.A50x(R50x), 
		.A51x(R51x), 
		.A52x(R52x), 
		.A53x(R53x), 
		.A54x(R54x), 
		.A55x(R55x), 
		.A56x(R56x), 
		.A57x(R57x), 
		.A58x(R58x), 
		.A59x(R59x), 
		.A60x(R60x), 
		.A61x(R61x), 
		.A62x(R62x), 
		.A63x(R63x), 
		.A64x(R64x), 
		.A65x(R65x), 
		.A66x(R66x), 
		.A67x(R67x), 
		.A68x(R68x), 
		.A69x(R69x), 
		.A70x(R70x), 
		.A71x(R71x), 
		.A72x(R72x), 
		.A73x(R73x), 
		.A74x(R74x), 
		.clk(clk), 
		.reset(reset), 
		.N5x(N5x) 
	); 
endmodule
