`timescale 1ns/1ps
module fs_testbench;
	reg a,b, bin;
	wire diff, bout;	   
	
	half_sub HS (a,b,bin,diff,bout); 
	
	initial
	begin 
		$monitor ($time,"a=%b,b=%b,bin=%b ,diff=%b,borr=%b",a,b,bin,diff,bout);
		#5 bin=0; b=0; a=0;
		#5 bin=1; b=0; a=0;
		#5 bin=0; b=1; a=0;
		#5 bin=1; b=1; a=0;
		#5 bin=0; b=0; a=1;
		#5 bin=1; b=0; a=1;
		#5 bin=0; b=1; a=1;
		#5 bin=1; b=1; a=1;
		#5 $finish;
	end			
endmodule


/*
Output:
0 a=x,b=x,bin=x ,diff=x,borr=x
5 a=0,b=0,bin=0 ,diff=0,borr=0
10 a=0,b=0,bin=1 ,diff=1,borr=1
15 a=0,b=1,bin=0 ,diff=1,borr=1
20 a=0,b=1,bin=1 ,diff=0,borr=1
25 a=1,b=0,bin=0 ,diff=1,borr=0
30 a=1,b=0,bin=1 ,diff=0,borr=0
35 a=1,b=1,bin=0 ,diff=0,borr=0
40 a=1,b=1,bin=1 ,diff=1,borr=1
*/
