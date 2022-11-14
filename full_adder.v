`timescale 1ns/1ps

// Dataflow model
/**/
 module full_adder (sum,cout,a,b,cin);
	input a,b,cin;
	output sum,cout;
	
	assign sum=a^b^cin;
	assign cout=(a&b)|(b&cin)|(cin&a);
endmodule
/**/


// Behavioral modeling 
/*
module full_adder (sum,cout,a,b,cin);
	input a,b,cin;
	output reg sum,cout; 
	reg AB_xor, AB_and, ACin_and, BCin_and;
	
	always@(a or b or cin)
		begin
		AB_xor =  a^b;
		sum = AB_xor^cin;
		AB_and = a & b;
		ACin_and = a & cin;
		BCin_and = b & cin;
		cout = AB_and | ACin_and | BCin_and;
		end
endmodule 
*/

//	Structural / gatelevel modeling
/*
 module full_adder (sum,cout,a,b,cin);
	input a,b,cin;
	output sum,cout;
	wire AB_xor, AB_and, ACin_and, BCin_and;
	
	xor x1(AB_xor,a,b),
	    x2 x1(sum,AB_xor,cin);
	
	and a1 (AB_and,a,b),
	    a2 (ACin_and,a,cin),
		a3 (BCin_and,b,cin); 
		
	or o1 (cout,AB_and,ACin_and,BCin_and);
	
endmodule  

*/
