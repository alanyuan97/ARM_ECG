module exp_mux(
    input [7:0] exp_a,
    input [7:0] exp_b,
    input sel_c,
    output [7:0] exp_out
    );

	assign exp_out = (sel_c) ? exp_b : exp_a;
endmodule