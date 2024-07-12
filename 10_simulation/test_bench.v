module tb;

// declare the variables that are present in the module 
reg a,b,c,d,e;
wire z;
integer i;


// initiate the module to be tested 
assign_statements a1(.a(a), .b(b), .c(c), .d(d), .e(e), .z(z));


initial begin   

// at the begining initialize all the inputs to a common starting value.
a <= 0;
b <= 0;
c <= 0;
d <= 0;
e <= 0;



// using monitor to print any change 

$monitor("a=%0b, b=%0b, c=%0b, d=%0b, e=%0b, z=%0b", a, b, c, d, e, z);


// as there are 5 inputs . So 32 different input combinations.
for (i = 0; i < 32; i = i + 1) begin 

{a,b,c,d,e} = i;
#10; // delay of 10 units 



end




end






endmodule 