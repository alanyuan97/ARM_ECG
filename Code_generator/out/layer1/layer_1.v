module layer_1(reset,clk,N1x,N2x,N3x,N4x,N5x,R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x,R10x,R11x,R12x,R13x,R14x,R15x,R16x,R17x,R18x,R19x,R20x,R21x,R22x,R23x,R24x,R25x,R26x,R27x,R28x,R29x,R30x,R31x,R32x,R33x,R34x,R35x,R36x,R37x,R38x,R39x,R40x,R41x,R42x,R43x,R44x,R45x,R46x,R47x,R48x,R49x,R50x,R51x,R52x,R53x,R54x,R55x,R56x,R57x,R58x,R59x,R60x,R61x,R62x,R63x,R64x,R65x,R66x,R67x,R68x,R69x,R70x,R71x,R72x,R73x,R74x,R75x,R76x,R77x,R78x,R79x,R80x,R81x,R82x,R83x,R84x,R85x,R86x,R87x,R88x,R89x,R90x,R91x,R92x,R93x,R94x,R95x,R96x,R97x,R98x,R99x,R100x,R101x,R102x,R103x,R104x,R105x,R106x,R107x,R108x,R109x,R110x,R111x,R112x,R113x,R114x,R115x,R116x,R117x,R118x,R119x,R120x,R121x,R122x,R123x,R124x,R125x,R126x,R127x,R128x,R129x,R130x,R131x,R132x,R133x,R134x,R135x,R136x,R137x,R138x,R139x,R140x,R141x,R142x,R143x,R144x,R145x,R146x,R147x,R148x,R149x,R150x,R151x,R152x,R153x,R154x,R155x,R156x,R157x,R158x,R159x,R160x,R161x,R162x,R163x,R164x,R165x,R166x,R167x,R168x,R169x,R170x,R171x,R172x,R173x,R174x,R175x,R176x,R177x,R178x,R179x,R180x,R181x,R182x,R183x,R184x,R185x,R186x);
	input reset, clk; 
	output [7:0] N1x,N2x,N3x,N4x,N5x;
	input [7:0] R0x,R1x,R2x,R3x,R4x,R5x,R6x,R7x,R8x,R9x,R10x,R11x,R12x,R13x,R14x,R15x,R16x,R17x,R18x,R19x,R20x,R21x,R22x,R23x,R24x,R25x,R26x,R27x,R28x,R29x,R30x,R31x,R32x,R33x,R34x,R35x,R36x,R37x,R38x,R39x,R40x,R41x,R42x,R43x,R44x,R45x,R46x,R47x,R48x,R49x,R50x,R51x,R52x,R53x,R54x,R55x,R56x,R57x,R58x,R59x,R60x,R61x,R62x,R63x,R64x,R65x,R66x,R67x,R68x,R69x,R70x,R71x,R72x,R73x,R74x,R75x,R76x,R77x,R78x,R79x,R80x,R81x,R82x,R83x,R84x,R85x,R86x,R87x,R88x,R89x,R90x,R91x,R92x,R93x,R94x,R95x,R96x,R97x,R98x,R99x,R100x,R101x,R102x,R103x,R104x,R105x,R106x,R107x,R108x,R109x,R110x,R111x,R112x,R113x,R114x,R115x,R116x,R117x,R118x,R119x,R120x,R121x,R122x,R123x,R124x,R125x,R126x,R127x,R128x,R129x,R130x,R131x,R132x,R133x,R134x,R135x,R136x,R137x,R138x,R139x,R140x,R141x,R142x,R143x,R144x,R145x,R146x,R147x,R148x,R149x,R150x,R151x,R152x,R153x,R154x,R155x,R156x,R157x,R158x,R159x,R160x,R161x,R162x,R163x,R164x,R165x,R166x,R167x,R168x,R169x,R170x,R171x,R172x,R173x,R174x,R175x,R176x,R177x,R178x,R179x,R180x,R181x,R182x,R183x,R184x,R185x,R186x;

	node_1_1 node_1_1( 
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
		.A75x(R75x), 
		.A76x(R76x), 
		.A77x(R77x), 
		.A78x(R78x), 
		.A79x(R79x), 
		.A80x(R80x), 
		.A81x(R81x), 
		.A82x(R82x), 
		.A83x(R83x), 
		.A84x(R84x), 
		.A85x(R85x), 
		.A86x(R86x), 
		.A87x(R87x), 
		.A88x(R88x), 
		.A89x(R89x), 
		.A90x(R90x), 
		.A91x(R91x), 
		.A92x(R92x), 
		.A93x(R93x), 
		.A94x(R94x), 
		.A95x(R95x), 
		.A96x(R96x), 
		.A97x(R97x), 
		.A98x(R98x), 
		.A99x(R99x), 
		.A100x(R100x), 
		.A101x(R101x), 
		.A102x(R102x), 
		.A103x(R103x), 
		.A104x(R104x), 
		.A105x(R105x), 
		.A106x(R106x), 
		.A107x(R107x), 
		.A108x(R108x), 
		.A109x(R109x), 
		.A110x(R110x), 
		.A111x(R111x), 
		.A112x(R112x), 
		.A113x(R113x), 
		.A114x(R114x), 
		.A115x(R115x), 
		.A116x(R116x), 
		.A117x(R117x), 
		.A118x(R118x), 
		.A119x(R119x), 
		.A120x(R120x), 
		.A121x(R121x), 
		.A122x(R122x), 
		.A123x(R123x), 
		.A124x(R124x), 
		.A125x(R125x), 
		.A126x(R126x), 
		.A127x(R127x), 
		.A128x(R128x), 
		.A129x(R129x), 
		.A130x(R130x), 
		.A131x(R131x), 
		.A132x(R132x), 
		.A133x(R133x), 
		.A134x(R134x), 
		.A135x(R135x), 
		.A136x(R136x), 
		.A137x(R137x), 
		.A138x(R138x), 
		.A139x(R139x), 
		.A140x(R140x), 
		.A141x(R141x), 
		.A142x(R142x), 
		.A143x(R143x), 
		.A144x(R144x), 
		.A145x(R145x), 
		.A146x(R146x), 
		.A147x(R147x), 
		.A148x(R148x), 
		.A149x(R149x), 
		.A150x(R150x), 
		.A151x(R151x), 
		.A152x(R152x), 
		.A153x(R153x), 
		.A154x(R154x), 
		.A155x(R155x), 
		.A156x(R156x), 
		.A157x(R157x), 
		.A158x(R158x), 
		.A159x(R159x), 
		.A160x(R160x), 
		.A161x(R161x), 
		.A162x(R162x), 
		.A163x(R163x), 
		.A164x(R164x), 
		.A165x(R165x), 
		.A166x(R166x), 
		.A167x(R167x), 
		.A168x(R168x), 
		.A169x(R169x), 
		.A170x(R170x), 
		.A171x(R171x), 
		.A172x(R172x), 
		.A173x(R173x), 
		.A174x(R174x), 
		.A175x(R175x), 
		.A176x(R176x), 
		.A177x(R177x), 
		.A178x(R178x), 
		.A179x(R179x), 
		.A180x(R180x), 
		.A181x(R181x), 
		.A182x(R182x), 
		.A183x(R183x), 
		.A184x(R184x), 
		.A185x(R185x), 
		.A186x(R186x), 
		.clk(clk), 
		.reset(reset), 
		.N1x(N1x) 
	); 
	node_1_2 node_1_2( 
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
		.A75x(R75x), 
		.A76x(R76x), 
		.A77x(R77x), 
		.A78x(R78x), 
		.A79x(R79x), 
		.A80x(R80x), 
		.A81x(R81x), 
		.A82x(R82x), 
		.A83x(R83x), 
		.A84x(R84x), 
		.A85x(R85x), 
		.A86x(R86x), 
		.A87x(R87x), 
		.A88x(R88x), 
		.A89x(R89x), 
		.A90x(R90x), 
		.A91x(R91x), 
		.A92x(R92x), 
		.A93x(R93x), 
		.A94x(R94x), 
		.A95x(R95x), 
		.A96x(R96x), 
		.A97x(R97x), 
		.A98x(R98x), 
		.A99x(R99x), 
		.A100x(R100x), 
		.A101x(R101x), 
		.A102x(R102x), 
		.A103x(R103x), 
		.A104x(R104x), 
		.A105x(R105x), 
		.A106x(R106x), 
		.A107x(R107x), 
		.A108x(R108x), 
		.A109x(R109x), 
		.A110x(R110x), 
		.A111x(R111x), 
		.A112x(R112x), 
		.A113x(R113x), 
		.A114x(R114x), 
		.A115x(R115x), 
		.A116x(R116x), 
		.A117x(R117x), 
		.A118x(R118x), 
		.A119x(R119x), 
		.A120x(R120x), 
		.A121x(R121x), 
		.A122x(R122x), 
		.A123x(R123x), 
		.A124x(R124x), 
		.A125x(R125x), 
		.A126x(R126x), 
		.A127x(R127x), 
		.A128x(R128x), 
		.A129x(R129x), 
		.A130x(R130x), 
		.A131x(R131x), 
		.A132x(R132x), 
		.A133x(R133x), 
		.A134x(R134x), 
		.A135x(R135x), 
		.A136x(R136x), 
		.A137x(R137x), 
		.A138x(R138x), 
		.A139x(R139x), 
		.A140x(R140x), 
		.A141x(R141x), 
		.A142x(R142x), 
		.A143x(R143x), 
		.A144x(R144x), 
		.A145x(R145x), 
		.A146x(R146x), 
		.A147x(R147x), 
		.A148x(R148x), 
		.A149x(R149x), 
		.A150x(R150x), 
		.A151x(R151x), 
		.A152x(R152x), 
		.A153x(R153x), 
		.A154x(R154x), 
		.A155x(R155x), 
		.A156x(R156x), 
		.A157x(R157x), 
		.A158x(R158x), 
		.A159x(R159x), 
		.A160x(R160x), 
		.A161x(R161x), 
		.A162x(R162x), 
		.A163x(R163x), 
		.A164x(R164x), 
		.A165x(R165x), 
		.A166x(R166x), 
		.A167x(R167x), 
		.A168x(R168x), 
		.A169x(R169x), 
		.A170x(R170x), 
		.A171x(R171x), 
		.A172x(R172x), 
		.A173x(R173x), 
		.A174x(R174x), 
		.A175x(R175x), 
		.A176x(R176x), 
		.A177x(R177x), 
		.A178x(R178x), 
		.A179x(R179x), 
		.A180x(R180x), 
		.A181x(R181x), 
		.A182x(R182x), 
		.A183x(R183x), 
		.A184x(R184x), 
		.A185x(R185x), 
		.A186x(R186x), 
		.clk(clk), 
		.reset(reset), 
		.N2x(N2x) 
	); 
	node_1_3 node_1_3( 
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
		.A75x(R75x), 
		.A76x(R76x), 
		.A77x(R77x), 
		.A78x(R78x), 
		.A79x(R79x), 
		.A80x(R80x), 
		.A81x(R81x), 
		.A82x(R82x), 
		.A83x(R83x), 
		.A84x(R84x), 
		.A85x(R85x), 
		.A86x(R86x), 
		.A87x(R87x), 
		.A88x(R88x), 
		.A89x(R89x), 
		.A90x(R90x), 
		.A91x(R91x), 
		.A92x(R92x), 
		.A93x(R93x), 
		.A94x(R94x), 
		.A95x(R95x), 
		.A96x(R96x), 
		.A97x(R97x), 
		.A98x(R98x), 
		.A99x(R99x), 
		.A100x(R100x), 
		.A101x(R101x), 
		.A102x(R102x), 
		.A103x(R103x), 
		.A104x(R104x), 
		.A105x(R105x), 
		.A106x(R106x), 
		.A107x(R107x), 
		.A108x(R108x), 
		.A109x(R109x), 
		.A110x(R110x), 
		.A111x(R111x), 
		.A112x(R112x), 
		.A113x(R113x), 
		.A114x(R114x), 
		.A115x(R115x), 
		.A116x(R116x), 
		.A117x(R117x), 
		.A118x(R118x), 
		.A119x(R119x), 
		.A120x(R120x), 
		.A121x(R121x), 
		.A122x(R122x), 
		.A123x(R123x), 
		.A124x(R124x), 
		.A125x(R125x), 
		.A126x(R126x), 
		.A127x(R127x), 
		.A128x(R128x), 
		.A129x(R129x), 
		.A130x(R130x), 
		.A131x(R131x), 
		.A132x(R132x), 
		.A133x(R133x), 
		.A134x(R134x), 
		.A135x(R135x), 
		.A136x(R136x), 
		.A137x(R137x), 
		.A138x(R138x), 
		.A139x(R139x), 
		.A140x(R140x), 
		.A141x(R141x), 
		.A142x(R142x), 
		.A143x(R143x), 
		.A144x(R144x), 
		.A145x(R145x), 
		.A146x(R146x), 
		.A147x(R147x), 
		.A148x(R148x), 
		.A149x(R149x), 
		.A150x(R150x), 
		.A151x(R151x), 
		.A152x(R152x), 
		.A153x(R153x), 
		.A154x(R154x), 
		.A155x(R155x), 
		.A156x(R156x), 
		.A157x(R157x), 
		.A158x(R158x), 
		.A159x(R159x), 
		.A160x(R160x), 
		.A161x(R161x), 
		.A162x(R162x), 
		.A163x(R163x), 
		.A164x(R164x), 
		.A165x(R165x), 
		.A166x(R166x), 
		.A167x(R167x), 
		.A168x(R168x), 
		.A169x(R169x), 
		.A170x(R170x), 
		.A171x(R171x), 
		.A172x(R172x), 
		.A173x(R173x), 
		.A174x(R174x), 
		.A175x(R175x), 
		.A176x(R176x), 
		.A177x(R177x), 
		.A178x(R178x), 
		.A179x(R179x), 
		.A180x(R180x), 
		.A181x(R181x), 
		.A182x(R182x), 
		.A183x(R183x), 
		.A184x(R184x), 
		.A185x(R185x), 
		.A186x(R186x), 
		.clk(clk), 
		.reset(reset), 
		.N3x(N3x) 
	); 
	node_1_4 node_1_4( 
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
		.A75x(R75x), 
		.A76x(R76x), 
		.A77x(R77x), 
		.A78x(R78x), 
		.A79x(R79x), 
		.A80x(R80x), 
		.A81x(R81x), 
		.A82x(R82x), 
		.A83x(R83x), 
		.A84x(R84x), 
		.A85x(R85x), 
		.A86x(R86x), 
		.A87x(R87x), 
		.A88x(R88x), 
		.A89x(R89x), 
		.A90x(R90x), 
		.A91x(R91x), 
		.A92x(R92x), 
		.A93x(R93x), 
		.A94x(R94x), 
		.A95x(R95x), 
		.A96x(R96x), 
		.A97x(R97x), 
		.A98x(R98x), 
		.A99x(R99x), 
		.A100x(R100x), 
		.A101x(R101x), 
		.A102x(R102x), 
		.A103x(R103x), 
		.A104x(R104x), 
		.A105x(R105x), 
		.A106x(R106x), 
		.A107x(R107x), 
		.A108x(R108x), 
		.A109x(R109x), 
		.A110x(R110x), 
		.A111x(R111x), 
		.A112x(R112x), 
		.A113x(R113x), 
		.A114x(R114x), 
		.A115x(R115x), 
		.A116x(R116x), 
		.A117x(R117x), 
		.A118x(R118x), 
		.A119x(R119x), 
		.A120x(R120x), 
		.A121x(R121x), 
		.A122x(R122x), 
		.A123x(R123x), 
		.A124x(R124x), 
		.A125x(R125x), 
		.A126x(R126x), 
		.A127x(R127x), 
		.A128x(R128x), 
		.A129x(R129x), 
		.A130x(R130x), 
		.A131x(R131x), 
		.A132x(R132x), 
		.A133x(R133x), 
		.A134x(R134x), 
		.A135x(R135x), 
		.A136x(R136x), 
		.A137x(R137x), 
		.A138x(R138x), 
		.A139x(R139x), 
		.A140x(R140x), 
		.A141x(R141x), 
		.A142x(R142x), 
		.A143x(R143x), 
		.A144x(R144x), 
		.A145x(R145x), 
		.A146x(R146x), 
		.A147x(R147x), 
		.A148x(R148x), 
		.A149x(R149x), 
		.A150x(R150x), 
		.A151x(R151x), 
		.A152x(R152x), 
		.A153x(R153x), 
		.A154x(R154x), 
		.A155x(R155x), 
		.A156x(R156x), 
		.A157x(R157x), 
		.A158x(R158x), 
		.A159x(R159x), 
		.A160x(R160x), 
		.A161x(R161x), 
		.A162x(R162x), 
		.A163x(R163x), 
		.A164x(R164x), 
		.A165x(R165x), 
		.A166x(R166x), 
		.A167x(R167x), 
		.A168x(R168x), 
		.A169x(R169x), 
		.A170x(R170x), 
		.A171x(R171x), 
		.A172x(R172x), 
		.A173x(R173x), 
		.A174x(R174x), 
		.A175x(R175x), 
		.A176x(R176x), 
		.A177x(R177x), 
		.A178x(R178x), 
		.A179x(R179x), 
		.A180x(R180x), 
		.A181x(R181x), 
		.A182x(R182x), 
		.A183x(R183x), 
		.A184x(R184x), 
		.A185x(R185x), 
		.A186x(R186x), 
		.clk(clk), 
		.reset(reset), 
		.N4x(N4x) 
	); 
	node_1_5 node_1_5( 
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
		.A75x(R75x), 
		.A76x(R76x), 
		.A77x(R77x), 
		.A78x(R78x), 
		.A79x(R79x), 
		.A80x(R80x), 
		.A81x(R81x), 
		.A82x(R82x), 
		.A83x(R83x), 
		.A84x(R84x), 
		.A85x(R85x), 
		.A86x(R86x), 
		.A87x(R87x), 
		.A88x(R88x), 
		.A89x(R89x), 
		.A90x(R90x), 
		.A91x(R91x), 
		.A92x(R92x), 
		.A93x(R93x), 
		.A94x(R94x), 
		.A95x(R95x), 
		.A96x(R96x), 
		.A97x(R97x), 
		.A98x(R98x), 
		.A99x(R99x), 
		.A100x(R100x), 
		.A101x(R101x), 
		.A102x(R102x), 
		.A103x(R103x), 
		.A104x(R104x), 
		.A105x(R105x), 
		.A106x(R106x), 
		.A107x(R107x), 
		.A108x(R108x), 
		.A109x(R109x), 
		.A110x(R110x), 
		.A111x(R111x), 
		.A112x(R112x), 
		.A113x(R113x), 
		.A114x(R114x), 
		.A115x(R115x), 
		.A116x(R116x), 
		.A117x(R117x), 
		.A118x(R118x), 
		.A119x(R119x), 
		.A120x(R120x), 
		.A121x(R121x), 
		.A122x(R122x), 
		.A123x(R123x), 
		.A124x(R124x), 
		.A125x(R125x), 
		.A126x(R126x), 
		.A127x(R127x), 
		.A128x(R128x), 
		.A129x(R129x), 
		.A130x(R130x), 
		.A131x(R131x), 
		.A132x(R132x), 
		.A133x(R133x), 
		.A134x(R134x), 
		.A135x(R135x), 
		.A136x(R136x), 
		.A137x(R137x), 
		.A138x(R138x), 
		.A139x(R139x), 
		.A140x(R140x), 
		.A141x(R141x), 
		.A142x(R142x), 
		.A143x(R143x), 
		.A144x(R144x), 
		.A145x(R145x), 
		.A146x(R146x), 
		.A147x(R147x), 
		.A148x(R148x), 
		.A149x(R149x), 
		.A150x(R150x), 
		.A151x(R151x), 
		.A152x(R152x), 
		.A153x(R153x), 
		.A154x(R154x), 
		.A155x(R155x), 
		.A156x(R156x), 
		.A157x(R157x), 
		.A158x(R158x), 
		.A159x(R159x), 
		.A160x(R160x), 
		.A161x(R161x), 
		.A162x(R162x), 
		.A163x(R163x), 
		.A164x(R164x), 
		.A165x(R165x), 
		.A166x(R166x), 
		.A167x(R167x), 
		.A168x(R168x), 
		.A169x(R169x), 
		.A170x(R170x), 
		.A171x(R171x), 
		.A172x(R172x), 
		.A173x(R173x), 
		.A174x(R174x), 
		.A175x(R175x), 
		.A176x(R176x), 
		.A177x(R177x), 
		.A178x(R178x), 
		.A179x(R179x), 
		.A180x(R180x), 
		.A181x(R181x), 
		.A182x(R182x), 
		.A183x(R183x), 
		.A184x(R184x), 
		.A185x(R185x), 
		.A186x(R186x), 
		.clk(clk), 
		.reset(reset), 
		.N5x(N5x) 
	); 
endmodule
