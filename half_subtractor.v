// Structural / Gate-level modeling

module half_sub (a,b,diff,borr);
	input a,b;
	output diff, borr; 
	wire inv_a;
	
	xor xor_ab (diff,a,b);	
	
	not not_a (inv_a,a);
	
	and and_nab (borr,inv_a,b);
	
endmodule
	
