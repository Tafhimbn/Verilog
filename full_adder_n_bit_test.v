module full_adder_nbit_tb();
	parameter N=4;
	reg [N-1:0]a, b;
	reg cin;
	wire [N-1:0]sum;
	wire cout;
	
    full_adder_n FA (a,b,cin,sum,cout);	
	
	initial
	begin 
		$monitor ($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
		#5 a=4'b0000; b=4'b0000; cin=1'b0; 
		#5 a=4'b0000; b=4'b0011; 
		#5 a=4'b0011; b=4'b0000;  
		#5 a=4'b1010; b=4'b1010;  
		#5 a=4'b1010; b=4'b0101; 
		#5 a=4'b1111; b=4'b1111; 
		#5 a=4'b0000; b=4'b0000; cin=1'b1; 
		#5 a=4'b0000; b=4'b0011; 
		#5 a=4'b0011; b=4'b0000;  
		#5 a=4'b1010; b=4'b1010;  
		#5 a=4'b1010; b=4'b0101; 
		#5 a=4'b1111; b=4'b1111;   	
		#5 $finish;
	end			
endmodule
