module two_dimensional_memory(
	input clk, 
	input rstn,
	input sel,
	input wr,
	
	input [1:0] address,
	
	input [15:0] wr_data,
	output [15:0] rd_data
);

// memory with 16-bit width and 4 bit height 
reg [15:0] mem [3:0];
integer i;


always @(posedge clk) begin 


if(!rstn) begin 

for(i = 0; i < 4; i = i+1) begin 

	mem[i] <= 0;

end

end
else begin 

if(sel & wr) begin  

mem[address] <= wr_data;

end

else begin 

mem[address] <= mem[address];

end

end



end




assign rd_data = (sel & ~wr) ? mem[address]:0;

endmodule