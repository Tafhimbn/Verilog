// Dataflow modeling
module half_sub (a,b,diff,borr);
	input a,b;
	output diff, borr; 
	
	assign diff = a^b;
	assign borr = (~a)&b;

endmodule

/*
// Behavioral modeling

module half_sub (a,b,diff,borr);
	input a,b;
	output reg diff, borr; 
	
	always@(a,b)
		begin
		diff = a^b;
		borr = (~a)&b;
		end
endmodule
	

// Structural / Gate-level modeling

module half_sub (a,b,diff,borr);
	input a,b;
	output diff, borr; 
	wire inv_a;
	
	xor xor_ab (diff,a,b);	
	
	not not_a (inv_a,a);
	
	and and_nab (borr,inv_a,b);
	
endmodule
	
*/	
