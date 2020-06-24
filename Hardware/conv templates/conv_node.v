module conv_node(en, clk, out_0, ..., out_nfilters-1, in_0_0, ..., in_0_kernel_size-1, ......, in_nfilters-1_0, ..., in_nfilters-1_kernel_size-1)
	input en, clk;
	input [7:0] in_0_0, ..., in_0_kernel_size-1, ......, in_nfilters-1_0, ..., in_nfilters-1_kernel_size-1;
	output out_0, ..., out_nfilters-1;
	
	conv c0(en, clk, out_0, in_0_0, ..., in_0_kernel-1)//name of conv might have suffix depending on layer
	...
	conv c0(en, clk, out_0, in_nfilters-1_0, ..., in_nfilters-1_kernel-1)
endmodule