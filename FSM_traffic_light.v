module traffic_light (clock, light);
	input clock;
	output reg [0:2] light;
	parameter s0=0, s1=1, s2=2;
	parameter RED=3'b100, GREEN=3'b010, YELLOW=3'b001;
	reg [0:1] state;
	always @(posedge clock)
		case (state)
			s0: begin 				// s0 means red state
				light <= GREEN; state <= s1;			 
				end
			s1: begin 			  // s1 means green state
				light <= YELLOW; state <= s2;			 
			    end
			s2: begin			  // s2 means yellow state
				light <= RED; state <= s0;
			    end
			default: begin
				light <= RED; state <= s0;
		    	end
        endcase			
endmodule
