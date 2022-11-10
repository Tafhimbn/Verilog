module FSM_Trafficlight_test;
	reg clk;
	wire [0:2] light;
	traffic_light TL (clk, light);
	always #5 clk = ~clk;
	initial
		begin
			clk = 1'b0;
			#100 $finish;
		end
	initial
		begin
			$dumpfile("traffic_light.vcd");
			$dumpvars (0,FSM_Trafficlight_test);  
			$monitor ($time, "RGY: %b", light);
		end
endmodule
