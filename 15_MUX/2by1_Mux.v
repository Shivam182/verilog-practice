module mux(input sel1, i1, i2, 
	   output reg Y);


always @(i1 or i2 or sel1) begin      

	
	Y = (sel1)? i1:i2;
	



end








endmodule
