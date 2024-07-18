module counter(input clk, input rstn, output reg [3:0] op);

always @(posedge clk) begin      

	if(!rstn) begin     

	op <= 0;
	end
	else begin      

	if(op==10) begin      
	
	op <= 0;
	
	end else begin     
	op <= op +1;
	end



	end




end



endmodule 
