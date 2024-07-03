module scalar_and_vectors(); 
	
	// without range been specified "net" & "reg" are 1-bit.
	// but as their range is specified they become vector.

	reg [31:0] addr;

	//addr[80] = 0; error occured 

	
	integer i;

		
	initial begin 
	addr[23:16] = 8'hAB;

	addr = 32'h2345_ABCD;
	
	// we will show data in group of 8 bits starting from LSB.
	 for (i = 0; i < 4; i = i+1) begin 
	
	  $display("data[8*%0d : 8] = 0x%0h",i, addr[8*i +: 8]);
		
	 end

	end


endmodule 