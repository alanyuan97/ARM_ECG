module layer_1(clk,N1,N2,N3,N4,N5)           //consider inputs, no inputs for the first layer as we hardcode it in?
	genvar i;
		generate
			for (i = 1; i < 6; i = i + 1) begin: test      //number of nodes in the for loop
				always @(posedge sysclk) begin
					node1_i node1_i(     
						.A0(),
						.A1(),
						.A2(),
						.N1(),			//also need to generate all of the instantiations
						);
        end
    end
endgenerate


              //might just be easier to hardcode the files in, much more simple and intiative

node1_1 node1_1(     
						.A0(R0),
						.A1(R1),
						.A2(R2),
						.A3(R3),
						.A4(R4),  //...187
						.N1(),			//also need to generate all of the instantiations
						);
						
node1_2 node1_2(     
						.A0(R0),
						.A1(R1),
						.A2(R2),
						.A3(R3),
						.A4(R4),  //...187
						.N1(),			//also need to generate all of the instantiations
						);
				  
				  


endmodule 