`timescale 1ns/1ps
module ha_testbench;
	reg a,b;
	wire diff,borr;	   
	
	half_sub HS (a,b,diff,borr); 
	
	initial
	begin 
		$monitor ($time,"a=%b,b=%b,diff=%b,borr=%b",a,b,diff,borr);
		#5 b=0; a=0;
		#5 b=0; a=1; 
		#5 b=1; a=0;
		#5 b=1;	a=1;
		#5 $finish;
	end			
endmodule
