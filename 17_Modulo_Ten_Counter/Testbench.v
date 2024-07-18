module testbench;


reg clk, rstn ;
wire [3:0] out;



counter ctr(.clk(clk), .rstn(rstn), .op(out));

always #10 clk = ~clk;

initial begin 

$monitor("out=%0d", out);


{clk, rstn} <= 0;


#10 rstn <= 1;
#450 $finish;











end 









endmodule
