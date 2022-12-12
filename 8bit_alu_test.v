`timescale 1ns / 1ps  

module alu_test;

  reg [7:0] a,b;                              
  reg [3:0] alu_sel;             
  wire [7:0] alu_out;   
  wire cout; 
  
  alu alu_tb(a,b,alu_sel,alu_out,cout);
  
  initial 
    begin
      a = 8'b11001000;  // Decimal 200
      b = 8'b00111100;  // Decimal 6

      alu_sel = 4'b0000;
      
      for (int i=0;i<=15;i=i+1)
      begin
        if(i==0)
          #10;
          else
           alu_sel = alu_sel + 4'b0001;
           #10;
        end;
    end
  
  initial  
    $monitor ($time," A=%b, B=%b, Selector=%b, ALU Output=%b, carry out =%b ",a,b,alu_sel,alu_out,cout); 
  
endmodule
