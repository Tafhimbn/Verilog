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


// Structural / gatelevel modeling	

module d_ff(q,qbar,clk, d,rst);
	input d, rst, clk;
	output reg q;
	output qbar;	 
	
	always@(posedge clk)
		begin 
			if(!rst) 
			begin q = 0; end
			else 
			begin q = d;  end
		 end 
	
	assign qbar = ~q;
endmodule

module ring_counter(clk, rst,out);
	input clk, rst; 
	parameter n = 4;
	output [n-1:0] out;
	
	wire  q0, qn0, q1, qn1,q2,qn2, q3,qn3;
	
	d_ff df1 (q0, qn0, clk, q1, rst),
	     df2 (q1, qn1, clk, q2, rst),
	     df3 (q2, qn2, clk, q3, rst),
	     df4 (q3, qn3, clk, ~q0, rst);	 
	
   assign out = {q0, q1, q2, q3}; 
		 
endmodule
