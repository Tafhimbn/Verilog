//_________________________________________ Dataflow modeling
  module mux4_1 (a,b,c,d,s0,s1,out);
	input a,b,c,d;
	input s0,s1;
	output out;
	wire s0bar, s1bar, wa, wb, wc, wd; 
	
	assign s0bar = ~s0;
	assign s1bar = ~s1;
	
	assign wa = a & s0bar & s1bar;
	assign wb = b & s0 & s1bar;
	assign wc = c & s0bar & s1;
	assign wd = d & s0 & s1; 
		
	assign out = wa | wb | wc | wd;

endmodule	 


//_________________________________________ Gate-level modeling
module mux4_1 (a,b,c,d,s0,s1,out);
	input a,b,c,d;
	input s0,s1;
	output out;
	wire s0bar, s1bar, wa, wb, wc, wd; 
	
	not na (s0bar,s0),
	    nb (s1bar,s1);
	
	and anda (wa,a,s0bar,s1bar),
	    andb (wb,b,s0,s1bar),
	    andc (wc,c,s0bar,s1),
	    andd (wd,d,s0,s1);  
		
	or or_out (out,wa,wb,wc,wd);

endmodule


//____________________________________________Behavioral modeling
module mux4to1 (a,b,c,d,s,out);
	input a,b,c,d;
	input [1:0] s;
	output reg out;	 // remove reg for assihn statement
	always@ (a,b,c,d,s) // valuate block whenever there are changes in a,b,c,d,s
		begin 
			if (s==2'b00) out=a; //if-else form
			else if (s==2'b01) out=b;
			else if (s==2'b10) out=c;
			else if (s==2'b11) out=d; 
	   // another method- using case statement
		case(s)	 //equivalent case statement form
			2'b00: z1=a;
			2'b01: z1=b;
			2'b10: z1=c;
			2'b11: z1=d;
			default: z1=a;
		endcase	
		
		end
	 // another method
	//assign statement using the conditional operator
	 assign Z2 = (S == 2’b00) ? a: //select A for S=00
                 (S == 2’b01) ? b: //select B for S=01
                 (S == 2’b10) ? c: //select C for S=10
                 (S == 2’b11) ? d: //select D for S=11
                                x;  //otherwise default to x

endmodule	

