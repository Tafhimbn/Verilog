
module alu(a,b,alu_sel,alu_out,carryout);
  input [7:0] a,b;                   // ALU 8-bit Inputs                 
  input [3:0] alu_sel;               // ALU Selection
  output [7:0] alu_out;              // ALU 8-bit Output
  output carryout;                   // Carry Out Flag
  
  reg [7:0] alu_result;
  reg tmp;
  
  assign alu_out = alu_result;  // ALU out
  assign  carryout = tmp;
  
  always @(*)
    begin
      case(alu_sel)
        4'b0000: {tmp,alu_result} = a + b;             // addition {carry out, sum} 
        4'b0001: {tmp,alu_result} = a - b;            // Subtraction
        4'b0010: {tmp,alu_result} = a * b;            // Multiplication
        4'b0011: {tmp,alu_result} = a/b;              // Division
        4'b0100: {tmp,alu_result} = a<<1;             // Logical shift left
        4'b0101: {tmp,alu_result} = a>>1;             // Logical shift right
        4'b0110: {tmp,alu_result} = {a[6:0],a[7]};    // Rotate left
        4'b0111: {tmp,alu_result} = {a[0],a[7:1]};    // Rotate right
        4'b1000: {tmp,alu_result} = a & b;            //  Logical and 
        4'b1001: {tmp,alu_result} = a|b;              //  Logical or
        4'b1010: {tmp,alu_result} = a ^ b;            //  Logical xor 
        4'b1011: {tmp,alu_result} = ~(a|b);           //  Logical nor
        4'b1100: {tmp,alu_result} = ~(a & b);         // Logical nand 
        4'b1101: {tmp,alu_result} = ~(a ^ b);         // Logical xnor
        4'b1110: {tmp,alu_result} = (a>b)?8'd1:8'd0;  // Greater comparison
        4'b1111: {tmp,alu_result} = (a==b)?8'd1:8'd0; // Equal comparison   
        default: {tmp,alu_result} = 0 ; 
        endcase
    end
endmodule
