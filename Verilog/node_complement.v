module node_complement(reset,clk,N1x,A0x,A1x,A2x,A3x,A4x); //..187
	input clk;
	input reset;
	input signed[7:0] A0x;
	input signed[7:0] A1x;
	input signed[7:0] A2x;
	input signed[7:0] A3x;
	input signed[7:0] A4x; //..187
	output reg [7:0] N1x; 
	

	parameter signed[7:0] W0x=8'sb00000101;   //5
	parameter signed[7:0] W1x=8'sb00000011;   //3
	parameter signed[7:0] W2x=8'sb00000000;   //0
	parameter signed[7:0] W3x=8'sb00000001;	  //1
	parameter signed[7:0] W4x=8'sb00000000;	  //0  //..187
	parameter signed[7:0] B0x=8'sb11111111;   //-1
	wire signed[15:0] in0x;
	wire signed[7:0] in1x;
	wire signed[7:0] in2x;
	wire signed[7:0] in3x;
	wire signed[7:0] in4x;  //..187
	reg signed[7:0] sum0x;
	reg signed[7:0] sum1x;
	reg signed[7:0] sum2x;
	reg signed[7:0] sum3x;  //..187
	reg [7:0] sumout;
	
	
	reg signed [7:0]A0x_c;   //copy of the input required
	reg signed [7:0]A1x_c;
	reg signed [7:0]A2x_c;
	reg signed [7:0]A3x_c;
	reg signed [7:0]A4x_c;  //..187
	
	
	assign in0x=A0x_c*W0x;   //multiplication
	assign in1x=A1x_c*W1x;
	assign in2x=A2x_c*W2x;
	assign in3x=A3x_c*W3x;
	assign in3x=A3x_c*W3x; //..187
	
always@(posedge clk)
	begin
	
	if(reset) begin  //reset all reg to zero
		N1x<=8'b0;
		sumout<=8'b0;
		
		A0x_c<=8'b0;  //..187
		sum0x<=8'b0;  //..187
	end
	
	A0x_c<=A0x; //input copy
	A1x_c<=A1x;
	A2x_c<=A2x;
	A3x_c<=A3x;
	A4x_c<=A4x; //..187
	
	sumout<=in0x+in1x+in2x+in3x+in4x+B0x;
	
	if(sumout[7]==0)  //ReLu
		begin
		N1x<=sumout;
		end
	else
		begin
		N1x<=8'b0;
		end 
	end  
endmodule 