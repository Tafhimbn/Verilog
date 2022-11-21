
// Dataflow modeling

module full_adder_n(a,b,cin,sum,cout);
	parameter N=4;	// number of bits
	input [N-1:0]a,b;
	input cin;
	output [N-1:0]sum;
	output cout;
	
			assign {cout,sum} = a+b+cin;
			// sum = a^b^cin;
			// cout = (a&b)|(b&cin)|(cin&a);
endmodule	 

/*
// BehavioraL Modeling 

module full_adder_n(a,b,cin,sum,cout);
	parameter N=4;	// number of bits
	input [N-1:0]a,b;
	input cin;
	output reg [N-1:0]sum;
	output reg cout;
	
	always @(a or b or cin)
	begin
		sum = a^b^cin;
		cout = (a&b)|(b&cin)|(cin&a);
	end	
endmodule	
*/


