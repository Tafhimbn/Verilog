
module demux2to1_test;
	reg data,s;
	wire out0,out1;
	
	demux2_1 dm21 (out0,out1,data,s);
	
	initial
	begin 
		$monitor ($time," data = %b,s = %b,Out0 = %b,Out1 = %b",data,s,out0,out1);
		#5 data=1; s=0; 
		#5 data=1; s=1;
		#5 $finish;
	end			
endmodule 
