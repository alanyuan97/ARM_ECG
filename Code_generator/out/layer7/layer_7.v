module layer_7(reset,clk,out0,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9);
	input reset, clk; 
	output reg [7:0] out0;
	input [7:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9;
	wire [87:0] w;
	wire [7:0] tmpout;
	reg address;
	reg [2:0] count;

	initial address = 1'b0;
	initial count = 3'b0;

	ROM_params_7 rom_params(.address(address),.clock(clk),.q(w));
	node_7 node_in(clk,reset,tmpout,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,w[87:80],w[79:72],w[71:64],w[63:56],w[55:48],w[47:40],w[39:32],w[31:24],w[23:16],w[15:8],w[7:0]);

	always @(posedge clk) begin
		count <= count + 3'b001;
		if (count == 3'b000) begin
			if (address == 1'd0)
				address <= 1'd0;
			else
				address <= address + 1'd1;
			case (address)
				1'd0  :  out0<=tmpout;
				default :  out0<=tmpout;
			endcase
		end		
	end
endmodule