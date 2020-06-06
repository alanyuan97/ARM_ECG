module sig_out(clk,N1x, out1);
	input clk;
	input [23:0]N1x;
	output reg out1;
	
always@(posedge clk)
	begin
	if(N1x>0)
		begin
		out1<=1;
		end
	else
		begin
		out1<=0;
		end
	end
endmodule