module layer_3(reset,clk,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9);
	input reset, clk; 
	output reg [7:0] out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14;
	input [7:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9;
	wire [87:0] w;
	wire [7:0] tmpout;
	reg [3:0] address;
	reg [2:0] count;

	initial address = 4'b0;
	initial count = 3'b0;

	ROM_params_3 rom_params(.address(address),.clock(clk),.q(w));
	node_3 node_in(clk,reset,tmpout,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,w[87:80],w[79:72],w[71:64],w[63:56],w[55:48],w[47:40],w[39:32],w[31:24],w[23:16],w[15:8],w[7:0]);

	always @(posedge clk) begin
		count <= count + 3'b001;
		if (count == 3'b000) begin
			if (address == 4'd14)
				address <= 4'd0;
			else
				address <= address + 4'd1;
			case (address)
				4'd0  :  out0<=tmpout;
				4'd1  :  out1<=tmpout;
				4'd2  :  out2<=tmpout;
				4'd3  :  out3<=tmpout;
				4'd4  :  out4<=tmpout;
				4'd5  :  out5<=tmpout;
				4'd6  :  out6<=tmpout;
				4'd7  :  out7<=tmpout;
				4'd8  :  out8<=tmpout;
				4'd9  :  out9<=tmpout;
				4'd10  :  out10<=tmpout;
				4'd11  :  out11<=tmpout;
				4'd12  :  out12<=tmpout;
				4'd13  :  out13<=tmpout;
				4'd14  :  out14<=tmpout;
				default :  out0<=tmpout;
			endcase
		end		
	end
endmodule