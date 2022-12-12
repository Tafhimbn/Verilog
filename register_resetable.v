 // asynchronous reset
module register(clk,rst,d,q);
  input logic clk;
  input logic rst;
  input logic [3:0] d;
  output logic [3:0] q;
  
  always@(posedge clk, posedge rst)
    if (rst) q <= 4'b0;
     else q <= d;
  
endmodule


  
 // synchronous reset
module register(clk,rst,d,q);
  input logic clk;
  input logic rst;
  input logic [3:0] d;
  output logic [3:0] q;
  
 always@(posedge clk)
 if (reset) q <= 4'b0;
    else q <= d;
  
endmodule
