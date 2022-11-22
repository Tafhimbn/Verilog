module encoder_test();
	reg [3:0] data;
	wire out0, out1;

	encoder_4to2 EN (data,out0,out1);

	initial
		begin
		
			$monitor ($time,"Data =%b, Out 0=%b, Out 1=%b",data,out0,out1);
			#5 data=4'b0000;
			#5 data=4'b0010;
			#5 data=4'b0100;
			#5 data=4'b1000;
			#5 $finish;	
end
endmodule
