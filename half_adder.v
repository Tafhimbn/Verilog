// Dataflow modeling

module half_adder(a,b,sum,cout);
	input a,b;
	output sum,cout;
	
	assign sum = a^b;
	assign cout = (~a&b)|(a&~b);  
	
endmodule

/*
// Behavioral modeling 

module half_adder(a,b,sum,cout);
	input a, b;
	output reg sum, cout;
always@(a,b)
	begin
	 sum = a^b;
	 cout = a & b;
	end
endmodule

	

//Structural / gatelevel modeling

module half_adder(a,b,sum,cout);
	input a, b;
	output sum, cout;

	xor x_ab(sum,a,b);
	and and_ab(cout,a,b);

endmodule		

*/
	
