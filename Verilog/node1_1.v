module node1_1(A0,A1,N1);
	input [31:0] A0;
	input [31:0] A1;
	output [31:0] N1;    //...187 A
	
	reg [31:0] N1;

	parameter [31:0] W0=32'b01000000000000000000000000000000;   
	parameter [31:0] W1=32'b01000000000000000000000000000000;   //...187 W 
	wire [31:0] in0;
	wire [31:0] in1;    //...187 in
	wire [31:0] sum1;   //need 188 sums (sum2,sum3,sum4...)
	wire [31:0] sumout;

	float_mult mult0(     
		.x(A0),
		.y(W0),
		.z(in0),
		); 
		
	float_mult mult1(     
		.x(A1),
		.y(W1),
		.z(in1),
		);                    //...187 mults
		


	float_adder add0(
		.a(in0),
		.b(in1),
		.Out(sum1),                 
		.Out_test(),
		.shift(),
		.c_out(),                              
		);                       
		
		float_adder add0(
		.a(in2),
		.b(in3),
		.Out(sum2),                 
		.Out_test(),
		.shift(),
		.c_out(),
		);                       //first 187 adders (round to even by making the last one add with 0) then 94 adders with sums, then 47 next layer (round to even), now 24, 12,6,3,2,1 final output call sumout 
										// in total we will need 188 sum variables
										
		float_adder add0(  //the final adder
		.a(sum),
		.b(sum),
		.Out(sumout),                 
		.Out_test(),
		.shift(),
		.c_out(),                              
		);
		
always@(*)
	begin
		if(sumout[31]==0)
			N1=sumout;
		else
			N1=32'd0;
	end
endmodule 