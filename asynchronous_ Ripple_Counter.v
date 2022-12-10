// Asynchronous counter using D FF

module d_ff(q,qbar,clk, d,rst);
	input d, rst, clk;
	output reg q;
	output qbar;	 
	
	always@(posedge clk or negedge rst)
		begin 
			if(!rst) 
			begin q = 0; end
			else 
			begin q = d;  end
		 end 
	
	assign qbar = ~q;
endmodule



module async_counter(clk, rst,out);
	input clk, rst; 
	output [3:0] out;
	
	 wire  q0, qn0, q1, qn1,q2,qn2, q3,qn3;
	
	d_ff df1 (q0, qn0, clk, qn0, rst),
	     df2 (q1, qn1, q0,  qn1, rst),
	     df3 (q2, qn2, q1,  qn2, rst),
	     df4 (q3, qn3, q2,  qn3, rst);	 
	
    assign out = {q3, q2, q1, q0}; 
		 
endmodule
