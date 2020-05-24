module float_sm_alu(
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] c,
	 output reg sign
    );
	
	always@(a or b)
	begin
		if(a >= b)
		begin
			c = a-b;
			sign = 1'b0;
		end
		else
		begin
			c=a-b;
			sign = 1'b1;
		end
	end
endmodule