module conv(en, clk, out, w0, ..., w_kernel-1, in0, ..., in_kernel-1, bias)
	input en, clk;
	input [7:0] w0, ..., w_kernel-1, in0, ..., in_kernel-1, bias;
	output [7:0] out;
	wire [15:0] pr0, ..., pr_kernel-1;
	reg [n_bits-1:0] sum;//n_bits depends on size of kernel
	
	//THINK I HAVE TO ADD REGISTER COPY OF INPUTS LIKE IN THE DENSE NODES
	assign pr0 = in0*w0; //NEED TO PAD TO MAKE THEM 16 bits actually
	...
	assign prkernel-1 = inkernel-1*wkernel-1;
	
	always @(posedge clk) begin //should I use * or posedge clk????
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