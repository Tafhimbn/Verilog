
module mux2to1_test;
	reg a,b,s;
	wire out;
	
	mux2_1 m21(out,a,b,s);
	
	initial
	begin 
		$monitor ($time,"a=%b,b=%b,s=%b,out=%b",a,b,s,out);
		#5 a=1; b=0; s=0; 
		#5 a=0; b=1; s=1;
		#5 $finish;
	end			
endmodule 
