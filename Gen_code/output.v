module node1_1(A0,A1);
	input [31:0] A0;
	input [31:0] A1;
	input clock;
	output [31:0] N1;

	parameter [31:0] W0=-0.18981343507766724;
	parameter [31:0] W1=0.39700618386268616;
	wire [31:0] in0;
	wire [31:0] in1;

	fp_mult mult0(
		.input_a  (A0),
		.input_b  (W0),
		.input_a_stb (1),
		.input_b_stb (1),
		.output_z_ack  (1),
		.clk (clock),
		.rst (0),
		.output_z (in0),
		.output_z_stb  (1),
		.input_a_ack  (1),
		.input_b_ack  (1) ); 

	fp_mult mult1(
		.input_a  (A1),
		.input_b  (W1),
		.input_a_stb (1),
		.input_b_stb (1),
		.output_z_ack  (1),
		.clk (clock),
		.rst (0),
		.output_z (in1),
		.output_z_stb  (1),
		.input_a_ack  (1),
		.input_b_ack  (1) ); 

	fp_add add0(
		.input_a  (in0),
		.input_b  (in1),
		.input_a_stb (1),
		.input_b_stb (1),
		.output_z_ack  (1),
		.clk (clock),
		.rst (0),
		.output_z (S0),
		.output_z_stb  (1),
		.input_a_ack  (1),
		.input_b_ack  (1) ); 


	begin 
		if(sum1<sat)
			N1=sum1;
		else
			N1=sat;
	end
endmodule
