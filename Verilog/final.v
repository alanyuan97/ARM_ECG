module final(
    input [7:0] exp_diff,
    input inc_control,
    input [24:0] shifter,
    output reg[7:0] exp_out,
    output reg [24:0] frac_out
    );

	always@(*)
	begin
		if(inc_control > 0)
			begin
				exp_out = exp_diff + 8'b1;
				frac_out = shifter >> 1'b1;
			end

		else
			begin
				exp_out = exp_diff - 8'b0;
				frac_out = shifter << 1'b0;				
			end
	end
endmodule