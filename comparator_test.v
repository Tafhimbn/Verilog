module comp_test();
	reg a,b;
	wire alb,agb,aeb;
	
	com CM(a,b,alb,agb,aeb);
	
	initial
		begin
		$monitor ($time,"a=%b, b=%b, A less than B=%b, A greater than B=%b, A equal B=%b",a,b,alb,agb,aeb);
		#5 b=0; a=0;
		#5 b=0; a=1; 
		#5 b=1; a=0;
		#5 b=1;	a=1;
		#5 $finish;
		end
endmodule
