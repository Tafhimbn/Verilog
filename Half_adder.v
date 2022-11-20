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
