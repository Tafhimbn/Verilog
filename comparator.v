// Dataflow modeling

module com(a,b,alb,agb,aeb);
	input a,b;
	output alb,agb,aeb;
	
	assign alb = ~a&b;
	assign agb = a&~b;  
	assign aeb = a&b|(~a&~b);
endmodule

/*
// Behavioral modeling 

module com(a,b,alb,agb,aeb);
	input a,b;
	output reg alb,agb,aeb;
	
always@(a,b)
	begin
	 alb = ~a&b;
	 agb = a&~b;
	 aeb = a&b|(~a&~b);
	end
endmodule



//Structural / gatelevel modeling

module com(a,b,alb,agb,aeb);
	input a,b;
	output alb,agb,aeb;
	wire inva, invb;
	
	not not_a (inva,a),
	    not_b (invb,b);
	
	and and_alb (alb,inva,b),
	    and_agb (agb,a,invb),
	    and_aeb (aeb,a,b);

endmodule		

*/
	
