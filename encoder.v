
//____________________________________Dataflow modeling
module encoder_4to2(data,out0,out1);
	input [3:0] data;
    output out0, out1;

    assign out0 = data[1] | data[3];
    assign out1 = data[2] | data[3];
	

endmodule 

/*
//___________________________________Behavioral Modeiling
module encoder_4to2(data,out0,out1);
	input [3:0] data;
    output reg out0, out1;
	
	always@(data)
    	begin
		out0 = data[1] | data[3];
        out1 = data[2] | data[3];
	    end
endmodule

//____________________________________Gatelevel Modeling

module encoder_4to2(data,out0,out1);
	input [3:0] data;
    output out0, out1;
    
	or or1(out0, data[1], data[3]),
	   or2(out1, data[2], data[3]);

endmodule 

*/
