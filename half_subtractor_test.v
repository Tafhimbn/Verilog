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


/*
Output:

0a=x,b=x,diff=x,borr=x
5a=0,b=0,diff=0,borr=0
10a=1,b=0,diff=1,borr=0
15a=0,b=1,diff=1,borr=1
20a=1,b=1,diff=0,borr=0

*/
