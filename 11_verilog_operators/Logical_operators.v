module logical_opr;

reg [7:0] data1;
reg [7:0] data2;



	initial begin 
	data1 = 45;
	data2 = 4;
	$display("%0d && %0d :::: %0b", data1, data2, data1 || data2); // this is not bitwise logical AND / OR but it checks wheather there is a value or not.
	
	data1 = 0;
	$display("%0d && %0d :::: %0d", data1, data2, data1 && data2);

	
	data1 = 9;
	$display("!%0d = %0b", data1, !data1);

	

	end




endmodule
