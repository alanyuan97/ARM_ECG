module rom_input(EN,I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x,I75x,I76x,I77x,I78x,I79x,I80x,I81x,I82x,I83x,I84x,I85x,I86x,I87x,I88x,I89x,I90x,I91x,I92x,I93x,I94x,I95x,I96x,I97x,I98x,I99x,I100x,I101x,I102x,I103x,I104x,I105x,I106x,I107x,I108x,I109x,I110x,I111x,I112x,I113x,I114x,I115x,I116x,I117x,I118x,I119x,I120x,I121x,I122x,I123x,I124x,I125x,I126x,I127x,I128x,I129x,I130x,I131x,I132x,I133x,I134x,I135x,I136x,I137x,I138x,I139x,I140x,I141x,I142x,I143x,I144x,I145x,I146x,I147x,I148x,I149x,I150x,I151x,I152x,I153x,I154x,I155x,I156x,I157x,I158x,I159x,I160x,I161x,I162x,I163x,I164x,I165x,I166x,I167x,I168x,I169x,I170x,I171x,I172x,I173x,I174x,I175x,I176x,I177x,I178x,I179x,I180x,I181x,I182x,I183x,I184x,I185x,I186x);
	input EN;
	output [7:0]I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x,I75x,I76x,I77x,I78x,I79x,I80x,I81x,I82x,I83x,I84x,I85x,I86x,I87x,I88x,I89x,I90x,I91x,I92x,I93x,I94x,I95x,I96x,I97x,I98x,I99x,I100x,I101x,I102x,I103x,I104x,I105x,I106x,I107x,I108x,I109x,I110x,I111x,I112x,I113x,I114x,I115x,I116x,I117x,I118x,I119x,I120x,I121x,I122x,I123x,I124x,I125x,I126x,I127x,I128x,I129x,I130x,I131x,I132x,I133x,I134x,I135x,I136x,I137x,I138x,I139x,I140x,I141x,I142x,I143x,I144x,I145x,I146x,I147x,I148x,I149x,I150x,I151x,I152x,I153x,I154x,I155x,I156x,I157x,I158x,I159x,I160x,I161x,I162x,I163x,I164x,I165x,I166x,I167x,I168x,I169x,I170x,I171x,I172x,I173x,I174x,I175x,I176x,I177x,I178x,I179x,I180x,I181x,I182x,I183x,I184x,I185x,I186x;
	reg [7:0]I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x,I75x,I76x,I77x,I78x,I79x,I80x,I81x,I82x,I83x,I84x,I85x,I86x,I87x,I88x,I89x,I90x,I91x,I92x,I93x,I94x,I95x,I96x,I97x,I98x,I99x,I100x,I101x,I102x,I103x,I104x,I105x,I106x,I107x,I108x,I109x,I110x,I111x,I112x,I113x,I114x,I115x,I116x,I117x,I118x,I119x,I120x,I121x,I122x,I123x,I124x,I125x,I126x,I127x,I128x,I129x,I130x,I131x,I132x,I133x,I134x,I135x,I136x,I137x,I138x,I139x,I140x,I141x,I142x,I143x,I144x,I145x,I146x,I147x,I148x,I149x,I150x,I151x,I152x,I153x,I154x,I155x,I156x,I157x,I158x,I159x,I160x,I161x,I162x,I163x,I164x,I165x,I166x,I167x,I168x,I169x,I170x,I171x,I172x,I173x,I174x,I175x,I176x,I177x,I178x,I179x,I180x,I181x,I182x,I183x,I184x,I185x,I186x;
always@(EN)
	begin
	I0x = 16'sb1000000100101010;
	I1x = 16'sb1000000111110001;
	I2x = 16'sb1000001001000111;
	I3x = 16'sb1000000110000001;
	I4x = 16'sb0000001010001100;
	I5x = 16'sb0000001101010110;
	I6x = 16'sb1000000000110010;
	I7x = 16'sb0000001011100100;
	I8x = 16'sb1000001000011111;
	I9x = 16'sb0000001111010111;
	I10x = 16'sb0000000001101000;
	I11x = 16'sb0000000010101101;
	I12x = 16'sb0000000110111011;
	I13x = 16'sb1000001100000000;
	I14x = 16'sb1000000110000110;
	I15x = 16'sb1000001001111111;
	I16x = 16'sb1000000101101100;
	I17x = 16'sb1000000101000100;
	I18x = 16'sb0000000011101111;
	I19x = 16'sb1000000100011000;
	I20x = 16'sb1000000010011011;
	I21x = 16'sb0000000001011011;
	I22x = 16'sb0000001111001100;
	I23x = 16'sb0000000001100101;
	I24x = 16'sb1000000010100000;
	I25x = 16'sb0000001111010001;
	I26x = 16'sb0000001110100110;
	I27x = 16'sb0000001001010001;
	I28x = 16'sb1000001010110100;
	I29x = 16'sb0000000111000111;
	I30x = 16'sb0000001011011001;
	I31x = 16'sb1000000101100010;
	I32x = 16'sb0000000010010010;
	I33x = 16'sb0000001110010100;
	I34x = 16'sb0000001000101100;
	I35x = 16'sb0000001101110111;
	I36x = 16'sb1000000110010100;
	I37x = 16'sb0000000000110011;
	I38x = 16'sb0000001000101100;
	I39x = 16'sb0000000100011110;
	I40x = 16'sb1000001000011001;
	I41x = 16'sb1000000110100110;
	I42x = 16'sb0000000111000101;
	I43x = 16'sb0000000111101000;
	I44x = 16'sb1000001001010111;
	I45x = 16'sb0000000000000001;
	I46x = 16'sb0000001111100111;
	I47x = 16'sb1000000011100000;
	I48x = 16'sb1000001110011111;
	I49x = 16'sb1000001010111101;
	I50x = 16'sb0000001101010001;
	I51x = 16'sb1000000011011111;
	I52x = 16'sb0000001110010010;
	I53x = 16'sb1000001001000011;
	I54x = 16'sb1000001111110011;
	I55x = 16'sb1000000100110110;
	I56x = 16'sb1000000010100010;
	I57x = 16'sb0000000000001110;
	I58x = 16'sb1000000100010011;
	I59x = 16'sb1000001101101100;
	I60x = 16'sb1000001000110001;
	I61x = 16'sb1000000101111111;
	I62x = 16'sb1000000010100001;
	I63x = 16'sb1000000111011000;
	I64x = 16'sb1000000000000010;
	I65x = 16'sb1000000010111000;
	I66x = 16'sb1000001100101101;
	I67x = 16'sb0000000100000101;
	I68x = 16'sb0000001000011110;
	I69x = 16'sb0000001001011011;
	I70x = 16'sb0000000001101010;
	I71x = 16'sb0000001001011100;
	I72x = 16'sb0000000110110101;
	I73x = 16'sb0000000110001011;
	I74x = 16'sb0000001110011100;
	I75x = 16'sb1000000011100111;
	I76x = 16'sb1000001010011100;
	I77x = 16'sb0000001100110110;
	I78x = 16'sb0000000101101101;
	I79x = 16'sb1000000100010110;
	I80x = 16'sb0000001000000001;
	I81x = 16'sb1000001000101000;
	I82x = 16'sb1000001010110110;
	I83x = 16'sb0000001101000011;
	I84x = 16'sb1000001011010101;
	I85x = 16'sb1000000010111010;
	I86x = 16'sb0000000101111100;
	I87x = 16'sb1000000101101101;
	I88x = 16'sb0000001101001000;
	I89x = 16'sb0000001101000100;
	I90x = 16'sb1000000110110010;
	I91x = 16'sb1000001111110101;
	I92x = 16'sb0000000110000111;
	I93x = 16'sb1000001110000010;
	I94x = 16'sb1000001111000101;
	I95x = 16'sb0000000100101001;
	I96x = 16'sb1000000110110110;
	I97x = 16'sb1000001001000101;
	I98x = 16'sb1000001000011101;
	I99x = 16'sb1000000101010100;
	I100x = 16'sb1000000110100100;
	I101x = 16'sb0000000011000101;
	I102x = 16'sb0000000111010000;
	I103x = 16'sb0000001000000011;
	I104x = 16'sb0000000001111000;
	I105x = 16'sb0000000100011111;
	I106x = 16'sb1000000001011001;
	I107x = 16'sb1000000111101001;
	I108x = 16'sb0000001100100110;
	I109x = 16'sb1000000000110010;
	I110x = 16'sb1000001110000001;
	I111x = 16'sb1000000010101001;
	I112x = 16'sb1000000101001100;
	I113x = 16'sb0000001100110101;
	I114x = 16'sb0000000111001110;
	I115x = 16'sb1000001110011010;
	I116x = 16'sb1000000101100110;
	I117x = 16'sb1000001001001010;
	I118x = 16'sb1000001011011010;
	I119x = 16'sb1000001000100010;
	I120x = 16'sb1000000100010011;
	I121x = 16'sb0000001000101011;
	I122x = 16'sb0000000011000000;
	I123x = 16'sb1000001101110010;
	I124x = 16'sb0000000010101100;
	I125x = 16'sb0000001010011011;
	I126x = 16'sb0000001011000100;
	I127x = 16'sb0000000011101101;
	I128x = 16'sb1000000111001100;
	I129x = 16'sb1000000100001000;
	I130x = 16'sb0000001101101111;
	I131x = 16'sb1000001110100000;
	I132x = 16'sb1000001001110111;
	I133x = 16'sb1000000000101000;
	I134x = 16'sb1000001111100101;
	I135x = 16'sb1000001111011001;
	I136x = 16'sb0000000101010001;
	I137x = 16'sb0000001010100101;
	I138x = 16'sb1000000100100001;
	I139x = 16'sb1000001001001001;
	I140x = 16'sb1000001111100110;
	I141x = 16'sb0000001001101000;
	I142x = 16'sb0000001010010001;
	I143x = 16'sb1000001101010100;
	I144x = 16'sb1000001011100110;
	I145x = 16'sb0000000000010011;
	I146x = 16'sb1000001001111100;
	I147x = 16'sb0000000001001010;
	I148x = 16'sb1000001000011110;
	I149x = 16'sb1000001011100110;
	I150x = 16'sb1000000011100101;
	I151x = 16'sb1000000010001011;
	I152x = 16'sb1000001000101000;
	I153x = 16'sb1000000011110000;
	I154x = 16'sb0000000010010001;
	I155x = 16'sb1000001100010111;
	I156x = 16'sb0000001010110110;
	I157x = 16'sb0000001110100111;
	I158x = 16'sb0000000101101011;
	I159x = 16'sb1000001010010111;
	I160x = 16'sb0000000010001000;
	I161x = 16'sb0000000110010101;
	I162x = 16'sb0000001111101111;
	I163x = 16'sb1000001100011011;
	I164x = 16'sb1000001011100101;
	I165x = 16'sb1000000010011010;
	I166x = 16'sb0000001000000111;
	I167x = 16'sb0000000101110011;
	I168x = 16'sb1000001100010100;
	I169x = 16'sb0000000010001111;
	I170x = 16'sb1000000101000100;
	I171x = 16'sb1000001001001111;
	I172x = 16'sb0000000000001111;
	I173x = 16'sb1000000110010011;
	I174x = 16'sb0000001011000001;
	I175x = 16'sb1000000111101000;
	I176x = 16'sb0000001110011011;
	I177x = 16'sb0000000110000010;
	I178x = 16'sb1000001000000001;
	I179x = 16'sb1000000011111001;
	I180x = 16'sb1000000110011111;
	I181x = 16'sb0000001000011101;
	I182x = 16'sb0000001111101001;
	I183x = 16'sb1000000100101001;
	I184x = 16'sb0000001000100101;
	I185x = 16'sb1000000001100100;
	I186x = 16'sb0000000011111100;
	end
endmodule
[0.54385314 0.43718396 0.09465265 0.29067332 0.31473565] ["16'sb0000001000101100", "16'sb0000000110111111", "16'sb0000000001100000", "16'sb0000000100101001", "16'sb0000000101000010"]
