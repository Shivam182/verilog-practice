module testbench;


reg a , b, sel;

wire out;


integer i;
	
	_MUX u0(.a(a), .b(b), .sel(sel), .out(out));


	initial begin    

	{a, b, sel} <= 0;
	
	$monitor("T=%0t, a=%0b, b,=%0b, sel=%0b, out=%0b", $time, a, b, sel, out);
	
	for(i = 0; i < 10; i = i+1) begin     

	#1 a<= $random;
		b <= $random;
		sel <= $random;




	end


	end



endmodule 
