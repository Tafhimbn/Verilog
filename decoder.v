 //__________________________________________Dataflow modeling

module decoder_2_4 (a,b,en,out);
	input a,b,en;
	output [0:3]out;
	wire a_bar, b_bar;
	
	assign a_bar = ~a;
	assign b_bar = ~b;
		
	
	assign out[0] = en & a_bar & b_bar;
	assign out[1] = en & a & b_bar;
	assign out[2] = en & a_bar & b;
	assign out[3] = en & a & b;	

endmodule


//__________________________________________Structural / gatelevel modeling

module decoder_2_4 (a,b,en,out);
	input a,b,en;
	output [0:3]out;
	wire a_bar, b_bar;
	
	not na (a_bar,a),
	    nb (b_bar,b);
		
	
	and g1 (out[0],en,a_bar,b_bar),
	    g2 (out[1],en,a,b_bar),
	    g3 (out[2],en,a_bar,b),
	    g4 (out[3],en,a,b);	

endmodule  
