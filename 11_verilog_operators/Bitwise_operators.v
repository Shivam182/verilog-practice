module Bitwise_opr;

integer i, j;
reg data1 [4:0];
reg data2 [4:0];

	initial begin   

	data1[0]=  0; data2[0] = 0;
	data1[1] = 1; data2[1] = 1;
	data1[2] = 'X; data2[2] = 'X;
	data1[3] = 'Z; data2[3] = 'Z;
	


	for (i = 0; i < 4; i = i+1) begin    
		for(j =0; j < 4; j = j +1) begin    
		
			$display("data1[%0d] & data2[%0d] ::: %0d", i, j, data1[i] & data2[j]);
	
		end
	end

	$display(3 & 2); // this one gives bitwise AND result hence called a bitwise operator.


	end



endmodule
