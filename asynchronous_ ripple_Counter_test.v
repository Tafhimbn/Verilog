
module as_count_test;  
   reg clk, rstn;  
   wire [3:0] count;  
  

   async_counter  ac (clk, rstn,count);
  
   always #5 clk = ~clk;  
  
   initial begin  
     $monitor ($time,"CLK = %b, reset =%b, Q=%b,",clk,rstn,count);
	   rstn <= 0;  
      clk <= 0;  
      repeat (4) @ (posedge clk);  
      rstn <= 1;  
  
      repeat (25) @ (posedge clk);  
      $finish;  
   end  


endmodule  
