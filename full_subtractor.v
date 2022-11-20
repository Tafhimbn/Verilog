
// Dataflow modeling
module half_sub (a,b,bin,diff,borr);
	input a,b, bin;
	output diff, borr;  
	
		assign diff = a^b^bin;
		assign borr = ((~a)&b)|((~(a^b))&bin);

endmodule
/*

// Behavioral modeling
module half_sub (a,b,bin,diff,borr);
	input a,b, bin;
	output reg diff, borr; 
	
	always@(a,b,bin)
		begin
		diff = a^b^bin;
		borr = ((~a)&b)|((~(a^b))&bin);
		end
endmodule

// Structural / Gate-level modeling
module half_sub (a,b,bin,diff,bout);
	input a,b,bin;
	output diff, bout; 
	wire inv_a, x_ab, xn_ab, and_bixnab, and_inab;
	
	not not_a (inv_a,a),
	    not_xab (xn_ab,x_ab);
	
	xor xor_ab (x_ab,a,b),
	    xor_abbi (diff,x_ab,bin);	
	
	and and_nab (and_inab,inv_a,b),
	    and_nabi (and_bixnab,xn_ab,bin); 
	 
	or or_bo (bout,and_inab,and_bixnab);
	
endmodule
*/	

