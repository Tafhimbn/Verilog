/*
// sequence detector for pattern "0110"

module sequence_detector (x, clk, reset, z); 
	input x, clk, reset;
	output reg z;
	parameter s0=0, s1=1, s2=2, s3=3;
	reg [0:1] ps, ns;
	always @(posedge clk or posedge reset)
		if (reset) ps <= s0;
		else ps <= ns;
	always @(ps, x)
		case (ps)
			s0:begin
				z = x ? 0 : 0;
				ns = x ? s0 : s1; //condition statement ....if x=1, ns= S0 . if x=0, ns = s1
			   end
			s1:begin
				z = x ? 0 : 0;
				ns = x ? s2 : s1;  
			   end			
			s2:begin
				z = x ? 0 : 0;
				ns = x ? s3 : s1;  
			   end			
			s3:begin
				z = x ? 0 : 1;
				ns = x ? s0 : s1;  
			   end
			endcase
endmodule	

*/	 

// sequence detector for pattern "101010"

module sequence_detector (x, clk, reset, z); 
	input x, clk, reset;
	output reg z;
	parameter s0=0, s1=1, s2=2, s3=3, s4=4, s5=5;
	reg [2:0] ps, ns;
	always @(posedge clk or posedge reset)
		if (reset) ps <= s0;
		else ps <= ns;
	always @(ps, x)
		case (ps)
			s0:begin
				z = x ? 0 : 0;
				ns = x ? s1 : s0; //condition statement ....if x=1, ns= S0 . if x=0, ns = s1
			   end
			s1:begin
				z = x ? 0 : 0;
				ns = x ? s1 : s2;  
			   end			
			s2:begin
				z = x ? 0 : 0;
				ns = x ? s3 : s0;  
			   end			
			s3:begin
				z = x ? 0 : 0;
				ns = x ? s1 : s4;  
			   end
			s4:begin
				z = x ? 0 : 0;
				ns = x ? s5 : s0;  
			   end
			s5:begin
				z = x ? 0 : 1;
				ns = x ? s1 : s4;  
			   end
			endcase
endmodule	
