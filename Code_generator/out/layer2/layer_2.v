module layer_2(reset,clk,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,in0,in1,in2,in3,in4);
	input reset, clk; 
	output reg [7:0] out0,out1,out2,out3,out4,out5,out6,out7,out8,out9;
	input [7:0] in0,in1,in2,in3,in4;
	wire [47:0] w;
	wire [7:0] tmpout;
	reg [3:0] address;
	reg [3:0] count;

	initial address = 4'b0;
	initial count = 3'b000;

	ROM_params_2 rom_params(.address(address),.clock(clk),.q(w));
	node_2 node_in(clk,reset,tmpout,in0,in1,in2,in3,in4,w[47:40],w[39:32],w[31:24],w[23:16],w[15:8],w[7:0]);

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
			default :  out0<=tmpout;
		endcase
	end
endmodule
