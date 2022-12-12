// dataflow modeling

module inv(a,y);
  input logic [3:0] a;
  output logic [3:0] y;
  assign y = ~a;
endmodule


// Behavioral modeling
module inv(a,y);
  input  [3:0] a;
  output reg [3:0] y;
  
  always@(a)
    for (int i=0;i<4;i++)
      begin
        y[i]=~a[i];
      end
endmodule
