// using datflow model

module demux2_1 (out0,out1,data,s);
	input data,s;
	output out0,out1; 
	
    assign out0 = (~s & data);	 
	assign out1 = (s & data);

endmodule  
/*

// Using behavioral model
module demux2_1 (out0,out1,data,s);
	input data,s;
	output reg out0,out1; 

	
	always@(data,s)
		begin 
			case(s)
				0: begin out0 = data; out1 = 0; end
				1: begin out0 = 0;    out1 = data; end
		    endcase
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
