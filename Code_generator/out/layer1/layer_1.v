module layer_1(reset,clk,out0,out1,out2,out3,out4,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31,in32,in33,in34,in35,in36,in37,in38,in39,in40,in41,in42,in43,in44,in45,in46,in47,in48,in49,in50,in51,in52,in53,in54,in55,in56,in57,in58,in59,in60,in61,in62,in63,in64,in65,in66,in67,in68,in69,in70,in71,in72,in73,in74,in75,in76,in77,in78,in79,in80,in81,in82,in83,in84,in85,in86,in87,in88,in89,in90,in91,in92,in93,in94,in95,in96,in97,in98,in99,in100,in101,in102,in103,in104,in105,in106,in107,in108,in109,in110,in111,in112,in113,in114,in115,in116,in117,in118,in119,in120,in121,in122,in123,in124,in125,in126,in127,in128,in129,in130,in131,in132,in133,in134,in135,in136,in137,in138,in139,in140,in141,in142,in143,in144,in145,in146,in147,in148,in149,in150,in151,in152,in153,in154,in155,in156,in157,in158,in159,in160,in161,in162,in163,in164,in165,in166,in167,in168,in169,in170,in171,in172,in173,in174,in175,in176,in177,in178,in179,in180,in181,in182,in183,in184,in185,in186);
	input reset, clk; 
	output reg [7:0] out0,out1,out2,out3,out4;
	input [7:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31,in32,in33,in34,in35,in36,in37,in38,in39,in40,in41,in42,in43,in44,in45,in46,in47,in48,in49,in50,in51,in52,in53,in54,in55,in56,in57,in58,in59,in60,in61,in62,in63,in64,in65,in66,in67,in68,in69,in70,in71,in72,in73,in74,in75,in76,in77,in78,in79,in80,in81,in82,in83,in84,in85,in86,in87,in88,in89,in90,in91,in92,in93,in94,in95,in96,in97,in98,in99,in100,in101,in102,in103,in104,in105,in106,in107,in108,in109,in110,in111,in112,in113,in114,in115,in116,in117,in118,in119,in120,in121,in122,in123,in124,in125,in126,in127,in128,in129,in130,in131,in132,in133,in134,in135,in136,in137,in138,in139,in140,in141,in142,in143,in144,in145,in146,in147,in148,in149,in150,in151,in152,in153,in154,in155,in156,in157,in158,in159,in160,in161,in162,in163,in164,in165,in166,in167,in168,in169,in170,in171,in172,in173,in174,in175,in176,in177,in178,in179,in180,in181,in182,in183,in184,in185,in186;
	wire [1503:0] w;
	wire [7:0] tmpout;
	reg [2:0] address;
	reg [2:0] count;

	initial address = 3'b0;
	initial count = 3'b0;

	ROM_params_1 rom_params(.address(address),.clock(clk),.q(w));
	node_1 node_in(clk,reset,tmpout,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31,in32,in33,in34,in35,in36,in37,in38,in39,in40,in41,in42,in43,in44,in45,in46,in47,in48,in49,in50,in51,in52,in53,in54,in55,in56,in57,in58,in59,in60,in61,in62,in63,in64,in65,in66,in67,in68,in69,in70,in71,in72,in73,in74,in75,in76,in77,in78,in79,in80,in81,in82,in83,in84,in85,in86,in87,in88,in89,in90,in91,in92,in93,in94,in95,in96,in97,in98,in99,in100,in101,in102,in103,in104,in105,in106,in107,in108,in109,in110,in111,in112,in113,in114,in115,in116,in117,in118,in119,in120,in121,in122,in123,in124,in125,in126,in127,in128,in129,in130,in131,in132,in133,in134,in135,in136,in137,in138,in139,in140,in141,in142,in143,in144,in145,in146,in147,in148,in149,in150,in151,in152,in153,in154,in155,in156,in157,in158,in159,in160,in161,in162,in163,in164,in165,in166,in167,in168,in169,in170,in171,in172,in173,in174,in175,in176,in177,in178,in179,in180,in181,in182,in183,in184,in185,in186,w[1503:1496],w[1495:1488],w[1487:1480],w[1479:1472],w[1471:1464],w[1463:1456],w[1455:1448],w[1447:1440],w[1439:1432],w[1431:1424],w[1423:1416],w[1415:1408],w[1407:1400],w[1399:1392],w[1391:1384],w[1383:1376],w[1375:1368],w[1367:1360],w[1359:1352],w[1351:1344],w[1343:1336],w[1335:1328],w[1327:1320],w[1319:1312],w[1311:1304],w[1303:1296],w[1295:1288],w[1287:1280],w[1279:1272],w[1271:1264],w[1263:1256],w[1255:1248],w[1247:1240],w[1239:1232],w[1231:1224],w[1223:1216],w[1215:1208],w[1207:1200],w[1199:1192],w[1191:1184],w[1183:1176],w[1175:1168],w[1167:1160],w[1159:1152],w[1151:1144],w[1143:1136],w[1135:1128],w[1127:1120],w[1119:1112],w[1111:1104],w[1103:1096],w[1095:1088],w[1087:1080],w[1079:1072],w[1071:1064],w[1063:1056],w[1055:1048],w[1047:1040],w[1039:1032],w[1031:1024],w[1023:1016],w[1015:1008],w[1007:1000],w[999:992],w[991:984],w[983:976],w[975:968],w[967:960],w[959:952],w[951:944],w[943:936],w[935:928],w[927:920],w[919:912],w[911:904],w[903:896],w[895:888],w[887:880],w[879:872],w[871:864],w[863:856],w[855:848],w[847:840],w[839:832],w[831:824],w[823:816],w[815:808],w[807:800],w[799:792],w[791:784],w[783:776],w[775:768],w[767:760],w[759:752],w[751:744],w[743:736],w[735:728],w[727:720],w[719:712],w[711:704],w[703:696],w[695:688],w[687:680],w[679:672],w[671:664],w[663:656],w[655:648],w[647:640],w[639:632],w[631:624],w[623:616],w[615:608],w[607:600],w[599:592],w[591:584],w[583:576],w[575:568],w[567:560],w[559:552],w[551:544],w[543:536],w[535:528],w[527:520],w[519:512],w[511:504],w[503:496],w[495:488],w[487:480],w[479:472],w[471:464],w[463:456],w[455:448],w[447:440],w[439:432],w[431:424],w[423:416],w[415:408],w[407:400],w[399:392],w[391:384],w[383:376],w[375:368],w[367:360],w[359:352],w[351:344],w[343:336],w[335:328],w[327:320],w[319:312],w[311:304],w[303:296],w[295:288],w[287:280],w[279:272],w[271:264],w[263:256],w[255:248],w[247:240],w[239:232],w[231:224],w[223:216],w[215:208],w[207:200],w[199:192],w[191:184],w[183:176],w[175:168],w[167:160],w[159:152],w[151:144],w[143:136],w[135:128],w[127:120],w[119:112],w[111:104],w[103:96],w[95:88],w[87:80],w[79:72],w[71:64],w[63:56],w[55:48],w[47:40],w[39:32],w[31:24],w[23:16],w[15:8],w[7:0]);

	always @(posedge clk) begin
		count <= count + 3'b001;
		if (count == 3'b000) begin
			if (address == 3'd4)
				address <= 3'd0;
			else
				address <= address + 3'd1;
			case (address)
				3'd0  :  out0<=tmpout;
				3'd1  :  out1<=tmpout;
				3'd2  :  out2<=tmpout;
				3'd3  :  out3<=tmpout;
				3'd4  :  out4<=tmpout;
				default :  out0<=tmpout;
			endcase
		end		
	end
endmodule