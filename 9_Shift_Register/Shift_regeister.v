`include "../8_D_flip_flop/D_FF.v"

module shift_reg(
	input clk, 
	input D,
	output k,
	input rstn);

	wire [2:0] q_net;	

	// 3-bit shift register
	
	d_ff d1 (.D(D) , .clk(clk), .rstn(rstn), .Q(q_net[0]));
	d_ff d2 (.D(q_net[0]), .clk(clk), .rstn(rstn), .Q(q_net[1]));
	d_ff d3 (.D(q_net[1]), .clk(clk), .rstn(rstn), .Q(q_net[2]));
	





endmodule