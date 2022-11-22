module decoder_test();
	reg a,b,en;
	wire [3:0] out;
	
	decoder_2_4 DC (a,b,en,out);
	
	initial
		begin
		$monitor ($time,"a=%b, b=%b,Enable =%b, Out=%b",a,b,en,out);
		#5 b=0; a=0; en=0;
		#5 b=0; a=1; 
		#5 b=1; a=0;
		#5 b=1;	a=1;
		#5 b=0; a=0; en=1;
		#5 b=0; a=1; 
		#5 b=1; a=0;
		#5 b=1;	a=1;
		#5 $finish;
		end
endmodule

/* output:
0   a=x, b=x,Enable =x, Out=xxxx
5   a=0, b=0,Enable =0, Out=0000
10  a=1, b=0,Enable =0, Out=0000
15  a=0, b=1,Enable =0, Out=0000
20  a=1, b=1,Enable =0, Out=0000
25  a=0, b=0,Enable =1, Out=1000
30  a=1, b=0,Enable =1, Out=0100
35  a=0, b=1,Enable =1, Out=0010
40  a=1, b=1,Enable =1, Out=0001
*/
