module node1_1( 
	clock,
	A1,
	A2,   //187 A
	N1   
	);
	
	input clock;
	input [31:0] A1,A2;  //...187, you can list this down if you like or across
	output [31:0] N1;    //include reg?
	
	always@(*)
	
	fp_mult  mult1(                    //http://dawsonjon.github.io/Chips-2.0/language_reference/interface.html#interconnect-bus-transaction   this explains how the bus system works                         
        .input_a  (A1),  //dataset
        .input_b  (W1),  //weight
        .input_a_stb (1),
        .input_b_stb (1),
        .output_z_ack  (1),
        .clk (clock),
        .rst (0),
        .output_z (in1),   //output
        .output_z_stb  (1),
        .input_a_ack  (1),
        .input_b_ack  (1)  );
		  
	fp_mult  mult2(             //this name multx needs to increment
        .input_a  (A2),  
        .input_b  (W2),
        .input_a_stb (1),
        .input_b_stb (1),
        .output_z_ack  (1),
        .clk (clock),
        .rst (0),
        .output_z (in2),   
        .output_z_stb  (1),
        .input_a_ack  (1),
        .input_b_ack  (1) ); //...187
	
	
	//summing part
	fp_add add1(
        .input_a(in1),  //input 1
        .input_b(in2),  //input 2
        .input_a_stb(1),
        .input_b_stb(1),
        .output_z_ack(1),
        .clk(clock),
        .rst(0),
        .output_z(sum1),         //output sum1
        .output_z_stb(1),
        .input_a_ack(1),
        .input_b_ack(1) );
		  
	fp_add add2(
        .input_a(sum1),   //now do sum1+in3
        .input_b(in3),  
        .input_a_stb(1),
        .input_b_stb(1),
        .output_z_ack(1),
        .clk(clock),
        .rst(0),
        .output_z(sum1),   //output sum1      
        .output_z_stb(1),
        .input_a_ack(1),
        .input_b_ack(1) ); //...187
		  
	
	
	
	begin
		if(sum1<sat)   //still need to change this ReLu for fp
			N1=sum1;
		else
			N1=sat;
	end