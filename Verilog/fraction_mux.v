module fraction_mux(
    input [23:0] a,
    input [23:0] b,
    input sel,
    output [23:0] Out
    );
	assign Out = (sel) ? b : a;
endmodule