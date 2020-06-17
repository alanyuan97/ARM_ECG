module layer_4(reset,clk,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24,out25,out26,out27,out28,out29,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14);
	input reset, clk; 
	output reg [7:0] out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24,out25,out26,out27,out28,out29;
	input [7:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14;
	wire [127:0] w;
	wire [7:0] tmpout;
	reg [4:0] address;
	reg [2:0] count;

	initial address = 5'b0;
	initial count = 3'b0;

	ROM_params_4 rom_params(.address(address),.clock(clk),.q(w));
	node_4 node_in(clk,reset,tmpout,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,w[127:120],w[119:112],w[111:104],w[103:96],w[95:88],w[87:80],w[79:72],w[71:64],w[63:56],w[55:48],w[47:40],w[39:32],w[31:24],w[23:16],w[15:8],w[7:0]);

	always @(posedge clk) begin
		count <= count + 3'b001;
		if (count == 3'b000) begin
			if (address == 5'd29)
				address <= 5'd0;
			else
				address <= address + 5'd1;
			case (address)
				5'd0  :  out0<=tmpout;
				5'd1  :  out1<=tmpout;
				5'd2  :  out2<=tmpout;
				5'd3  :  out3<=tmpout;
				5'd4  :  out4<=tmpout;
				5'd5  :  out5<=tmpout;
				5'd6  :  out6<=tmpout;
				5'd7  :  out7<=tmpout;
				5'd8  :  out8<=tmpout;
				5'd9  :  out9<=tmpout;
				5'd10  :  out10<=tmpout;
				5'd11  :  out11<=tmpout;
				5'd12  :  out12<=tmpout;
				5'd13  :  out13<=tmpout;
				5'd14  :  out14<=tmpout;
				5'd15  :  out15<=tmpout;
				5'd16  :  out16<=tmpout;
				5'd17  :  out17<=tmpout;
				5'd18  :  out18<=tmpout;
				5'd19  :  out19<=tmpout;
				5'd20  :  out20<=tmpout;
				5'd21  :  out21<=tmpout;
				5'd22  :  out22<=tmpout;
				5'd23  :  out23<=tmpout;
				5'd24  :  out24<=tmpout;
				5'd25  :  out25<=tmpout;
				5'd26  :  out26<=tmpout;
				5'd27  :  out27<=tmpout;
				5'd28  :  out28<=tmpout;
				5'd29  :  out29<=tmpout;
				default :  out0<=tmpout;
			endcase
		end		
	end
endmodule
