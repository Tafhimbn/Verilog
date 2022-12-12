module register(clk,d,q);  // register basically D-flipflop
  input logic clk;
  input logic [3:0] d;
  output logic [3:0] q;
  
 always_ff @(posedge clk)
   q <= d;
endmodule
