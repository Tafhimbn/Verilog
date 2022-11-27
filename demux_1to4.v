
// using datflow model

module demux4_1 (out,data,s);
	input data;
	input [1:0] s;
	output [3:0]out; 
	
    assign out[0] = (~s[0] & ~s[1] & data);	 
	assign out[1] = (s[0] & ~s[1] & data);
	assign out[2] = (~s[0] & s[1] & data);
	assign out[3] = (s[0] & s[1] & data);	

endmodule  

/*
// Using behavioral model
module demux4_1 (out,data,s);
	input data;
	input [1:0] s;
	output reg [3:0]out; 

	always@(data,s)
		begin 
			case(s)
				0: begin out[0] = data;out[1] = 0;   out[2] = 0;   out[3] = 0;    end
				1: begin out[0] = 0;   out[1] = data;out[2] = 0;   out[3] = 0;    end
			    2: begin out[0] = 0;   out[1] = 0;   out[2] = data;out[3] = 0;    end
				3: begin out[0] = 0;   out[1] = 0;   out[2] = 0;   out[3] = data; end
		    endcase
		end
endmodule  


//_________________________________Gatelevel modeling  

module demux4_1 (out,data,s);
	input data;
	input [1:0] s;
	output [3:0]out; 
    wire  invs0,invs1,out0,out1;
	
	not inv0(invs0,s[0]);
	not inv1(invs1,s[1]);
	
	and and0(out[0],data,invs1,invs0);
	and and1(out[1],data,invs1,s[0]);
	and and2(out[2],data,s[1],invs0);
	and and3(out[3],data,s[1],s[0]);
	
endmodule  

*/
