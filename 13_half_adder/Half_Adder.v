module half_adder(input a, b, 
output reg sum, cout);


always @(a or b) begin 

assign {cout, sum} = a+b;



end





endmodule