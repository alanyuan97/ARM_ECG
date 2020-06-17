module layer_5(reset,clk,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29);
	input reset, clk; 
	output reg [7:0] out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14;
	input [7:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29;
	wire [247:0] w;
	wire [7:0] tmpout;
	reg [3:0] address;
	reg [3:0] count;

	initial address = 4'b0;
	initial count = 3'b000;

	ROM_params_5 rom_params(.address(address),.clock(clk),.q(w));
	node_5 node_in(clk,reset,tmpout,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,w[247:240],w[239:232],w[231:224],w[223:216],w[215:208],w[207:200],w[199:192],w[191:184],w[183:176],w[175:168],w[167:160],w[159:152],w[151:144],w[143:136],w[135:128],w[127:120],w[119:112],w[111:104],w[103:96],w[95:88],w[87:80],w[79:72],w[71:64],w[63:56],w[55:48],w[47:40],w[39:32],w[31:24],w[23:16],w[15:8],w[7:0]);

	always @(posedge clk) begin
		count <= count + 3'b001;
		if (count == 3'b000) begin
			if (address == 3'b100)
				address <= 3'b000;
			else
				address <= address + 3'b001;
		end

		case (address)
			3'd0  :  out0<=tmpout;
			3'd1  :  out1<=tmpout;
			3'd2  :  out2<=tmpout;
			3'd3  :  out3<=tmpout;
			3'd4  :  out4<=tmpout;
			3'd5  :  out5<=tmpout;
			3'd6  :  out6<=tmpout;
			3'd7  :  out7<=tmpout;
			3'd8  :  out8<=tmpout;
			3'd9  :  out9<=tmpout;
			3'd10  :  out10<=tmpout;
			3'd11  :  out11<=tmpout;
			3'd12  :  out12<=tmpout;
			3'd13  :  out13<=tmpout;
			3'd14  :  out14<=tmpout;
			default :  out0<=tmpout;
		endcase
	end
endmodule
