module bin_2_7seg (seg7, bcd); 
	input [3:0] bcd;
	output reg [6:0]seg7;
	
	always@(bcd)
		begin			  // any change in initiates execution
			case(bcd)
				0: seg7 = 7'b1111110;	  // sigment: A-B-C-D-E-F-G
				1: seg7 = 7'b0110000;
				2: seg7 = 7'b1101101;
				3: seg7 = 7'b1111001;
				4: seg7 = 7'b1110011;
				5: seg7 = 7'b1011011;
				6: seg7 = 7'b1011111;
				7: seg7 = 7'b1110000;
				8: seg7 = 7'b1111111; 
				9: seg7 = 7'b1111011; 
				//switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg7 = 7'b0000000; 
			endcase
		end
endmodule
