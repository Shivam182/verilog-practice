module verilog_arrays();
	
        // verilog arrays can be formed by "net" or "variables" like reg & input , output.
	
	reg y1 [11:0]; // represents an array of 12 bit deep and 1 bit wide.
	reg [7:0] y2 [3:0]; // represents an array vector of 8 bit width and and each being 4 bit deep.

	// Visualize ::: https://www.chipverify.com/images/verilog/memory.png

        reg [7:0] y3 [0:1][3:0]; // width 8 bit and 4 columns + 2 rows.
	

	

	integer i, j;
	
	// note that here we can get into unmarked memory also shown below , hence giving us garbage value.
	initial begin 
		y2[0] = 8'hAB;
	        y2[2] = 8'h12;
		y3[1][2] = 8'hcc;
		y3[3][0] = 8'h23; // this memory location should not exist for this y3 but still we are able to access and modify it. how ever we will not be able to print it. 
		y3[0][0] = 8'h90;

		for(i = 0; i < 4; i = i + 1) begin 
			for(j = 0; j < 3; j = j + 1) begin
				$display("y3[%0d][%0d] = 0x%0h",i, j, y3[i][j]);
			end		
		end

	end
	
	
endmodule 