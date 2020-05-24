module float_control_2(
    input [7:0] exp_diff,
    input c_out,
	 input sm_alu_sign,
    output reg sel_b,
    output reg sel_a,
    output reg [7:0] shift,
	 output reg inc,
	 output reg sel_c
    );
always@(exp_diff or sm_alu_sign or c_out)
	begin
		if(sm_alu_sign ==  0)
			begin
				sel_a = 1'b0; 				sel_b = 1'b1; 				sel_c = 1'b0; 				shift = exp_diff;
			end
		else
			begin
				sel_a = 1'b1; 				sel_b = 1'b0; 				sel_c = 1'b1;				shift = ~exp_diff +1;
		end
	end
	always@(c_out)
		begin
		if(c_out > 0)
				inc = 1'b1;
		else
				inc = 1'b0;
		end
endmodule