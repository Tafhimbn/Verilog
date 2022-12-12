module inv_test;  
  reg [3:0]a; 
  wire [3:0]y;  
  
  inv in(a,y); 
 
   initial begin  
      
        a=4'b0000;
     #5 a=4'b1010;
     #5 a=4'b1011;
     #5 a=4'b1111;
     #10 $finish;  
   end  
  
   initial  
     $monitor ($time,"Data=%b Out=%b",a,y);  
endmodule
