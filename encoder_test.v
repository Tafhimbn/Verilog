module encoder_test();
	reg [3:0] data;
	wire out0, out1;
	
	encoder_4_2 EN (data,out0,out1);
	
	initial
		begin
		$monitor ($time,"Data =%b, Out 0=%b, Out 1=%b",data,out0,out1);
		#5 data=0000;
		#5 data=0010;
		#5 data=0100;
		#5 data=1000;
		#5 $finish;
		end
endmodule
