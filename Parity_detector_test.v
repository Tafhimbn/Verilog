module parity_detector_test;
	reg clk, x;
	wire z;
	parity_detector PD (x, clk, z);
	initial
		begin
			$dumpfile ("parity.vcd");
			$dumpvars (0, parity_detector_test);
			clk = 1'b0;
		end
always #5 clk = ~ clk;
initial
	begin
		#2 x=0; #10 x=1; #10 x=1; #10 x=1;
		#10 x=0; #10 x=1; #10 x=1; #10 x=0;	
		#10 x=0; #10 x=1; #10 x=1; #10 x=0;
		#10 $finish;
	end
endmodule
