module rom_input(EN,I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x,I75x,I76x,I77x,I78x,I79x,I80x,I81x,I82x,I83x,I84x,I85x,I86x,I87x,I88x,I89x,I90x,I91x,I92x,I93x,I94x,I95x,I96x,I97x,I98x,I99x,I100x,I101x,I102x,I103x,I104x,I105x,I106x,I107x,I108x,I109x,I110x,I111x,I112x,I113x,I114x,I115x,I116x,I117x,I118x,I119x,I120x,I121x,I122x,I123x,I124x,I125x,I126x,I127x,I128x,I129x,I130x,I131x,I132x,I133x,I134x,I135x,I136x,I137x,I138x,I139x,I140x,I141x,I142x,I143x,I144x,I145x,I146x,I147x,I148x,I149x,I150x,I151x,I152x,I153x,I154x,I155x,I156x,I157x,I158x,I159x,I160x,I161x,I162x,I163x,I164x,I165x,I166x,I167x,I168x,I169x,I170x,I171x,I172x,I173x,I174x,I175x,I176x,I177x,I178x,I179x,I180x,I181x,I182x,I183x,I184x,I185x,I186x);
	input EN;
	output [15:0]I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x,I75x,I76x,I77x,I78x,I79x,I80x,I81x,I82x,I83x,I84x,I85x,I86x,I87x,I88x,I89x,I90x,I91x,I92x,I93x,I94x,I95x,I96x,I97x,I98x,I99x,I100x,I101x,I102x,I103x,I104x,I105x,I106x,I107x,I108x,I109x,I110x,I111x,I112x,I113x,I114x,I115x,I116x,I117x,I118x,I119x,I120x,I121x,I122x,I123x,I124x,I125x,I126x,I127x,I128x,I129x,I130x,I131x,I132x,I133x,I134x,I135x,I136x,I137x,I138x,I139x,I140x,I141x,I142x,I143x,I144x,I145x,I146x,I147x,I148x,I149x,I150x,I151x,I152x,I153x,I154x,I155x,I156x,I157x,I158x,I159x,I160x,I161x,I162x,I163x,I164x,I165x,I166x,I167x,I168x,I169x,I170x,I171x,I172x,I173x,I174x,I175x,I176x,I177x,I178x,I179x,I180x,I181x,I182x,I183x,I184x,I185x,I186x;
	reg [15:0]I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x,I75x,I76x,I77x,I78x,I79x,I80x,I81x,I82x,I83x,I84x,I85x,I86x,I87x,I88x,I89x,I90x,I91x,I92x,I93x,I94x,I95x,I96x,I97x,I98x,I99x,I100x,I101x,I102x,I103x,I104x,I105x,I106x,I107x,I108x,I109x,I110x,I111x,I112x,I113x,I114x,I115x,I116x,I117x,I118x,I119x,I120x,I121x,I122x,I123x,I124x,I125x,I126x,I127x,I128x,I129x,I130x,I131x,I132x,I133x,I134x,I135x,I136x,I137x,I138x,I139x,I140x,I141x,I142x,I143x,I144x,I145x,I146x,I147x,I148x,I149x,I150x,I151x,I152x,I153x,I154x,I155x,I156x,I157x,I158x,I159x,I160x,I161x,I162x,I163x,I164x,I165x,I166x,I167x,I168x,I169x,I170x,I171x,I172x,I173x,I174x,I175x,I176x,I177x,I178x,I179x,I180x,I181x,I182x,I183x,I184x,I185x,I186x;
always@(EN)
	begin
	I0x = -2826;
	I1x = -5831;
	I2x = 2551;
	I3x = 4055;
	I4x = -6911;
	I5x = 1658;
	I6x = 4566;
	I7x = -2967;
	I8x = 5638;
	I9x = 3715;
	I10x = 5940;
	I11x = -6614;
	I12x = 6115;
	I13x = 4566;
	I14x = 4002;
	I15x = -7436;
	I16x = 6659;
	I17x = -5;
	I18x = 1047;
	I19x = -6693;
	I20x = -3058;
	I21x = 6041;
	I22x = 7619;
	I23x = 6809;
	I24x = 5987;
	I25x = 5471;
	I26x = 989;
	I27x = -5966;
	I28x = -4645;
	I29x = -6908;
	I30x = -3899;
	I31x = 2853;
	I32x = 5859;
	I33x = -6123;
	I34x = -1739;
	I35x = -6600;
	I36x = -5688;
	I37x = 8176;
	I38x = 7780;
	I39x = -6513;
	I40x = -726;
	I41x = 6020;
	I42x = 706;
	I43x = 3695;
	I44x = 7037;
	I45x = -4695;
	I46x = 1774;
	I47x = -4555;
	I48x = 3939;
	I49x = -5480;
	I50x = 4819;
	I51x = -4629;
	I52x = 4131;
	I53x = -5777;
	I54x = 6498;
	I55x = 139;
	I56x = -5500;
	I57x = 4808;
	I58x = 2489;
	I59x = 1454;
	I60x = -5651;
	I61x = -6455;
	I62x = -5181;
	I63x = -4463;
	I64x = 4734;
	I65x = -5807;
	I66x = -1024;
	I67x = -7756;
	I68x = -1190;
	I69x = -6867;
	I70x = -3867;
	I71x = -146;
	I72x = 918;
	I73x = -890;
	I74x = -4653;
	I75x = 1628;
	I76x = 4073;
	I77x = 7499;
	I78x = 7234;
	I79x = 5050;
	I80x = -1867;
	I81x = 322;
	I82x = 4226;
	I83x = -5596;
	I84x = -4616;
	I85x = -6105;
	I86x = -7679;
	I87x = 3986;
	I88x = 1619;
	I89x = -2268;
	I90x = -6002;
	I91x = 2491;
	I92x = 1338;
	I93x = -1042;
	I94x = 2581;
	I95x = 1252;
	I96x = 3783;
	I97x = 1516;
	I98x = -8064;
	I99x = 7423;
	I100x = -5337;
	I101x = 4724;
	I102x = 5174;
	I103x = -4437;
	I104x = -4078;
	I105x = 1459;
	I106x = 4678;
	I107x = -4671;
	I108x = -5530;
	I109x = -2169;
	I110x = -6486;
	I111x = 5361;
	I112x = -1554;
	I113x = -7960;
	I114x = -4058;
	I115x = 4889;
	I116x = 2106;
	I117x = -100;
	I118x = -5737;
	I119x = 1397;
	I120x = 2165;
	I121x = 5197;
	I122x = -8009;
	I123x = 943;
	I124x = 2658;
	I125x = -534;
	I126x = -5712;
	I127x = 2389;
	I128x = -6524;
	I129x = 2412;
	I130x = 2617;
	I131x = 2066;
	I132x = -2056;
	I133x = 1502;
	I134x = 2555;
	I135x = 5376;
	I136x = 1717;
	I137x = -2623;
	I138x = 7121;
	I139x = -3763;
	I140x = 4060;
	I141x = -6120;
	I142x = -4416;
	I143x = 5128;
	I144x = 6139;
	I145x = -1330;
	I146x = 7735;
	I147x = -3598;
	I148x = 3597;
	I149x = -2906;
	I150x = -691;
	I151x = 5764;
	I152x = -1350;
	I153x = -7510;
	I154x = -336;
	I155x = -5713;
	I156x = 1084;
	I157x = 7396;
	I158x = 255;
	I159x = 6191;
	I160x = -1064;
	I161x = -3201;
	I162x = -2286;
	I163x = -1483;
	I164x = 3310;
	I165x = 7039;
	I166x = -4169;
	I167x = -6366;
	I168x = 8176;
	I169x = 4510;
	I170x = -763;
	I171x = 92;
	I172x = -7831;
	I173x = 3327;
	I174x = -259;
	I175x = 6671;
	I176x = 4872;
	I177x = 5012;
	I178x = 4838;
	I179x = -5249;
	I180x = -6473;
	I181x = -3537;
	I182x = -373;
	I183x = 4059;
	I184x = 2233;
	I185x = 3871;
	I186x = 4074;
	end
endmodule
[0.         0.         0.88185565 1.02185417 0.21402667] 

 [0, 0, 7224, 8371, 1753] 

 ['0000000000000000', '0000000000000000', '0001110000111000', '0010000010110011', '0000011011011001']
