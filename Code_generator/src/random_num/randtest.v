module rom_input(EN,I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x,I75x,I76x,I77x,I78x,I79x,I80x,I81x,I82x,I83x,I84x,I85x,I86x,I87x,I88x,I89x,I90x,I91x,I92x,I93x,I94x,I95x,I96x,I97x,I98x,I99x,I100x,I101x,I102x,I103x,I104x,I105x,I106x,I107x,I108x,I109x,I110x,I111x,I112x,I113x,I114x,I115x,I116x,I117x,I118x,I119x,I120x,I121x,I122x,I123x,I124x,I125x,I126x,I127x,I128x,I129x,I130x,I131x,I132x,I133x,I134x,I135x,I136x,I137x,I138x,I139x,I140x,I141x,I142x,I143x,I144x,I145x,I146x,I147x,I148x,I149x,I150x,I151x,I152x,I153x,I154x,I155x,I156x,I157x,I158x,I159x,I160x,I161x,I162x,I163x,I164x,I165x,I166x,I167x,I168x,I169x,I170x,I171x,I172x,I173x,I174x,I175x,I176x,I177x,I178x,I179x,I180x,I181x,I182x,I183x,I184x,I185x,I186x);
	input EN;
	output [15:0]I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x,I75x,I76x,I77x,I78x,I79x,I80x,I81x,I82x,I83x,I84x,I85x,I86x,I87x,I88x,I89x,I90x,I91x,I92x,I93x,I94x,I95x,I96x,I97x,I98x,I99x,I100x,I101x,I102x,I103x,I104x,I105x,I106x,I107x,I108x,I109x,I110x,I111x,I112x,I113x,I114x,I115x,I116x,I117x,I118x,I119x,I120x,I121x,I122x,I123x,I124x,I125x,I126x,I127x,I128x,I129x,I130x,I131x,I132x,I133x,I134x,I135x,I136x,I137x,I138x,I139x,I140x,I141x,I142x,I143x,I144x,I145x,I146x,I147x,I148x,I149x,I150x,I151x,I152x,I153x,I154x,I155x,I156x,I157x,I158x,I159x,I160x,I161x,I162x,I163x,I164x,I165x,I166x,I167x,I168x,I169x,I170x,I171x,I172x,I173x,I174x,I175x,I176x,I177x,I178x,I179x,I180x,I181x,I182x,I183x,I184x,I185x,I186x;
	reg [15:0]I0x,I1x,I2x,I3x,I4x,I5x,I6x,I7x,I8x,I9x,I10x,I11x,I12x,I13x,I14x,I15x,I16x,I17x,I18x,I19x,I20x,I21x,I22x,I23x,I24x,I25x,I26x,I27x,I28x,I29x,I30x,I31x,I32x,I33x,I34x,I35x,I36x,I37x,I38x,I39x,I40x,I41x,I42x,I43x,I44x,I45x,I46x,I47x,I48x,I49x,I50x,I51x,I52x,I53x,I54x,I55x,I56x,I57x,I58x,I59x,I60x,I61x,I62x,I63x,I64x,I65x,I66x,I67x,I68x,I69x,I70x,I71x,I72x,I73x,I74x,I75x,I76x,I77x,I78x,I79x,I80x,I81x,I82x,I83x,I84x,I85x,I86x,I87x,I88x,I89x,I90x,I91x,I92x,I93x,I94x,I95x,I96x,I97x,I98x,I99x,I100x,I101x,I102x,I103x,I104x,I105x,I106x,I107x,I108x,I109x,I110x,I111x,I112x,I113x,I114x,I115x,I116x,I117x,I118x,I119x,I120x,I121x,I122x,I123x,I124x,I125x,I126x,I127x,I128x,I129x,I130x,I131x,I132x,I133x,I134x,I135x,I136x,I137x,I138x,I139x,I140x,I141x,I142x,I143x,I144x,I145x,I146x,I147x,I148x,I149x,I150x,I151x,I152x,I153x,I154x,I155x,I156x,I157x,I158x,I159x,I160x,I161x,I162x,I163x,I164x,I165x,I166x,I167x,I168x,I169x,I170x,I171x,I172x,I173x,I174x,I175x,I176x,I177x,I178x,I179x,I180x,I181x,I182x,I183x,I184x,I185x,I186x;
always@(EN)
	begin
	I0x = -3284;
	I1x = 5316;
	I2x = -3914;
	I3x = -6960;
	I4x = 5787;
	I5x = 4131;
	I6x = 7760;
	I7x = 4484;
	I8x = 3998;
	I9x = -4001;
	I10x = 4790;
	I11x = -2409;
	I12x = -4356;
	I13x = 5560;
	I14x = 409;
	I15x = 4108;
	I16x = -5548;
	I17x = 2096;
	I18x = -7430;
	I19x = 2992;
	I20x = 4554;
	I21x = 3650;
	I22x = 8173;
	I23x = -8153;
	I24x = -3759;
	I25x = 5474;
	I26x = -3379;
	I27x = 3135;
	I28x = 887;
	I29x = -532;
	I30x = -7568;
	I31x = -7960;
	I32x = -7804;
	I33x = 3712;
	I34x = 5291;
	I35x = 4058;
	I36x = 930;
	I37x = 4549;
	I38x = -4715;
	I39x = 4666;
	I40x = 1744;
	I41x = 7481;
	I42x = -256;
	I43x = 7117;
	I44x = -3997;
	I45x = 1315;
	I46x = 1090;
	I47x = 1486;
	I48x = -1360;
	I49x = 2335;
	I50x = -4314;
	I51x = -2890;
	I52x = 1043;
	I53x = 8089;
	I54x = -1012;
	I55x = 3872;
	I56x = -2480;
	I57x = 2451;
	I58x = -5051;
	I59x = 4057;
	I60x = 7367;
	I61x = 3720;
	I62x = -6736;
	I63x = -1470;
	I64x = 327;
	I65x = -2999;
	I66x = 4219;
	I67x = 6385;
	I68x = -68;
	I69x = 266;
	I70x = -226;
	I71x = -4119;
	I72x = -2780;
	I73x = -5308;
	I74x = 5947;
	I75x = -2559;
	I76x = 7238;
	I77x = 205;
	I78x = -2721;
	I79x = -7143;
	I80x = -2975;
	I81x = 7179;
	I82x = -910;
	I83x = -4969;
	I84x = 5491;
	I85x = 6632;
	I86x = -2400;
	I87x = -2146;
	I88x = 1788;
	I89x = 7958;
	I90x = 3799;
	I91x = -2633;
	I92x = 6731;
	I93x = -5306;
	I94x = -1574;
	I95x = 4281;
	I96x = 8049;
	I97x = 4287;
	I98x = -2792;
	I99x = -2660;
	I100x = 5254;
	I101x = -2475;
	I102x = -8012;
	I103x = -2164;
	I104x = 311;
	I105x = 7297;
	I106x = 1820;
	I107x = 5278;
	I108x = -6663;
	I109x = 7580;
	I110x = 4213;
	I111x = 1614;
	I112x = -4106;
	I113x = 1765;
	I114x = 5074;
	I115x = -7404;
	I116x = 2684;
	I117x = -4556;
	I118x = -3234;
	I119x = -2508;
	I120x = -3292;
	I121x = -6140;
	I122x = 718;
	I123x = 6189;
	I124x = -6194;
	I125x = -2202;
	I126x = -8143;
	I127x = -6292;
	I128x = -886;
	I129x = 3266;
	I130x = -3634;
	I131x = 1123;
	I132x = -1468;
	I133x = -1875;
	I134x = -3406;
	I135x = 986;
	I136x = -3337;
	I137x = 549;
	I138x = 5401;
	I139x = 4519;
	I140x = -4871;
	I141x = 142;
	I142x = 5338;
	I143x = -760;
	I144x = 909;
	I145x = -6956;
	I146x = -3152;
	I147x = -7326;
	I148x = -4988;
	I149x = 1962;
	I150x = -2394;
	I151x = -7606;
	I152x = -772;
	I153x = 2913;
	I154x = -7460;
	I155x = -5786;
	I156x = 6205;
	I157x = 1436;
	I158x = 4330;
	I159x = 7309;
	I160x = -720;
	I161x = 535;
	I162x = -1554;
	I163x = 4227;
	I164x = 8183;
	I165x = -1633;
	I166x = 1369;
	I167x = -932;
	I168x = -4721;
	I169x = 198;
	I170x = -6039;
	I171x = -6441;
	I172x = 3268;
	I173x = 1150;
	I174x = -7923;
	I175x = 3802;
	I176x = 3233;
	I177x = 3780;
	I178x = -569;
	I179x = -6369;
	I180x = -2643;
	I181x = -1586;
	I182x = -8020;
	I183x = -255;
	I184x = -7060;
	I185x = -372;
	I186x = -5419;
	end
endmodule
[0.03912048 0.         0.         0.         0.37096719] 

 [320, 0, 0, 0, 3038] 

 ['0000000101000000', '0000000000000000', '0000000000000000', '0000000000000000', '0000101111011110']
