module sr_latch_test;
	reg s,r;
	wire q,qbar;
	
	sr_latch sr (q, qbar,s,r);
	
	initial
	begin 
		$monitor ($time,"S=%b,R=%b,Q=%b,Qbar=%b",s,r,q,qbar);
		#5 s=0;r=0; 
		#5 s=1; r=0; 
		#5 s=0;r=1; 
		#5 s=1; r=1; 
		#5 $finish;
	end			
endmodule 
