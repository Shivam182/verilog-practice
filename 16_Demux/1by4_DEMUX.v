module demux(input [1:0] sel,input a, 

	     output reg o1, o2, o3, o4);



	always @(a or sel) begin    

	o1 = ~sel[1] & ~sel[0] & a;	
	o2 = ~sel[1] & sel[0] & a;

	o3 = sel[1] & ~sel[0] & a;

	o4 = sel[1] & sel[0] & a;


	end





endmodule 
