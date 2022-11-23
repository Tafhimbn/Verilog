
// using datflow model

module mux2_1 (out,a,b,s);
	input a,b,s;
	output out;
    assign out = (~s&a)|(s&b);
endmodule  

/*
// Using behavioral model

module mux2_1 (out,a,b,s);
	input a,b,s;
	output reg out;
	
	always@(a,b,s)
		begin 
			if (s)
			   out = b;
			else 
			out = a;
		end
endmodule  

//_________________________________Gatelevel modeling  


module mux2_1 (out,a,b,s);
	input a,b,s;
	output out;
    wire  invs,out0,out1;
	
	not inv(invs,s);
	
	and and0(out0,a,invs);
	and and1(out1,b,s);
	
	or or_out (out,out0,out1);
endmodule  

*/
