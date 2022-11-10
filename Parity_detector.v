module parity_detector (x, clk, z);
	input x, clk;
	output reg z;
	reg even_odd;			// The machine state
	parameter EVEN=0, ODD=1;					
	always @(posedge clk)
		case (even_odd)
			EVEN: begin 
				even_odd <= x ? ODD : EVEN;	   // condition statement .... if even_odd=1, Z will be ODD. if X=1, Z will be EVEN
			     end
			ODD: begin
                even_odd <= x ? EVEN : ODD;		 
			end
			default: even_odd <= EVEN;
	endcase	 
	always @(even_odd)
		case (even_odd)
			EVEN: z = 0;
			ODD: z =1;
	endcase	
endmodule
