// ============================================
// Module: day4
// Purpose: A simple ALU
// Tomer Elis
// ============================================

module day4 (
  input     logic [7:0]   a_i,
  input     logic [7:0]   b_i,
  input     logic [2:0]   op_i,

  output    logic [7:0]   alu_o
);

  
  
  //combinational part
  always_comb begin
    alu_o = 0; // default value to avoid latches
    if(op_i == 3'b000)
      alu_o = a_i + b_i;
    else if (op_i == 3'b001)
      alu_o = a_i - b_i;
    else if (op_i == 3'b010)
      alu_o = a_i[7:0] << b_i[2:0];
    else if (op_i == 3'b011)
      alu_o = a_i[7:0] >> b_i[2:0];
    else if (op_i == 3'b100)
      alu_o = a_i[7:0] & b_i[7:0];
    else if (op_i == 3'b101)
      alu_o = a_i | b_i;
    else if (op_i == 3'b110)
      alu_o = a_i ^ b_i;
    else if (op_i == 3'b111)
      alu_o = {7'h0, a_i == b_i};   //chaining 7 zeros to the result
  end
  

endmodule
