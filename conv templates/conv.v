module conv(en, clk, out,in0, ..., in_kernel-1, bias)
	input en, clk;
	input [7:0] in0, ..., in_kernel-1,;
	output [7:0] out;
	wire [15:0] pr0, ..., pr_kernel-1;
	reg [n_bits-1:0] sum;//n_bits depends on size of kernel
	
	
	parameter [7:0] w_0_0;
	...
	parameter [7:0] w_0_kernel_size-1;
	.......
	parameter [7:0] w_nfilters-1_kernel_size-1;
	parameter [7:0] bias; //numer of bits might be different
	
	
	assign pr0 = in0*w0; //NEED TO PAD TO MAKE THEM 16 bits actually
	...
	assign prkernel-1 = inkernel-1*wkernel-1;
	
	always @(posedge clk) begin //should I use * or posedge clk????
	
		COPIES
		
	
		sum = pr0+...+pr_kernel-1+bias//need to pad everything, padding of bias might be different innit
		
		if(sum[n_bits-1]==0) 
			begin
				if(sumout[n-bits-1:13]!=x'b0)
					out<=8'd127;
				else
					begin
					if(sum[5]==1)
						out<=sum[13:6]+8'd1;
					else
						out<=sum[13:6];
					end
				end
			else
				out<=8'd0;
			end
	end
endmodule