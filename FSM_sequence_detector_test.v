/*
// sequence detector for pattern "0110"
module sequence_test;
	reg clk, x, reset;  
	wire z;
	sequence_detector SEQ (x, clk, reset, z);
	initial
		begin
			$dumpfile("sequence.vcd");
			$dumpvars (0, sequence_test);
			clk = 1'b0;
			reset = 1'b1;
			#15 reset = 1'b0;
		end
	always #5 clk = ~ clk;
	initial
		begin
			#12 x = 0; #10 x = 0; #10 x = 1; #10 x = 1; 
			#10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0; 
			#10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
			#10 $finish;
		end
	endmodule
*/		
// sequence detector for pattern "101010"
module sequence_test;
	reg clk, x, reset;  
	wire z;
	sequence_detector SEQ (x, clk, reset, z);
	initial
		begin
			$dumpfile("sequence.vcd");
			$dumpvars (0, sequence_test);
			clk = 1'b0;
			reset = 1'b1;
			#15 reset = 1'b0;
		end
	always #5 clk = ~ clk;
	initial
		begin
			#10 x = 1; #10 x = 0; #10 x = 1; #10 x = 0; #10 x = 1;#10 x = 0;  
			#10 x = 1; #10 x = 0; #10 x = 1; #10 x = 0; #10 x = 1;#10 x = 0;   
			#10 x = 1; #10 x = 0; #10 x = 1; #10 x = 0; #10 x = 1; #10 x = 0; 
			#10 $finish;
		end
endmodule
