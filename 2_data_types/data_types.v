module data_types_();

	// net type 
	wire abc;
	wire a;
	wire b;
	wire c;
	
	
	// variables 
	reg m; // represents a 1 bit register or data storage element.
	
	reg [7:0] m1; // represents an 8-bit register 
	
	// other data-types 
	integer i1; // 32 bit wide variable to store integer values 

	time t1; // unsigned (positive) 64 bit variable to store time for debugging 
	
	realtime t2; // it stores a floating point time 

	real f1; // this can store floating point quantity can be assigned as same as integer or reg
	
	assign a = 1;
	assign b = 0;
	assign c = 1;
	assign abc = a | b & c;

	reg [11*8:1] str = "Hello World"; // 1 character is 8 bits and there are 11 such characters.

	initial begin 
	
	
	
	
	i1 = 32'hCAFE_4536;

	f1 = 0.12346876523;

	#10;
	t1 = $time;
	
	#12.23;
	t2 = $time;


	$display("i1 = 0x%0h", i1);
	$display("f1 = %0.3f", f1);
	$display("t1 = %0t", t1);
	$display("t2 = %0.3t", t2);

	

	$display("string = %s", str);

	
	
	end
endmodule 