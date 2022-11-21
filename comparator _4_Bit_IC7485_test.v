module comparator_TB;
    reg [3:0] a;
    reg [3:0] b;
    wire alb, aeb, agb;

    comparator COM(a, b, alb, aeb, agb);

    initial 
		begin  
		$monitor ($time,"a=%b, b=%b, A less than B=%b, A greater than B=%b, A equal B=%b",a,b,alb,agb,aeb);
		a = 10;
        b = 12;
        #100;
        a = 15;
        b = 00;
        #100;
        a = 10;
        b = 10;
        #100;
    end
      
endmodule
