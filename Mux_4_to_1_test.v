`timescale 1ns/1ps 

module mux4_testbench;
	reg a,b,c,d, s0, s1;
	wire out;
	
	mux4_1 m4_1(a,b,c,d,s0,s1,out);
	
	initial
	begin 
		$monitor ($time,"a=%b,b=%b,c=%b,d=%b,s0=%b,s1=%b,out=%b",a,b,c,d, s0, s1, out);
		#5 a=0; b=1; c=1; d=1; s0=0; s1=0; 
		#5 a=1; b=0; c=0; d=0; s0=0; s1=0;
		#5 a=1; b=0; c=1; d=1; s0=1; s1=0;
		#5 a=0; b=1; c=0; d=0; s0=1; s1=0;
		#5 a=1; b=1; c=0; d=1; s0=0; s1=1; 
		#5 a=0; b=0; c=1; d=0; s0=0; s1=1;
		#5 a=1; b=1; c=1; d=0; s0=1; s1=1;
		#5 a=0; b=0; c=0; d=1; s0=1; s1=1;
		#5 $finish;
	end			
endmodule
