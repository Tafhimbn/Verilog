
module encoder_4to2(data,out0,out1);
	input [3:0] data;
	output out0, out1;
	
	assign out0 = data[1] | data[3];
	assign out1 = data[2] | data[3];
	
endmodule
