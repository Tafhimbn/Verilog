module parity_gen_9bit(d,even,odd);
	input [8:0]d;
	output even, odd;
	wire d01, d23, d45,d67,d0_3,d4_7,d0_7;
	
	xor x1(d01,d[0],d[1]),  x2(d23,d[2],d[3]),
	    x3(d45,d[4],d[5]),  x4(d67,d[6],d[7]),
	    x5(d0_3,d01,d23),   x6(d4_7,d45,d67),
	    x7(d0_7,d0_3,d4_7), x8(even,d0_7,d[8]);	
	
	not e_inv(odd,even); 

endmodule
