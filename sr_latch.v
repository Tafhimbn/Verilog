
// Dataflow modeling
  module sr_latch(q, qbar,s,r);	
	input s,r;
	output wire q, qbar;
	
	assign q=~(r|qbar);
	assign qbar=~(s|q);

endmodule

/*

// Behavioral modeling

module sr_latch(q, qbar,s,r);	
	input s,r;
	output reg q, qbar;
	
	always@(s,r)
		begin
	case({s,r}) 
		2'b00: begin q = q; qbar = qbar; end
		2'b01: begin q =0; qbar =1;	 end
		2'b10: begin q =1; qbar =0; end
		2'b11: begin q =0; qbar =0; end
		default : begin {q,qbar}=2'bxx; end
	 endcase	 
	end
endmodule

//Structrual or Gatelevel modeling

module sr_latch(q, qbar,s,r);	
	input s,r;
	output q, qbar;
	
	nor nr1 (q,r,qbar),
	    nr2 (qbar,s,q);
endmodule
*/
