module node1_3(clk,reset,N3x,A0x,A1x,A2x,A3x,A4x,A5x,A6x,A7x,A8x,A9x,A10x,A11x,A12x,A13x,A14x,A15x,A16x,A17x,A18x,A19x,A20x,A21x,A22x,A23x,A24x,A25x,A26x,A27x,A28x,A29x,A30x,A31x,A32x,A33x,A34x,A35x,A36x,A37x,A38x,A39x,A40x,A41x,A42x,A43x,A44x,A45x,A46x,A47x,A48x,A49x,A50x,A51x,A52x,A53x,A54x,A55x,A56x,A57x,A58x,A59x,A60x,A61x,A62x,A63x,A64x,A65x,A66x,A67x,A68x,A69x,A70x,A71x,A72x,A73x,A74x,A75x,A76x,A77x,A78x,A79x,A80x,A81x,A82x,A83x,A84x,A85x,A86x,A87x,A88x,A89x,A90x,A91x,A92x,A93x,A94x,A95x,A96x,A97x,A98x,A99x,A100x,A101x,A102x,A103x,A104x,A105x,A106x,A107x,A108x,A109x,A110x,A111x,A112x,A113x,A114x,A115x,A116x,A117x,A118x,A119x,A120x,A121x,A122x,A123x,A124x,A125x,A126x,A127x,A128x,A129x,A130x,A131x,A132x,A133x,A134x,A135x,A136x,A137x,A138x,A139x,A140x,A141x,A142x,A143x,A144x,A145x,A146x,A147x,A148x,A149x,A150x,A151x,A152x,A153x,A154x,A155x,A156x,A157x,A158x,A159x,A160x,A161x,A162x,A163x,A164x,A165x,A166x,A167x,A168x,A169x,A170x,A171x,A172x,A173x,A174x,A175x,A176x,A177x,A178x,A179x,A180x,A181x,A182x,A183x,A184x,A185x,A186x);
	input clk;
	input reset;
	input [15:0] A0x;
	input [15:0] A1x;
	input [15:0] A2x;
	input [15:0] A3x;
	input [15:0] A4x;
	input [15:0] A5x;
	input [15:0] A6x;
	input [15:0] A7x;
	input [15:0] A8x;
	input [15:0] A9x;
	input [15:0] A10x;
	input [15:0] A11x;
	input [15:0] A12x;
	input [15:0] A13x;
	input [15:0] A14x;
	input [15:0] A15x;
	input [15:0] A16x;
	input [15:0] A17x;
	input [15:0] A18x;
	input [15:0] A19x;
	input [15:0] A20x;
	input [15:0] A21x;
	input [15:0] A22x;
	input [15:0] A23x;
	input [15:0] A24x;
	input [15:0] A25x;
	input [15:0] A26x;
	input [15:0] A27x;
	input [15:0] A28x;
	input [15:0] A29x;
	input [15:0] A30x;
	input [15:0] A31x;
	input [15:0] A32x;
	input [15:0] A33x;
	input [15:0] A34x;
	input [15:0] A35x;
	input [15:0] A36x;
	input [15:0] A37x;
	input [15:0] A38x;
	input [15:0] A39x;
	input [15:0] A40x;
	input [15:0] A41x;
	input [15:0] A42x;
	input [15:0] A43x;
	input [15:0] A44x;
	input [15:0] A45x;
	input [15:0] A46x;
	input [15:0] A47x;
	input [15:0] A48x;
	input [15:0] A49x;
	input [15:0] A50x;
	input [15:0] A51x;
	input [15:0] A52x;
	input [15:0] A53x;
	input [15:0] A54x;
	input [15:0] A55x;
	input [15:0] A56x;
	input [15:0] A57x;
	input [15:0] A58x;
	input [15:0] A59x;
	input [15:0] A60x;
	input [15:0] A61x;
	input [15:0] A62x;
	input [15:0] A63x;
	input [15:0] A64x;
	input [15:0] A65x;
	input [15:0] A66x;
	input [15:0] A67x;
	input [15:0] A68x;
	input [15:0] A69x;
	input [15:0] A70x;
	input [15:0] A71x;
	input [15:0] A72x;
	input [15:0] A73x;
	input [15:0] A74x;
	input [15:0] A75x;
	input [15:0] A76x;
	input [15:0] A77x;
	input [15:0] A78x;
	input [15:0] A79x;
	input [15:0] A80x;
	input [15:0] A81x;
	input [15:0] A82x;
	input [15:0] A83x;
	input [15:0] A84x;
	input [15:0] A85x;
	input [15:0] A86x;
	input [15:0] A87x;
	input [15:0] A88x;
	input [15:0] A89x;
	input [15:0] A90x;
	input [15:0] A91x;
	input [15:0] A92x;
	input [15:0] A93x;
	input [15:0] A94x;
	input [15:0] A95x;
	input [15:0] A96x;
	input [15:0] A97x;
	input [15:0] A98x;
	input [15:0] A99x;
	input [15:0] A100x;
	input [15:0] A101x;
	input [15:0] A102x;
	input [15:0] A103x;
	input [15:0] A104x;
	input [15:0] A105x;
	input [15:0] A106x;
	input [15:0] A107x;
	input [15:0] A108x;
	input [15:0] A109x;
	input [15:0] A110x;
	input [15:0] A111x;
	input [15:0] A112x;
	input [15:0] A113x;
	input [15:0] A114x;
	input [15:0] A115x;
	input [15:0] A116x;
	input [15:0] A117x;
	input [15:0] A118x;
	input [15:0] A119x;
	input [15:0] A120x;
	input [15:0] A121x;
	input [15:0] A122x;
	input [15:0] A123x;
	input [15:0] A124x;
	input [15:0] A125x;
	input [15:0] A126x;
	input [15:0] A127x;
	input [15:0] A128x;
	input [15:0] A129x;
	input [15:0] A130x;
	input [15:0] A131x;
	input [15:0] A132x;
	input [15:0] A133x;
	input [15:0] A134x;
	input [15:0] A135x;
	input [15:0] A136x;
	input [15:0] A137x;
	input [15:0] A138x;
	input [15:0] A139x;
	input [15:0] A140x;
	input [15:0] A141x;
	input [15:0] A142x;
	input [15:0] A143x;
	input [15:0] A144x;
	input [15:0] A145x;
	input [15:0] A146x;
	input [15:0] A147x;
	input [15:0] A148x;
	input [15:0] A149x;
	input [15:0] A150x;
	input [15:0] A151x;
	input [15:0] A152x;
	input [15:0] A153x;
	input [15:0] A154x;
	input [15:0] A155x;
	input [15:0] A156x;
	input [15:0] A157x;
	input [15:0] A158x;
	input [15:0] A159x;
	input [15:0] A160x;
	input [15:0] A161x;
	input [15:0] A162x;
	input [15:0] A163x;
	input [15:0] A164x;
	input [15:0] A165x;
	input [15:0] A166x;
	input [15:0] A167x;
	input [15:0] A168x;
	input [15:0] A169x;
	input [15:0] A170x;
	input [15:0] A171x;
	input [15:0] A172x;
	input [15:0] A173x;
	input [15:0] A174x;
	input [15:0] A175x;
	input [15:0] A176x;
	input [15:0] A177x;
	input [15:0] A178x;
	input [15:0] A179x;
	input [15:0] A180x;
	input [15:0] A181x;
	input [15:0] A182x;
	input [15:0] A183x;
	input [15:0] A184x;
	input [15:0] A185x;
	input [15:0] A186x;
	output reg [15:0] N3x;

	parameter [15:0] W0x=10;
	parameter [15:0] W1x=261;
	parameter [15:0] W2x=-263;
	parameter [15:0] W3x=-423;
	parameter [15:0] W4x=-465;
	parameter [15:0] W5x=-374;
	parameter [15:0] W6x=134;
	parameter [15:0] W7x=146;
	parameter [15:0] W8x=168;
	parameter [15:0] W9x=51;
	parameter [15:0] W10x=82;
	parameter [15:0] W11x=108;
	parameter [15:0] W12x=4;
	parameter [15:0] W13x=176;
	parameter [15:0] W14x=-88;
	parameter [15:0] W15x=9;
	parameter [15:0] W16x=-96;
	parameter [15:0] W17x=-57;
	parameter [15:0] W18x=-110;
	parameter [15:0] W19x=47;
	parameter [15:0] W20x=60;
	parameter [15:0] W21x=95;
	parameter [15:0] W22x=64;
	parameter [15:0] W23x=122;
	parameter [15:0] W24x=252;
	parameter [15:0] W25x=107;
	parameter [15:0] W26x=46;
	parameter [15:0] W27x=159;
	parameter [15:0] W28x=115;
	parameter [15:0] W29x=235;
	parameter [15:0] W30x=149;
	parameter [15:0] W31x=306;
	parameter [15:0] W32x=232;
	parameter [15:0] W33x=213;
	parameter [15:0] W34x=138;
	parameter [15:0] W35x=69;
	parameter [15:0] W36x=186;
	parameter [15:0] W37x=37;
	parameter [15:0] W38x=217;
	parameter [15:0] W39x=305;
	parameter [15:0] W40x=-44;
	parameter [15:0] W41x=246;
	parameter [15:0] W42x=-105;
	parameter [15:0] W43x=-18;
	parameter [15:0] W44x=192;
	parameter [15:0] W45x=-13;
	parameter [15:0] W46x=-80;
	parameter [15:0] W47x=93;
	parameter [15:0] W48x=-204;
	parameter [15:0] W49x=-237;
	parameter [15:0] W50x=-178;
	parameter [15:0] W51x=-156;
	parameter [15:0] W52x=-135;
	parameter [15:0] W53x=-307;
	parameter [15:0] W54x=2;
	parameter [15:0] W55x=-193;
	parameter [15:0] W56x=-202;
	parameter [15:0] W57x=-70;
	parameter [15:0] W58x=140;
	parameter [15:0] W59x=-40;
	parameter [15:0] W60x=-40;
	parameter [15:0] W61x=139;
	parameter [15:0] W62x=-132;
	parameter [15:0] W63x=223;
	parameter [15:0] W64x=37;
	parameter [15:0] W65x=207;
	parameter [15:0] W66x=80;
	parameter [15:0] W67x=164;
	parameter [15:0] W68x=168;
	parameter [15:0] W69x=65;
	parameter [15:0] W70x=-29;
	parameter [15:0] W71x=-167;
	parameter [15:0] W72x=76;
	parameter [15:0] W73x=18;
	parameter [15:0] W74x=45;
	parameter [15:0] W75x=191;
	parameter [15:0] W76x=108;
	parameter [15:0] W77x=156;
	parameter [15:0] W78x=-11;
	parameter [15:0] W79x=278;
	parameter [15:0] W80x=41;
	parameter [15:0] W81x=135;
	parameter [15:0] W82x=188;
	parameter [15:0] W83x=-35;
	parameter [15:0] W84x=138;
	parameter [15:0] W85x=-40;
	parameter [15:0] W86x=68;
	parameter [15:0] W87x=-79;
	parameter [15:0] W88x=26;
	parameter [15:0] W89x=-115;
	parameter [15:0] W90x=-45;
	parameter [15:0] W91x=41;
	parameter [15:0] W92x=-107;
	parameter [15:0] W93x=95;
	parameter [15:0] W94x=-60;
	parameter [15:0] W95x=-39;
	parameter [15:0] W96x=39;
	parameter [15:0] W97x=29;
	parameter [15:0] W98x=-128;
	parameter [15:0] W99x=-46;
	parameter [15:0] W100x=-15;
	parameter [15:0] W101x=-58;
	parameter [15:0] W102x=-60;
	parameter [15:0] W103x=-48;
	parameter [15:0] W104x=-17;
	parameter [15:0] W105x=-116;
	parameter [15:0] W106x=44;
	parameter [15:0] W107x=-118;
	parameter [15:0] W108x=-21;
	parameter [15:0] W109x=-65;
	parameter [15:0] W110x=-107;
	parameter [15:0] W111x=-126;
	parameter [15:0] W112x=158;
	parameter [15:0] W113x=-142;
	parameter [15:0] W114x=-147;
	parameter [15:0] W115x=-55;
	parameter [15:0] W116x=-141;
	parameter [15:0] W117x=-22;
	parameter [15:0] W118x=49;
	parameter [15:0] W119x=-79;
	parameter [15:0] W120x=32;
	parameter [15:0] W121x=27;
	parameter [15:0] W122x=-112;
	parameter [15:0] W123x=-36;
	parameter [15:0] W124x=-23;
	parameter [15:0] W125x=91;
	parameter [15:0] W126x=21;
	parameter [15:0] W127x=9;
	parameter [15:0] W128x=1;
	parameter [15:0] W129x=-46;
	parameter [15:0] W130x=-72;
	parameter [15:0] W131x=21;
	parameter [15:0] W132x=23;
	parameter [15:0] W133x=-109;
	parameter [15:0] W134x=22;
	parameter [15:0] W135x=15;
	parameter [15:0] W136x=114;
	parameter [15:0] W137x=-136;
	parameter [15:0] W138x=-55;
	parameter [15:0] W139x=110;
	parameter [15:0] W140x=193;
	parameter [15:0] W141x=-148;
	parameter [15:0] W142x=-215;
	parameter [15:0] W143x=1;
	parameter [15:0] W144x=-184;
	parameter [15:0] W145x=57;
	parameter [15:0] W146x=58;
	parameter [15:0] W147x=69;
	parameter [15:0] W148x=10;
	parameter [15:0] W149x=-100;
	parameter [15:0] W150x=-38;
	parameter [15:0] W151x=-245;
	parameter [15:0] W152x=-155;
	parameter [15:0] W153x=-325;
	parameter [15:0] W154x=-1;
	parameter [15:0] W155x=-253;
	parameter [15:0] W156x=-23;
	parameter [15:0] W157x=609;
	parameter [15:0] W158x=835;
	parameter [15:0] W159x=560;
	parameter [15:0] W160x=195;
	parameter [15:0] W161x=270;
	parameter [15:0] W162x=125;
	parameter [15:0] W163x=127;
	parameter [15:0] W164x=245;
	parameter [15:0] W165x=89;
	parameter [15:0] W166x=24;
	parameter [15:0] W167x=35;
	parameter [15:0] W168x=222;
	parameter [15:0] W169x=-146;
	parameter [15:0] W170x=-12;
	parameter [15:0] W171x=212;
	parameter [15:0] W172x=254;
	parameter [15:0] W173x=173;
	parameter [15:0] W174x=-10;
	parameter [15:0] W175x=20;
	parameter [15:0] W176x=-74;
	parameter [15:0] W177x=12;
	parameter [15:0] W178x=-22;
	parameter [15:0] W179x=-40;
	parameter [15:0] W180x=-92;
	parameter [15:0] W181x=171;
	parameter [15:0] W182x=-121;
	parameter [15:0] W183x=57;
	parameter [15:0] W184x=492;
	parameter [15:0] W185x=438;
	parameter [15:0] W186x=43;
	parameter [15:0] B0x=-14;
	wire [15:0] in0x;
	wire [15:0] in1x;
	wire [15:0] in2x;
	wire [15:0] in3x;
	wire [15:0] in4x;
	wire [15:0] in5x;
	wire [15:0] in6x;
	wire [15:0] in7x;
	wire [15:0] in8x;
	wire [15:0] in9x;
	wire [15:0] in10x;
	wire [15:0] in11x;
	wire [15:0] in12x;
	wire [15:0] in13x;
	wire [15:0] in14x;
	wire [15:0] in15x;
	wire [15:0] in16x;
	wire [15:0] in17x;
	wire [15:0] in18x;
	wire [15:0] in19x;
	wire [15:0] in20x;
	wire [15:0] in21x;
	wire [15:0] in22x;
	wire [15:0] in23x;
	wire [15:0] in24x;
	wire [15:0] in25x;
	wire [15:0] in26x;
	wire [15:0] in27x;
	wire [15:0] in28x;
	wire [15:0] in29x;
	wire [15:0] in30x;
	wire [15:0] in31x;
	wire [15:0] in32x;
	wire [15:0] in33x;
	wire [15:0] in34x;
	wire [15:0] in35x;
	wire [15:0] in36x;
	wire [15:0] in37x;
	wire [15:0] in38x;
	wire [15:0] in39x;
	wire [15:0] in40x;
	wire [15:0] in41x;
	wire [15:0] in42x;
	wire [15:0] in43x;
	wire [15:0] in44x;
	wire [15:0] in45x;
	wire [15:0] in46x;
	wire [15:0] in47x;
	wire [15:0] in48x;
	wire [15:0] in49x;
	wire [15:0] in50x;
	wire [15:0] in51x;
	wire [15:0] in52x;
	wire [15:0] in53x;
	wire [15:0] in54x;
	wire [15:0] in55x;
	wire [15:0] in56x;
	wire [15:0] in57x;
	wire [15:0] in58x;
	wire [15:0] in59x;
	wire [15:0] in60x;
	wire [15:0] in61x;
	wire [15:0] in62x;
	wire [15:0] in63x;
	wire [15:0] in64x;
	wire [15:0] in65x;
	wire [15:0] in66x;
	wire [15:0] in67x;
	wire [15:0] in68x;
	wire [15:0] in69x;
	wire [15:0] in70x;
	wire [15:0] in71x;
	wire [15:0] in72x;
	wire [15:0] in73x;
	wire [15:0] in74x;
	wire [15:0] in75x;
	wire [15:0] in76x;
	wire [15:0] in77x;
	wire [15:0] in78x;
	wire [15:0] in79x;
	wire [15:0] in80x;
	wire [15:0] in81x;
	wire [15:0] in82x;
	wire [15:0] in83x;
	wire [15:0] in84x;
	wire [15:0] in85x;
	wire [15:0] in86x;
	wire [15:0] in87x;
	wire [15:0] in88x;
	wire [15:0] in89x;
	wire [15:0] in90x;
	wire [15:0] in91x;
	wire [15:0] in92x;
	wire [15:0] in93x;
	wire [15:0] in94x;
	wire [15:0] in95x;
	wire [15:0] in96x;
	wire [15:0] in97x;
	wire [15:0] in98x;
	wire [15:0] in99x;
	wire [15:0] in100x;
	wire [15:0] in101x;
	wire [15:0] in102x;
	wire [15:0] in103x;
	wire [15:0] in104x;
	wire [15:0] in105x;
	wire [15:0] in106x;
	wire [15:0] in107x;
	wire [15:0] in108x;
	wire [15:0] in109x;
	wire [15:0] in110x;
	wire [15:0] in111x;
	wire [15:0] in112x;
	wire [15:0] in113x;
	wire [15:0] in114x;
	wire [15:0] in115x;
	wire [15:0] in116x;
	wire [15:0] in117x;
	wire [15:0] in118x;
	wire [15:0] in119x;
	wire [15:0] in120x;
	wire [15:0] in121x;
	wire [15:0] in122x;
	wire [15:0] in123x;
	wire [15:0] in124x;
	wire [15:0] in125x;
	wire [15:0] in126x;
	wire [15:0] in127x;
	wire [15:0] in128x;
	wire [15:0] in129x;
	wire [15:0] in130x;
	wire [15:0] in131x;
	wire [15:0] in132x;
	wire [15:0] in133x;
	wire [15:0] in134x;
	wire [15:0] in135x;
	wire [15:0] in136x;
	wire [15:0] in137x;
	wire [15:0] in138x;
	wire [15:0] in139x;
	wire [15:0] in140x;
	wire [15:0] in141x;
	wire [15:0] in142x;
	wire [15:0] in143x;
	wire [15:0] in144x;
	wire [15:0] in145x;
	wire [15:0] in146x;
	wire [15:0] in147x;
	wire [15:0] in148x;
	wire [15:0] in149x;
	wire [15:0] in150x;
	wire [15:0] in151x;
	wire [15:0] in152x;
	wire [15:0] in153x;
	wire [15:0] in154x;
	wire [15:0] in155x;
	wire [15:0] in156x;
	wire [15:0] in157x;
	wire [15:0] in158x;
	wire [15:0] in159x;
	wire [15:0] in160x;
	wire [15:0] in161x;
	wire [15:0] in162x;
	wire [15:0] in163x;
	wire [15:0] in164x;
	wire [15:0] in165x;
	wire [15:0] in166x;
	wire [15:0] in167x;
	wire [15:0] in168x;
	wire [15:0] in169x;
	wire [15:0] in170x;
	wire [15:0] in171x;
	wire [15:0] in172x;
	wire [15:0] in173x;
	wire [15:0] in174x;
	wire [15:0] in175x;
	wire [15:0] in176x;
	wire [15:0] in177x;
	wire [15:0] in178x;
	wire [15:0] in179x;
	wire [15:0] in180x;
	wire [15:0] in181x;
	wire [15:0] in182x;
	wire [15:0] in183x;
	wire [15:0] in184x;
	wire [15:0] in185x;
	wire [15:0] in186x;
	reg [15:0] sum0x;
	reg [15:0] sum1x;
	reg [15:0] sum2x;
	reg [15:0] sum3x;
	reg [15:0] sum4x;
	reg [15:0] sum5x;
	reg [15:0] sum6x;
	reg [15:0] sum7x;
	reg [15:0] sum8x;
	reg [15:0] sum9x;
	reg [15:0] sum10x;
	reg [15:0] sum11x;
	reg [15:0] sum12x;
	reg [15:0] sum13x;
	reg [15:0] sum14x;
	reg [15:0] sum15x;
	reg [15:0] sum16x;
	reg [15:0] sum17x;
	reg [15:0] sum18x;
	reg [15:0] sum19x;
	reg [15:0] sum20x;
	reg [15:0] sum21x;
	reg [15:0] sum22x;
	reg [15:0] sum23x;
	reg [15:0] sum24x;
	reg [15:0] sum25x;
	reg [15:0] sum26x;
	reg [15:0] sum27x;
	reg [15:0] sum28x;
	reg [15:0] sum29x;
	reg [15:0] sum30x;
	reg [15:0] sum31x;
	reg [15:0] sum32x;
	reg [15:0] sum33x;
	reg [15:0] sum34x;
	reg [15:0] sum35x;
	reg [15:0] sum36x;
	reg [15:0] sum37x;
	reg [15:0] sum38x;
	reg [15:0] sum39x;
	reg [15:0] sum40x;
	reg [15:0] sum41x;
	reg [15:0] sum42x;
	reg [15:0] sum43x;
	reg [15:0] sum44x;
	reg [15:0] sum45x;
	reg [15:0] sum46x;
	reg [15:0] sum47x;
	reg [15:0] sum48x;
	reg [15:0] sum49x;
	reg [15:0] sum50x;
	reg [15:0] sum51x;
	reg [15:0] sum52x;
	reg [15:0] sum53x;
	reg [15:0] sum54x;
	reg [15:0] sum55x;
	reg [15:0] sum56x;
	reg [15:0] sum57x;
	reg [15:0] sum58x;
	reg [15:0] sum59x;
	reg [15:0] sum60x;
	reg [15:0] sum61x;
	reg [15:0] sum62x;
	reg [15:0] sum63x;
	reg [15:0] sum64x;
	reg [15:0] sum65x;
	reg [15:0] sum66x;
	reg [15:0] sum67x;
	reg [15:0] sum68x;
	reg [15:0] sum69x;
	reg [15:0] sum70x;
	reg [15:0] sum71x;
	reg [15:0] sum72x;
	reg [15:0] sum73x;
	reg [15:0] sum74x;
	reg [15:0] sum75x;
	reg [15:0] sum76x;
	reg [15:0] sum77x;
	reg [15:0] sum78x;
	reg [15:0] sum79x;
	reg [15:0] sum80x;
	reg [15:0] sum81x;
	reg [15:0] sum82x;
	reg [15:0] sum83x;
	reg [15:0] sum84x;
	reg [15:0] sum85x;
	reg [15:0] sum86x;
	reg [15:0] sum87x;
	reg [15:0] sum88x;
	reg [15:0] sum89x;
	reg [15:0] sum90x;
	reg [15:0] sum91x;
	reg [15:0] sum92x;
	reg [15:0] sum93x;
	reg [15:0] sum94x;
	reg [15:0] sum95x;
	reg [15:0] sum96x;
	reg [15:0] sum97x;
	reg [15:0] sum98x;
	reg [15:0] sum99x;
	reg [15:0] sum100x;
	reg [15:0] sum101x;
	reg [15:0] sum102x;
	reg [15:0] sum103x;
	reg [15:0] sum104x;
	reg [15:0] sum105x;
	reg [15:0] sum106x;
	reg [15:0] sum107x;
	reg [15:0] sum108x;
	reg [15:0] sum109x;
	reg [15:0] sum110x;
	reg [15:0] sum111x;
	reg [15:0] sum112x;
	reg [15:0] sum113x;
	reg [15:0] sum114x;
	reg [15:0] sum115x;
	reg [15:0] sum116x;
	reg [15:0] sum117x;
	reg [15:0] sum118x;
	reg [15:0] sum119x;
	reg [15:0] sum120x;
	reg [15:0] sum121x;
	reg [15:0] sum122x;
	reg [15:0] sum123x;
	reg [15:0] sum124x;
	reg [15:0] sum125x;
	reg [15:0] sum126x;
	reg [15:0] sum127x;
	reg [15:0] sum128x;
	reg [15:0] sum129x;
	reg [15:0] sum130x;
	reg [15:0] sum131x;
	reg [15:0] sum132x;
	reg [15:0] sum133x;
	reg [15:0] sum134x;
	reg [15:0] sum135x;
	reg [15:0] sum136x;
	reg [15:0] sum137x;
	reg [15:0] sum138x;
	reg [15:0] sum139x;
	reg [15:0] sum140x;
	reg [15:0] sum141x;
	reg [15:0] sum142x;
	reg [15:0] sum143x;
	reg [15:0] sum144x;
	reg [15:0] sum145x;
	reg [15:0] sum146x;
	reg [15:0] sum147x;
	reg [15:0] sum148x;
	reg [15:0] sum149x;
	reg [15:0] sum150x;
	reg [15:0] sum151x;
	reg [15:0] sum152x;
	reg [15:0] sum153x;
	reg [15:0] sum154x;
	reg [15:0] sum155x;
	reg [15:0] sum156x;
	reg [15:0] sum157x;
	reg [15:0] sum158x;
	reg [15:0] sum159x;
	reg [15:0] sum160x;
	reg [15:0] sum161x;
	reg [15:0] sum162x;
	reg [15:0] sum163x;
	reg [15:0] sum164x;
	reg [15:0] sum165x;
	reg [15:0] sum166x;
	reg [15:0] sum167x;
	reg [15:0] sum168x;
	reg [15:0] sum169x;
	reg [15:0] sum170x;
	reg [15:0] sum171x;
	reg [15:0] sum172x;
	reg [15:0] sum173x;
	reg [15:0] sum174x;
	reg [15:0] sum175x;
	reg [15:0] sum176x;
	reg [15:0] sum177x;
	reg [15:0] sum178x;
	reg [15:0] sum179x;
	reg [15:0] sum180x;
	reg [15:0] sum181x;
	reg [15:0] sum182x;
	reg [15:0] sum183x;
	reg [15:0] sum184x;
	reg [15:0] sum185x;

	reg [15:0] sumout;
	reg [15:0] A0x_c;
	reg [15:0] A1x_c;
	reg [15:0] A2x_c;
	reg [15:0] A3x_c;
	reg [15:0] A4x_c;
	reg [15:0] A5x_c;
	reg [15:0] A6x_c;
	reg [15:0] A7x_c;
	reg [15:0] A8x_c;
	reg [15:0] A9x_c;
	reg [15:0] A10x_c;
	reg [15:0] A11x_c;
	reg [15:0] A12x_c;
	reg [15:0] A13x_c;
	reg [15:0] A14x_c;
	reg [15:0] A15x_c;
	reg [15:0] A16x_c;
	reg [15:0] A17x_c;
	reg [15:0] A18x_c;
	reg [15:0] A19x_c;
	reg [15:0] A20x_c;
	reg [15:0] A21x_c;
	reg [15:0] A22x_c;
	reg [15:0] A23x_c;
	reg [15:0] A24x_c;
	reg [15:0] A25x_c;
	reg [15:0] A26x_c;
	reg [15:0] A27x_c;
	reg [15:0] A28x_c;
	reg [15:0] A29x_c;
	reg [15:0] A30x_c;
	reg [15:0] A31x_c;
	reg [15:0] A32x_c;
	reg [15:0] A33x_c;
	reg [15:0] A34x_c;
	reg [15:0] A35x_c;
	reg [15:0] A36x_c;
	reg [15:0] A37x_c;
	reg [15:0] A38x_c;
	reg [15:0] A39x_c;
	reg [15:0] A40x_c;
	reg [15:0] A41x_c;
	reg [15:0] A42x_c;
	reg [15:0] A43x_c;
	reg [15:0] A44x_c;
	reg [15:0] A45x_c;
	reg [15:0] A46x_c;
	reg [15:0] A47x_c;
	reg [15:0] A48x_c;
	reg [15:0] A49x_c;
	reg [15:0] A50x_c;
	reg [15:0] A51x_c;
	reg [15:0] A52x_c;
	reg [15:0] A53x_c;
	reg [15:0] A54x_c;
	reg [15:0] A55x_c;
	reg [15:0] A56x_c;
	reg [15:0] A57x_c;
	reg [15:0] A58x_c;
	reg [15:0] A59x_c;
	reg [15:0] A60x_c;
	reg [15:0] A61x_c;
	reg [15:0] A62x_c;
	reg [15:0] A63x_c;
	reg [15:0] A64x_c;
	reg [15:0] A65x_c;
	reg [15:0] A66x_c;
	reg [15:0] A67x_c;
	reg [15:0] A68x_c;
	reg [15:0] A69x_c;
	reg [15:0] A70x_c;
	reg [15:0] A71x_c;
	reg [15:0] A72x_c;
	reg [15:0] A73x_c;
	reg [15:0] A74x_c;
	reg [15:0] A75x_c;
	reg [15:0] A76x_c;
	reg [15:0] A77x_c;
	reg [15:0] A78x_c;
	reg [15:0] A79x_c;
	reg [15:0] A80x_c;
	reg [15:0] A81x_c;
	reg [15:0] A82x_c;
	reg [15:0] A83x_c;
	reg [15:0] A84x_c;
	reg [15:0] A85x_c;
	reg [15:0] A86x_c;
	reg [15:0] A87x_c;
	reg [15:0] A88x_c;
	reg [15:0] A89x_c;
	reg [15:0] A90x_c;
	reg [15:0] A91x_c;
	reg [15:0] A92x_c;
	reg [15:0] A93x_c;
	reg [15:0] A94x_c;
	reg [15:0] A95x_c;
	reg [15:0] A96x_c;
	reg [15:0] A97x_c;
	reg [15:0] A98x_c;
	reg [15:0] A99x_c;
	reg [15:0] A100x_c;
	reg [15:0] A101x_c;
	reg [15:0] A102x_c;
	reg [15:0] A103x_c;
	reg [15:0] A104x_c;
	reg [15:0] A105x_c;
	reg [15:0] A106x_c;
	reg [15:0] A107x_c;
	reg [15:0] A108x_c;
	reg [15:0] A109x_c;
	reg [15:0] A110x_c;
	reg [15:0] A111x_c;
	reg [15:0] A112x_c;
	reg [15:0] A113x_c;
	reg [15:0] A114x_c;
	reg [15:0] A115x_c;
	reg [15:0] A116x_c;
	reg [15:0] A117x_c;
	reg [15:0] A118x_c;
	reg [15:0] A119x_c;
	reg [15:0] A120x_c;
	reg [15:0] A121x_c;
	reg [15:0] A122x_c;
	reg [15:0] A123x_c;
	reg [15:0] A124x_c;
	reg [15:0] A125x_c;
	reg [15:0] A126x_c;
	reg [15:0] A127x_c;
	reg [15:0] A128x_c;
	reg [15:0] A129x_c;
	reg [15:0] A130x_c;
	reg [15:0] A131x_c;
	reg [15:0] A132x_c;
	reg [15:0] A133x_c;
	reg [15:0] A134x_c;
	reg [15:0] A135x_c;
	reg [15:0] A136x_c;
	reg [15:0] A137x_c;
	reg [15:0] A138x_c;
	reg [15:0] A139x_c;
	reg [15:0] A140x_c;
	reg [15:0] A141x_c;
	reg [15:0] A142x_c;
	reg [15:0] A143x_c;
	reg [15:0] A144x_c;
	reg [15:0] A145x_c;
	reg [15:0] A146x_c;
	reg [15:0] A147x_c;
	reg [15:0] A148x_c;
	reg [15:0] A149x_c;
	reg [15:0] A150x_c;
	reg [15:0] A151x_c;
	reg [15:0] A152x_c;
	reg [15:0] A153x_c;
	reg [15:0] A154x_c;
	reg [15:0] A155x_c;
	reg [15:0] A156x_c;
	reg [15:0] A157x_c;
	reg [15:0] A158x_c;
	reg [15:0] A159x_c;
	reg [15:0] A160x_c;
	reg [15:0] A161x_c;
	reg [15:0] A162x_c;
	reg [15:0] A163x_c;
	reg [15:0] A164x_c;
	reg [15:0] A165x_c;
	reg [15:0] A166x_c;
	reg [15:0] A167x_c;
	reg [15:0] A168x_c;
	reg [15:0] A169x_c;
	reg [15:0] A170x_c;
	reg [15:0] A171x_c;
	reg [15:0] A172x_c;
	reg [15:0] A173x_c;
	reg [15:0] A174x_c;
	reg [15:0] A175x_c;
	reg [15:0] A176x_c;
	reg [15:0] A177x_c;
	reg [15:0] A178x_c;
	reg [15:0] A179x_c;
	reg [15:0] A180x_c;
	reg [15:0] A181x_c;
	reg [15:0] A182x_c;
	reg [15:0] A183x_c;
	reg [15:0] A184x_c;
	reg [15:0] A185x_c;
	reg [15:0] A186x_c;


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
	assign in75x=A75x_c*W75x;
	assign in76x=A76x_c*W76x;
	assign in77x=A77x_c*W77x;
	assign in78x=A78x_c*W78x;
	assign in79x=A79x_c*W79x;
	assign in80x=A80x_c*W80x;
	assign in81x=A81x_c*W81x;
	assign in82x=A82x_c*W82x;
	assign in83x=A83x_c*W83x;
	assign in84x=A84x_c*W84x;
	assign in85x=A85x_c*W85x;
	assign in86x=A86x_c*W86x;
	assign in87x=A87x_c*W87x;
	assign in88x=A88x_c*W88x;
	assign in89x=A89x_c*W89x;
	assign in90x=A90x_c*W90x;
	assign in91x=A91x_c*W91x;
	assign in92x=A92x_c*W92x;
	assign in93x=A93x_c*W93x;
	assign in94x=A94x_c*W94x;
	assign in95x=A95x_c*W95x;
	assign in96x=A96x_c*W96x;
	assign in97x=A97x_c*W97x;
	assign in98x=A98x_c*W98x;
	assign in99x=A99x_c*W99x;
	assign in100x=A100x_c*W100x;
	assign in101x=A101x_c*W101x;
	assign in102x=A102x_c*W102x;
	assign in103x=A103x_c*W103x;
	assign in104x=A104x_c*W104x;
	assign in105x=A105x_c*W105x;
	assign in106x=A106x_c*W106x;
	assign in107x=A107x_c*W107x;
	assign in108x=A108x_c*W108x;
	assign in109x=A109x_c*W109x;
	assign in110x=A110x_c*W110x;
	assign in111x=A111x_c*W111x;
	assign in112x=A112x_c*W112x;
	assign in113x=A113x_c*W113x;
	assign in114x=A114x_c*W114x;
	assign in115x=A115x_c*W115x;
	assign in116x=A116x_c*W116x;
	assign in117x=A117x_c*W117x;
	assign in118x=A118x_c*W118x;
	assign in119x=A119x_c*W119x;
	assign in120x=A120x_c*W120x;
	assign in121x=A121x_c*W121x;
	assign in122x=A122x_c*W122x;
	assign in123x=A123x_c*W123x;
	assign in124x=A124x_c*W124x;
	assign in125x=A125x_c*W125x;
	assign in126x=A126x_c*W126x;
	assign in127x=A127x_c*W127x;
	assign in128x=A128x_c*W128x;
	assign in129x=A129x_c*W129x;
	assign in130x=A130x_c*W130x;
	assign in131x=A131x_c*W131x;
	assign in132x=A132x_c*W132x;
	assign in133x=A133x_c*W133x;
	assign in134x=A134x_c*W134x;
	assign in135x=A135x_c*W135x;
	assign in136x=A136x_c*W136x;
	assign in137x=A137x_c*W137x;
	assign in138x=A138x_c*W138x;
	assign in139x=A139x_c*W139x;
	assign in140x=A140x_c*W140x;
	assign in141x=A141x_c*W141x;
	assign in142x=A142x_c*W142x;
	assign in143x=A143x_c*W143x;
	assign in144x=A144x_c*W144x;
	assign in145x=A145x_c*W145x;
	assign in146x=A146x_c*W146x;
	assign in147x=A147x_c*W147x;
	assign in148x=A148x_c*W148x;
	assign in149x=A149x_c*W149x;
	assign in150x=A150x_c*W150x;
	assign in151x=A151x_c*W151x;
	assign in152x=A152x_c*W152x;
	assign in153x=A153x_c*W153x;
	assign in154x=A154x_c*W154x;
	assign in155x=A155x_c*W155x;
	assign in156x=A156x_c*W156x;
	assign in157x=A157x_c*W157x;
	assign in158x=A158x_c*W158x;
	assign in159x=A159x_c*W159x;
	assign in160x=A160x_c*W160x;
	assign in161x=A161x_c*W161x;
	assign in162x=A162x_c*W162x;
	assign in163x=A163x_c*W163x;
	assign in164x=A164x_c*W164x;
	assign in165x=A165x_c*W165x;
	assign in166x=A166x_c*W166x;
	assign in167x=A167x_c*W167x;
	assign in168x=A168x_c*W168x;
	assign in169x=A169x_c*W169x;
	assign in170x=A170x_c*W170x;
	assign in171x=A171x_c*W171x;
	assign in172x=A172x_c*W172x;
	assign in173x=A173x_c*W173x;
	assign in174x=A174x_c*W174x;
	assign in175x=A175x_c*W175x;
	assign in176x=A176x_c*W176x;
	assign in177x=A177x_c*W177x;
	assign in178x=A178x_c*W178x;
	assign in179x=A179x_c*W179x;
	assign in180x=A180x_c*W180x;
	assign in181x=A181x_c*W181x;
	assign in182x=A182x_c*W182x;
	assign in183x=A183x_c*W183x;
	assign in184x=A184x_c*W184x;
	assign in185x=A185x_c*W185x;
	assign in186x=A186x_c*W186x;

always@(posedge clk)
	begin

	if(reset) begin
		N3x<=16'b0;
		sumout<=16'b0;
		A0x_c<=16'b0;
		A1x_c<=16'b0;
		A2x_c<=16'b0;
		A3x_c<=16'b0;
		A4x_c<=16'b0;
		A5x_c<=16'b0;
		A6x_c<=16'b0;
		A7x_c<=16'b0;
		A8x_c<=16'b0;
		A9x_c<=16'b0;
		A10x_c<=16'b0;
		A11x_c<=16'b0;
		A12x_c<=16'b0;
		A13x_c<=16'b0;
		A14x_c<=16'b0;
		A15x_c<=16'b0;
		A16x_c<=16'b0;
		A17x_c<=16'b0;
		A18x_c<=16'b0;
		A19x_c<=16'b0;
		A20x_c<=16'b0;
		A21x_c<=16'b0;
		A22x_c<=16'b0;
		A23x_c<=16'b0;
		A24x_c<=16'b0;
		A25x_c<=16'b0;
		A26x_c<=16'b0;
		A27x_c<=16'b0;
		A28x_c<=16'b0;
		A29x_c<=16'b0;
		A30x_c<=16'b0;
		A31x_c<=16'b0;
		A32x_c<=16'b0;
		A33x_c<=16'b0;
		A34x_c<=16'b0;
		A35x_c<=16'b0;
		A36x_c<=16'b0;
		A37x_c<=16'b0;
		A38x_c<=16'b0;
		A39x_c<=16'b0;
		A40x_c<=16'b0;
		A41x_c<=16'b0;
		A42x_c<=16'b0;
		A43x_c<=16'b0;
		A44x_c<=16'b0;
		A45x_c<=16'b0;
		A46x_c<=16'b0;
		A47x_c<=16'b0;
		A48x_c<=16'b0;
		A49x_c<=16'b0;
		A50x_c<=16'b0;
		A51x_c<=16'b0;
		A52x_c<=16'b0;
		A53x_c<=16'b0;
		A54x_c<=16'b0;
		A55x_c<=16'b0;
		A56x_c<=16'b0;
		A57x_c<=16'b0;
		A58x_c<=16'b0;
		A59x_c<=16'b0;
		A60x_c<=16'b0;
		A61x_c<=16'b0;
		A62x_c<=16'b0;
		A63x_c<=16'b0;
		A64x_c<=16'b0;
		A65x_c<=16'b0;
		A66x_c<=16'b0;
		A67x_c<=16'b0;
		A68x_c<=16'b0;
		A69x_c<=16'b0;
		A70x_c<=16'b0;
		A71x_c<=16'b0;
		A72x_c<=16'b0;
		A73x_c<=16'b0;
		A74x_c<=16'b0;
		A75x_c<=16'b0;
		A76x_c<=16'b0;
		A77x_c<=16'b0;
		A78x_c<=16'b0;
		A79x_c<=16'b0;
		A80x_c<=16'b0;
		A81x_c<=16'b0;
		A82x_c<=16'b0;
		A83x_c<=16'b0;
		A84x_c<=16'b0;
		A85x_c<=16'b0;
		A86x_c<=16'b0;
		A87x_c<=16'b0;
		A88x_c<=16'b0;
		A89x_c<=16'b0;
		A90x_c<=16'b0;
		A91x_c<=16'b0;
		A92x_c<=16'b0;
		A93x_c<=16'b0;
		A94x_c<=16'b0;
		A95x_c<=16'b0;
		A96x_c<=16'b0;
		A97x_c<=16'b0;
		A98x_c<=16'b0;
		A99x_c<=16'b0;
		A100x_c<=16'b0;
		A101x_c<=16'b0;
		A102x_c<=16'b0;
		A103x_c<=16'b0;
		A104x_c<=16'b0;
		A105x_c<=16'b0;
		A106x_c<=16'b0;
		A107x_c<=16'b0;
		A108x_c<=16'b0;
		A109x_c<=16'b0;
		A110x_c<=16'b0;
		A111x_c<=16'b0;
		A112x_c<=16'b0;
		A113x_c<=16'b0;
		A114x_c<=16'b0;
		A115x_c<=16'b0;
		A116x_c<=16'b0;
		A117x_c<=16'b0;
		A118x_c<=16'b0;
		A119x_c<=16'b0;
		A120x_c<=16'b0;
		A121x_c<=16'b0;
		A122x_c<=16'b0;
		A123x_c<=16'b0;
		A124x_c<=16'b0;
		A125x_c<=16'b0;
		A126x_c<=16'b0;
		A127x_c<=16'b0;
		A128x_c<=16'b0;
		A129x_c<=16'b0;
		A130x_c<=16'b0;
		A131x_c<=16'b0;
		A132x_c<=16'b0;
		A133x_c<=16'b0;
		A134x_c<=16'b0;
		A135x_c<=16'b0;
		A136x_c<=16'b0;
		A137x_c<=16'b0;
		A138x_c<=16'b0;
		A139x_c<=16'b0;
		A140x_c<=16'b0;
		A141x_c<=16'b0;
		A142x_c<=16'b0;
		A143x_c<=16'b0;
		A144x_c<=16'b0;
		A145x_c<=16'b0;
		A146x_c<=16'b0;
		A147x_c<=16'b0;
		A148x_c<=16'b0;
		A149x_c<=16'b0;
		A150x_c<=16'b0;
		A151x_c<=16'b0;
		A152x_c<=16'b0;
		A153x_c<=16'b0;
		A154x_c<=16'b0;
		A155x_c<=16'b0;
		A156x_c<=16'b0;
		A157x_c<=16'b0;
		A158x_c<=16'b0;
		A159x_c<=16'b0;
		A160x_c<=16'b0;
		A161x_c<=16'b0;
		A162x_c<=16'b0;
		A163x_c<=16'b0;
		A164x_c<=16'b0;
		A165x_c<=16'b0;
		A166x_c<=16'b0;
		A167x_c<=16'b0;
		A168x_c<=16'b0;
		A169x_c<=16'b0;
		A170x_c<=16'b0;
		A171x_c<=16'b0;
		A172x_c<=16'b0;
		A173x_c<=16'b0;
		A174x_c<=16'b0;
		A175x_c<=16'b0;
		A176x_c<=16'b0;
		A177x_c<=16'b0;
		A178x_c<=16'b0;
		A179x_c<=16'b0;
		A180x_c<=16'b0;
		A181x_c<=16'b0;
		A182x_c<=16'b0;
		A183x_c<=16'b0;
		A184x_c<=16'b0;
		A185x_c<=16'b0;
		A186x_c<=16'b0;
		sum0x<=16'b0;
		sum1x<=16'b0;
		sum2x<=16'b0;
		sum3x<=16'b0;
		sum4x<=16'b0;
		sum5x<=16'b0;
		sum6x<=16'b0;
		sum7x<=16'b0;
		sum8x<=16'b0;
		sum9x<=16'b0;
		sum10x<=16'b0;
		sum11x<=16'b0;
		sum12x<=16'b0;
		sum13x<=16'b0;
		sum14x<=16'b0;
		sum15x<=16'b0;
		sum16x<=16'b0;
		sum17x<=16'b0;
		sum18x<=16'b0;
		sum19x<=16'b0;
		sum20x<=16'b0;
		sum21x<=16'b0;
		sum22x<=16'b0;
		sum23x<=16'b0;
		sum24x<=16'b0;
		sum25x<=16'b0;
		sum26x<=16'b0;
		sum27x<=16'b0;
		sum28x<=16'b0;
		sum29x<=16'b0;
		sum30x<=16'b0;
		sum31x<=16'b0;
		sum32x<=16'b0;
		sum33x<=16'b0;
		sum34x<=16'b0;
		sum35x<=16'b0;
		sum36x<=16'b0;
		sum37x<=16'b0;
		sum38x<=16'b0;
		sum39x<=16'b0;
		sum40x<=16'b0;
		sum41x<=16'b0;
		sum42x<=16'b0;
		sum43x<=16'b0;
		sum44x<=16'b0;
		sum45x<=16'b0;
		sum46x<=16'b0;
		sum47x<=16'b0;
		sum48x<=16'b0;
		sum49x<=16'b0;
		sum50x<=16'b0;
		sum51x<=16'b0;
		sum52x<=16'b0;
		sum53x<=16'b0;
		sum54x<=16'b0;
		sum55x<=16'b0;
		sum56x<=16'b0;
		sum57x<=16'b0;
		sum58x<=16'b0;
		sum59x<=16'b0;
		sum60x<=16'b0;
		sum61x<=16'b0;
		sum62x<=16'b0;
		sum63x<=16'b0;
		sum64x<=16'b0;
		sum65x<=16'b0;
		sum66x<=16'b0;
		sum67x<=16'b0;
		sum68x<=16'b0;
		sum69x<=16'b0;
		sum70x<=16'b0;
		sum71x<=16'b0;
		sum72x<=16'b0;
		sum73x<=16'b0;
		sum74x<=16'b0;
		sum75x<=16'b0;
		sum76x<=16'b0;
		sum77x<=16'b0;
		sum78x<=16'b0;
		sum79x<=16'b0;
		sum80x<=16'b0;
		sum81x<=16'b0;
		sum82x<=16'b0;
		sum83x<=16'b0;
		sum84x<=16'b0;
		sum85x<=16'b0;
		sum86x<=16'b0;
		sum87x<=16'b0;
		sum88x<=16'b0;
		sum89x<=16'b0;
		sum90x<=16'b0;
		sum91x<=16'b0;
		sum92x<=16'b0;
		sum93x<=16'b0;
		sum94x<=16'b0;
		sum95x<=16'b0;
		sum96x<=16'b0;
		sum97x<=16'b0;
		sum98x<=16'b0;
		sum99x<=16'b0;
		sum100x<=16'b0;
		sum101x<=16'b0;
		sum102x<=16'b0;
		sum103x<=16'b0;
		sum104x<=16'b0;
		sum105x<=16'b0;
		sum106x<=16'b0;
		sum107x<=16'b0;
		sum108x<=16'b0;
		sum109x<=16'b0;
		sum110x<=16'b0;
		sum111x<=16'b0;
		sum112x<=16'b0;
		sum113x<=16'b0;
		sum114x<=16'b0;
		sum115x<=16'b0;
		sum116x<=16'b0;
		sum117x<=16'b0;
		sum118x<=16'b0;
		sum119x<=16'b0;
		sum120x<=16'b0;
		sum121x<=16'b0;
		sum122x<=16'b0;
		sum123x<=16'b0;
		sum124x<=16'b0;
		sum125x<=16'b0;
		sum126x<=16'b0;
		sum127x<=16'b0;
		sum128x<=16'b0;
		sum129x<=16'b0;
		sum130x<=16'b0;
		sum131x<=16'b0;
		sum132x<=16'b0;
		sum133x<=16'b0;
		sum134x<=16'b0;
		sum135x<=16'b0;
		sum136x<=16'b0;
		sum137x<=16'b0;
		sum138x<=16'b0;
		sum139x<=16'b0;
		sum140x<=16'b0;
		sum141x<=16'b0;
		sum142x<=16'b0;
		sum143x<=16'b0;
		sum144x<=16'b0;
		sum145x<=16'b0;
		sum146x<=16'b0;
		sum147x<=16'b0;
		sum148x<=16'b0;
		sum149x<=16'b0;
		sum150x<=16'b0;
		sum151x<=16'b0;
		sum152x<=16'b0;
		sum153x<=16'b0;
		sum154x<=16'b0;
		sum155x<=16'b0;
		sum156x<=16'b0;
		sum157x<=16'b0;
		sum158x<=16'b0;
		sum159x<=16'b0;
		sum160x<=16'b0;
		sum161x<=16'b0;
		sum162x<=16'b0;
		sum163x<=16'b0;
		sum164x<=16'b0;
		sum165x<=16'b0;
		sum166x<=16'b0;
		sum167x<=16'b0;
		sum168x<=16'b0;
		sum169x<=16'b0;
		sum170x<=16'b0;
		sum171x<=16'b0;
		sum172x<=16'b0;
		sum173x<=16'b0;
		sum174x<=16'b0;
		sum175x<=16'b0;
		sum176x<=16'b0;
		sum177x<=16'b0;
		sum178x<=16'b0;
		sum179x<=16'b0;
		sum180x<=16'b0;
		sum181x<=16'b0;
		sum182x<=16'b0;
		sum183x<=16'b0;
		sum184x<=16'b0;
		sum185x<=16'b0;
		sumout<=16'b0;
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
	A75x_c<=A75x;
	A76x_c<=A76x;
	A77x_c<=A77x;
	A78x_c<=A78x;
	A79x_c<=A79x;
	A80x_c<=A80x;
	A81x_c<=A81x;
	A82x_c<=A82x;
	A83x_c<=A83x;
	A84x_c<=A84x;
	A85x_c<=A85x;
	A86x_c<=A86x;
	A87x_c<=A87x;
	A88x_c<=A88x;
	A89x_c<=A89x;
	A90x_c<=A90x;
	A91x_c<=A91x;
	A92x_c<=A92x;
	A93x_c<=A93x;
	A94x_c<=A94x;
	A95x_c<=A95x;
	A96x_c<=A96x;
	A97x_c<=A97x;
	A98x_c<=A98x;
	A99x_c<=A99x;
	A100x_c<=A100x;
	A101x_c<=A101x;
	A102x_c<=A102x;
	A103x_c<=A103x;
	A104x_c<=A104x;
	A105x_c<=A105x;
	A106x_c<=A106x;
	A107x_c<=A107x;
	A108x_c<=A108x;
	A109x_c<=A109x;
	A110x_c<=A110x;
	A111x_c<=A111x;
	A112x_c<=A112x;
	A113x_c<=A113x;
	A114x_c<=A114x;
	A115x_c<=A115x;
	A116x_c<=A116x;
	A117x_c<=A117x;
	A118x_c<=A118x;
	A119x_c<=A119x;
	A120x_c<=A120x;
	A121x_c<=A121x;
	A122x_c<=A122x;
	A123x_c<=A123x;
	A124x_c<=A124x;
	A125x_c<=A125x;
	A126x_c<=A126x;
	A127x_c<=A127x;
	A128x_c<=A128x;
	A129x_c<=A129x;
	A130x_c<=A130x;
	A131x_c<=A131x;
	A132x_c<=A132x;
	A133x_c<=A133x;
	A134x_c<=A134x;
	A135x_c<=A135x;
	A136x_c<=A136x;
	A137x_c<=A137x;
	A138x_c<=A138x;
	A139x_c<=A139x;
	A140x_c<=A140x;
	A141x_c<=A141x;
	A142x_c<=A142x;
	A143x_c<=A143x;
	A144x_c<=A144x;
	A145x_c<=A145x;
	A146x_c<=A146x;
	A147x_c<=A147x;
	A148x_c<=A148x;
	A149x_c<=A149x;
	A150x_c<=A150x;
	A151x_c<=A151x;
	A152x_c<=A152x;
	A153x_c<=A153x;
	A154x_c<=A154x;
	A155x_c<=A155x;
	A156x_c<=A156x;
	A157x_c<=A157x;
	A158x_c<=A158x;
	A159x_c<=A159x;
	A160x_c<=A160x;
	A161x_c<=A161x;
	A162x_c<=A162x;
	A163x_c<=A163x;
	A164x_c<=A164x;
	A165x_c<=A165x;
	A166x_c<=A166x;
	A167x_c<=A167x;
	A168x_c<=A168x;
	A169x_c<=A169x;
	A170x_c<=A170x;
	A171x_c<=A171x;
	A172x_c<=A172x;
	A173x_c<=A173x;
	A174x_c<=A174x;
	A175x_c<=A175x;
	A176x_c<=A176x;
	A177x_c<=A177x;
	A178x_c<=A178x;
	A179x_c<=A179x;
	A180x_c<=A180x;
	A181x_c<=A181x;
	A182x_c<=A182x;
	A183x_c<=A183x;
	A184x_c<=A184x;
	A185x_c<=A185x;
	A186x_c<=A186x;
	sumout<=in0x+in1x+in2x+in3x+in4x+in5x+in6x+in7x+in8x+in9x+in10x+in11x+in12x+in13x+in14x+in15x+in16x+in17x+in18x+in19x+in20x+in21x+in22x+in23x+in24x+in25x+in26x+in27x+in28x+in29x+in30x+in31x+in32x+in33x+in34x+in35x+in36x+in37x+in38x+in39x+in40x+in41x+in42x+in43x+in44x+in45x+in46x+in47x+in48x+in49x+in50x+in51x+in52x+in53x+in54x+in55x+in56x+in57x+in58x+in59x+in60x+in61x+in62x+in63x+in64x+in65x+in66x+in67x+in68x+in69x+in70x+in71x+in72x+in73x+in74x+in75x+in76x+in77x+in78x+in79x+in80x+in81x+in82x+in83x+in84x+in85x+in86x+in87x+in88x+in89x+in90x+in91x+in92x+in93x+in94x+in95x+in96x+in97x+in98x+in99x+in100x+in101x+in102x+in103x+in104x+in105x+in106x+in107x+in108x+in109x+in110x+in111x+in112x+in113x+in114x+in115x+in116x+in117x+in118x+in119x+in120x+in121x+in122x+in123x+in124x+in125x+in126x+in127x+in128x+in129x+in130x+in131x+in132x+in133x+in134x+in135x+in136x+in137x+in138x+in139x+in140x+in141x+in142x+in143x+in144x+in145x+in146x+in147x+in148x+in149x+in150x+in151x+in152x+in153x+in154x+in155x+in156x+in157x+in158x+in159x+in160x+in161x+in162x+in163x+in164x+in165x+in166x+in167x+in168x+in169x+in170x+in171x+in172x+in173x+in174x+in175x+in176x+in177x+in178x+in179x+in180x+in181x+in182x+in183x+in184x+in185x+in186x+B0x;

	if(sumout[15]==0)
		begin
		N3x<=sumout;
		end
	else
		begin
		N3x<=16'd0;
		end
	end
endmodule
