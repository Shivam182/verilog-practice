module sixteen_bit_flop (
	input clk, 
	input rstn,
	input wr, 
	input sel,


	input [15:0] wr_data,
	output [15:0] rd_data
);

	reg [15:0] memory;



	always @(posedge clk) begin 


	if(!rstn) begin 

	memory <= 0;

	end
	else begin 

	if(sel & wr) begin 

	memory <= wr_data;

	end
	else begin 

	memory <= 0;
	
	end

	end



	end
	



	assign rd_data = (sel & ~wr) ? memory:0;

endmodule
