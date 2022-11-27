`timescale 1ns/1ps
module ha_testbench;
	reg a,b;
	wire sum,cout;
	half_adder HA (a,b,sum,cout);
	initial
	begin 
		$monitor ($time,"a=%b,b=%b,sum=%b,cout=%b",a,b,sum,cout);
		#5 b=0; a=0;
		#5 b=0; a=1; 
		#5 b=1; a=0;
		#5 b=1;	a=1;
		#5 $finish;
	end			
endmodule
