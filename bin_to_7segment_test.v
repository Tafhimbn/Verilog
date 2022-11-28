module bin_2_7seg_test;
	reg [3:0] b_val;
	wire [6:0] seg7;
	integer i;
	
	bin_2_7seg b_seg (seg7,b_val);
		
	initial 
		begin
			$dumpfile("sig7dis.vcd");
			$dumpvars(1);
			
			for(i=0;i<=16;i++)
				begin
					b_val = i;
					#5;
				end
		end
endmodule
