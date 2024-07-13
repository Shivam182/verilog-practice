module Equality_opr;

reg [7:0] data1;
reg [7:0] data2;


	initial begin   
	 //data1 = 45; 
	 //data2 = 9; // if anyone of the data is X then output is not X but 0, However if both X then output is X.
	 $display("%0d === %0d :::: %0b", data1, data2, data1 === data2);
	


	end





endmodule