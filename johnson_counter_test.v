module johnson_counter_test();  
  parameter n = 4;    
  reg clk;  
  reg rstn;  
  wire [n-1:0] out;  
    
  johnson_counter jc (clk,rstn,out);  
  
  initial  
	  {clk, rstn} = 0; 
  always #5 clk = ~clk;  
    
  initial begin   
    $monitor ("Clock=%0t Out=%b", $time, out);  
    repeat (2) @(posedge clk);  
    rstn = 1;  
    repeat (17) @(posedge clk);  
    $finish;  
  end  
endmodule  
