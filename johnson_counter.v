// Synchronous johnson counter
// Behavioral modeling

module johnson_counter(clk,rstn,out); 
    input clk;                  
    input rstn;
	parameter n = 4;
    output reg [n-1:0] out;  
    
   
  always @ (posedge clk) 
	  begin  
      if (!rstn) //when Reset is high  
         out = 1;  //The Count value is reset to "0001"
      else 
		  begin  
            out[n-1] <= ~out[0];
		   for (int i = 0; i < n-1; i=i+1)
			   begin  
               out[i] <= out[i+1];  
               end  
          end  
       end  
endmodule  
