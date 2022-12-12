module register(clk,rst,en,d,q);
  input logic clk;
  input logic rst;
  input logic en;
  input logic [3:0] d;
  output logic [3:0] q;
    // asynchronous reset
  always@(posedge clk, posedge rst)
    if (rst) q <= 4'b0;
    else if (en) q <= d;
endmodule
