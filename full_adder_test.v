`timescale 1ns/1ps
module testbench;
	reg a,b,c;
	wire sum, cout;
	full_adder FA(sum,cout,a,b,c);
	initial
	begin 
		$monitor ($time,"a=%b,b=%b,c=%b,sum=%b,cout=%b",a,b,c,sum,cout);
		#5 c=0; b=0; a=0;
		#5 b=0; a=1; 
		#5 b=1; a=0;
		#5 b=1;	a=1;
		#5 c=1;	b=0; a=0;
		#5 b=0; a=1; 
		#5 b=1; a=0;
		#5 b=1;	a=1;
		#5 $finish;
	end			
endmodule
