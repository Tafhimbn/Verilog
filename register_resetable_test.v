module register_test;
	reg d,clk,rst;
	wire q;
	
  register regis(clk,rst,d,q);
	
	initial
	begin
      $monitor($time," Clk=%b,rst=%b,D=%b,Q=%b",clk,rst,d,q);
		#5 clk=0; d=0; 
		#5 clk=1; d=0;
		#5 clk=0; d=1;  
		#5 clk=1; d=1;
		#5 rst=1; clk=0; d=0; 
		#5 rst=0; clk=1; d=0;
		#5 clk=0; d=1;  
		#5 clk=1; d=1;
		#5 $finish;
	end			
endmodule
