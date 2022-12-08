module d_ff_test;
	reg d,clk;
	wire q,qbar;
	
	d_ff dff(q,qbar,d,clk);
	
	initial
	begin 
		$monitor ($time,"Clock=%b,D=%b,Q=%b,Qbar=%b",clk,d,q,qbar);
		#5 clk=0; d=0; 
		#5 clk=1; d=0;
		#5 clk=0; d=1;  
		#5 clk=1; d=1; 
		#5 $finish;
	end			
endmodule
