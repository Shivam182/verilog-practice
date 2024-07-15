module testbench();

reg a , b;
wire sum, cout;
integer i;


half_adder ha(.a(a), .b(b), .cout(cout), .sum(sum));

	initial begin      

		a <= 0;
		b <= 0;

		
		$monitor("a=%0b, b=%0b, sum=%0b, cout=%0b", a, b, sum, cout);
		
		for(i = 0; i < 4; i = i+1) begin     

			{a, b} = i;
			#10;
		
		end



	end


endmodule 
