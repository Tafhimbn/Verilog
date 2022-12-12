module register_test;
	reg d,clk;
	wire q;
	
  register regis(clk,d,q);
	
	initial
	begin
        $monitor($time," Clock=%b,D=%b,Q=%b",clk,d,q);
		#5 clk=0; d=0; 
		#5 clk=1; d=0;
		#5 clk=0; d=1;  
		#5 clk=1; d=1; 
		#5 $finish;
	end			
endmodule
