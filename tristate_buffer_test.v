module tristate_buffer_test;  
  reg [3:0]a;  
  reg en;  
  wire [3:0]y;  
  
  tristate_buffer tb(a,en,y); 
  
   
   initial begin  
      
        a=4'b0000; en=0;
     #5 a=4'b0000; en=1;
     #5 a=4'b1010; en=0;
     #5 a=4'b1010; en=1;
     #5 a=4'b0110; en=0; 
     #5 a=4'b0110; en=1;
     #10 $finish;  
   end  
  
   initial  
     $monitor ($time," en=%b Data=%b Out=%b", en,a,y);  
endmodule  
