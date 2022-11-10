module shiftreg_4bit (clock, clear, A, E);
	input clock, clear, A;
	output reg E;
	reg B, C, D;
	always @(posedge clock or negedge clear)
		begin 
		if(!clear) begin B<=0; C<=0; D<=0; E<=0; end
		else
			begin
			E<=D;
			D<=C;
			C<=B;
			B<=A;
			end
		end	
endmodule
