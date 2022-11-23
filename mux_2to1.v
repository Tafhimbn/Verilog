/*
// using datflow model

module mux2_1 (out,a,b,s);
	input a,b,s;
	output out;
    assign out = (~s&a)|(s&b);
endmodule  


// Using behavioral model

module mux2_1 (out,a,b,s);
	input a,b,s;
	output reg out;
	always
		begin 
			if (s)
			   out = b;
			else 
			out = a;
		end
endmodule  
*/

//_________________________________Gatelevel modeling  


module mux2_1 (out,a,b,s);
	input a,b,s;
	output out;
	always
		begin 
			if (s)
			   out = b;
			else 
			out = a;
		end
endmodule  
