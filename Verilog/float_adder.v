module float_adder(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] Out,
	 output [24:0] Out_test,
	 output [7:0] shift,
	 output c_out
    );
	wire [7:0] sm,exp_out_mux,exp_out_inc;
	wire sel_b,sel_a,inc,sel_c,sm_alu_sign;       //could make a new variable and decide which one is the output based off of input
	wire [24:0] fl_add_out,final_out;
	wire [22:0] frac_out;
	wire [31:0] Out_add;   //added wire
	wire [31:0] Out_sub0;  //a-b
	wire [31:0] Out_sub1;  //b-a
	assign c_out = Out_test[24:24]; 
	float_sm_alu sm_alu1(a[30:23],b[30:23],sm[7:0],sm_alu_sign);
	float_control_2 fc1(sm[7:0],c_out,sm_alu_sign,sel_b,sel_a,shift,inc,sel_c);
	float_add fl_add(a[22:0],b[22:0],shift[7:0],sel_b,sel_a,Out_test);
	exp_mux e1(a[30:23],b[30:23],sel_c,exp_out_mux);
	final f5(exp_out_mux,inc,Out_test,exp_out_inc,final_out);
	assign frac_out = final_out[22:0];        
	assign Out_add = {a[31:31],exp_out_inc,frac_out};

	// two subtractors a-b b-a
	float_subt float_subt0(
	.a_operand(a),
	.b_operand(b),
	.AddBar_Sub(0),
	.Exception(),
	.result(Out_sub0)
	);
	
	float_subt float_subt1(
	.a_operand(b),
	.b_operand(a),
	.AddBar_Sub(0),
	.Exception(),
	.result(Out_sub1),
	);
	
	always@(*)
		begin
			if(a[31]==b[31])
				begin
					Out<=Out_add;
				end
			else
				begin
					if(a[31]==0)
						begin
						Out<=Out_sub0;
						end
					else
						begin
						Out<=Out_sub1;
						end
				end
		end
	
		
endmodule