module testbench;

reg [1:0] sel;
reg a;
wire o1, o2, o3, o4;
integer i;


	demux dmx(.sel(sel), .a(a), .o1(o1), .o2(o2), .o3(o3), .o4(o4));

	initial begin     

	a <= 0;
	sel <= 2'b00;
	

	for(i =0;i < 8; i = i+1) begin    

	{a, sel} = i;


	#10;
	end



	end





endmodule
