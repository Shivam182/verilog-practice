module replication_operator;

	reg [1:0] a;
	reg [2:0] b;

	initial begin      

	a <= 2;
	b <= 4;
	// Note that u cannot use variables as replication constants.
	#10; // try without this delay 
	$display("a=%b, b=%b, res=%b", a, b, {{2{a}}, {3{b}}});



	end 






endmodule 