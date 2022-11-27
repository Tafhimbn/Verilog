
module demux4to1_test;
	reg data;
	reg [1:0]s;
	wire [3:0]out;
	
	demux4_1 dm41 (out,data,s);
	
	initial
	begin 
		$monitor ($time," data = %b,s = %b,Out0 = %b,Out1 = %b,Out2 = %b,Out3 = %b",data,s,out[0],out[1],out[2],out[3]);
		#5 data=1; s=00; 
		#5 s=01;	
		#5 s=10; 
		#5 s=11;
		#5 $finish;
	end			
endmodule 
