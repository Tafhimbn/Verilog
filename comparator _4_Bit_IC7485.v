			
//IC7485
// Dataflow modeling
module comparator(a, b, alb, aeb, agb);
	input [3:0] a,b;
	output alb, agb, aeb;
	wire and_a0,and_a1,and_a2,and_a3,and_b0,and_b1,and_b2,and_b3;  
	wire xab0, xab1, xab2, xab3; 
	
	// A equal to B
	assign xab0 = ~(a[0]^b[0]);
	assign xab1 = ~(a[1]^b[1]);
	assign xab2 = ~(a[2]^b[2]);
	assign xab3 = ~(a[3]^b[3]);
	
	assign aeb = xab0 & xab1 & xab2 & xab3;
	
	// A greater than B
	assign and_a0 = a[0] & (~b[0]) & xab1 & xab2 & xab3;
	assign and_a1 = a[1] & (~b[1]) & xab2 & xab3;
	assign and_a2 = a[2] & (~b[2]) & xab3; 
	assign and_a3 = a[3] & (~b[3]);	
	
	assign agb = and_a0 | and_a1 | and_a2 | and_a3;
    
	// A less than B   
	assign and_b0 = (~a[0]) & b[0] & xab1 & xab2 & xab3;
	assign and_b1 = (~a[1]) & b[1] & xab2 & xab3;
	assign and_b2 = (~a[2]) & b[2] & xab3; 
	assign and_b3 = (~a[3]) & b[3];
	
	assign alb = and_b0 | and_b1 | and_b2 | and_b3;
	
endmodule 


/*
// Behavioral Modeling		

module comparator(a, b, alb, aeb, agb);
	input [3:0] a,b;
	output reg alb, agb, aeb;
	reg and_a0,and_a1,and_a2,and_a3,and_b0,and_b1,and_b2,and_b3;  
	reg xab0, xab1, xab2, xab3; 
	
	always@(a or b)
		begin
	      // A equal to B
          xab0 = ~(a[0]^b[0]);
	      xab1 = ~(a[1]^b[1]);
          xab2 = ~(a[2]^b[2]);
	      xab3 = ~(a[3]^b[3]);
	
	      aeb = xab0 & xab1 & xab2 & xab3;
	
      	 // A greater than B
          and_a0 = a[0] & (~b[0]) & xab1 & xab2 & xab3;
      	  and_a1 = a[1] & (~b[1]) & xab2 & xab3;
      	  and_a2 = a[2] & (~b[2]) & xab3; 
      	  and_a3 = a[3] & (~b[3]);	
      	
      	  agb = and_a0 | and_a1 | and_a2 | and_a3;
    
	      // A less than B   
	      and_b0 = (~a[0]) & b[0] & xab1 & xab2 & xab3;
	      and_b1 = (~a[1]) & b[1] & xab2 & xab3;
	      and_b2 = (~a[2]) & b[2] & xab3; 
	      and_b3 = (~a[3]) & b[3];
	
	      alb = and_b0 | and_b1 | and_b2 | and_b3;
	
	      end
endmodule 

		
// Structural / gatelevel modeling

module comparator(a, b, alb, aeb, agb);
	input [3:0] a,b;
	output alb, agb, aeb;	
	wire na0, na1, na2, na3, nb0, nb1, nb2, nb3;
	wire and_a0, and_a1, and_a2, and_a3, and_b0, and_b1, and_b2, and_b3;  
	wire xab0, xab1, xab2, xab3; 
	
	not nota0(na0,a[0]), nota1(na1,a[1]), nota2(na2,a[2]), nota3 (na3,a[3]),
	    notb0 (nb0,b[0]), notb1 (nb1,b[1]), notb2 (nb2,b[2]), notb3 (nb3,b[3]);
		
	// A equal to B
	xnor xnor0 (xab0,a[0],b[0]),
	     xnor1 (xab1,a[1],b[1]),
	     xnor2 (xab2,a[2],b[2]),
	     xnor3 (xab3,a[3],b[3]);
	 and and_aed (aeb,xab0,xab1,xab2,xab3);
	
      // A greater than B
      and anda0 (and_a0,a[0],nb0,xab1,xab2,xab3),
      	  anda1 (and_a1,a[1],nb1,xab2,xab3),
      	  anda2 (and_a2,a[2],nb2,xab3), 
      	  anda3 (and_a3,a[3],nb3);	
      or or_agb (agb,and_a0,and_a1,and_a2,and_a3);
    
	   // A less than B   
	  and andb0 (and_b0, na0, b[0] ,xab1 ,xab2 ,xab3),
	      andb1 (and_b1, na1, b[1] ,xab2 ,xab3),
	      andb2 (and_b2, na2, b[2] ,xab3), 
	      andb3 (and_b3, na3, b[3]);
	  or or_alb (alb, and_b0, and_b1, and_b2, and_b3);
	
endmodule

*/
