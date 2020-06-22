module layer_4(reset,clk,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24,out25,out26,out27,out28,out29,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14);
	input reset, clk; 
	output reg [7:0] out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24,out25,out26,out27,out28,out29;
	input [7:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14;
	wire [127:0] w;
	wire [7:0] tmpout;
	reg [4:0] address;
	reg [3:0] count;

	initial address = 5'b0;
	initial count = 3'b000;

	ROM_params_4 rom_params(.address(address),.clock(clk),.q(w));
	node_4 node_in(clk,reset,tmpout,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,w[127:120],w[119:112],w[111:104],w[103:96],w[95:88],w[87:80],w[79:72],w[71:64],w[63:56],w[55:48],w[47:40],w[39:32],w[31:24],w[23:16],w[15:8],w[7:0]);

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
			3'd15  :  out15<=tmpout;
			3'd16  :  out16<=tmpout;
			3'd17  :  out17<=tmpout;
			3'd18  :  out18<=tmpout;
			3'd19  :  out19<=tmpout;
			3'd20  :  out20<=tmpout;
			3'd21  :  out21<=tmpout;
			3'd22  :  out22<=tmpout;
			3'd23  :  out23<=tmpout;
			3'd24  :  out24<=tmpout;
			3'd25  :  out25<=tmpout;
			3'd26  :  out26<=tmpout;
			3'd27  :  out27<=tmpout;
			3'd28  :  out28<=tmpout;
			3'd29  :  out29<=tmpout;
			default :  out0<=tmpout;
		endcase
	end
endmodule
