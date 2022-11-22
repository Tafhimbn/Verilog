
//______________________________________Dataflow modeling

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

/*

// _____________________________________Behavioral modeling 

module decoder_2_4 (a,b,en,out);
	input a,b,en;
	output reg [0:3]out;
	reg a_bar, b_bar;
	
	always@(a,b,en)
		begin
			a_bar = ~a;
			b_bar = ~b;
		
			out[0] = en & a_bar & b_bar;
			out[1] = en & a & b_bar;
			out[2] = en & a_bar & b;
			out[3] = en & a & b;	
	   	  end
endmodule


//_________________________________Structural / gatelevel modeling

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
*/
