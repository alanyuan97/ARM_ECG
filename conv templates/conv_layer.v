module conv_layer(en, clk, in_0_0, ..., in_0_in-1, ..., in_fin-1_in-1, out_0_0, ..., out_0_out-1, ..., out_fout-1_out-1)
	input en, clk;
	input [7:0] in_0_0, ..., in_0_in-1, ..., in_fin-1_in-1;
	output [7:0] out_0_0, ..., out_0_out-1, ..., out_fout-1_out-1;
	
	//check if this is how stride works
	conv_node cn0(en, clk, out_0_0, ..., out_nfilters-1_0, in_0_0, ..., in_0_kernel_size-1, ......, in_nfilters-1_0, ..., in_nfilters-1_kernel_size-1)
	conv_node cn0(en, clk, out_0_stride, ..., out_nfilters-1_stride, in_0_strde, ..., in_0_kernel_size-1+str, ......, in_nfilters-1_0, ..., in_nfilters-1_kernel_size-1)
    ...
	conv_node cn0(en, clk, out_0_last, ..., out_nfilters-1_last, in_0_last, ..., in_0_kernel_size-1+last, ......, in_nfilters-1_last, ..., in_nfilters-1_kernel_size-1+last)
	
	//should add pooling
endmodule