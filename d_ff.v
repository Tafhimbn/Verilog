
// Dataflow modeling

module d_ff(q,qbar,d,clk);
	input d, clk;
	output wire q,qbar;	 
	
	assign q = ~((~(clk & d)) & qbar);
	assign qbar = ~((~(clk & (~d))) & q);
	
endmodule 
/*
// Behavioral modeling

module d_ff(q,qbar,d,clk);
	input d,clk;
	output reg q,qbar;	 
	
	always@(posedge clk)
		begin
	     q = d;
		 qbar = ~d;
		 end
endmodule


// Gatelevel / Structural modeling

module d_ff(q,qbar,d,clk);
	input d, clk;
	output wire q,qbar;	 
	wire inv_d, s_bar, r_bar;
	
	not n1 (inv_d,d);
	nand na1 (s_bar, clk, d);
	nand na2 (r_bar,clk,inv_d);
	nand na3 (q, s_bar, qbar);
	nand na4 (qbar, r_bar, q);
	
endmodule 
*/
