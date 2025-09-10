// ============================================
// Module: day9 
// Purpose: binary-to-Gray code converter
// Date: September 10, 2025
// Tomer Elis

//Explanation: binary-to-Gray code converter. (MSB) stays the same, each next bit = XOR of the current
//binary bit and the previous binary bit.
//Example: Input (binary): 0100   Output (gray): 0110
// ============================================

module day9 #(
  parameter VEC_W = 4
)(
  input     wire[VEC_W-1:0] bin_i,
  output    wire[VEC_W-1:0] gray_o

);
  logic[VEC_W-1:0] temp_log;
  
  always_comb begin
    for (int i=VEC_W-1; i>=0; i--) begin
      if (i == VEC_W-1)				//MSB is always copied from the input
        temp_log[i] = bin_i[i];
      else									////for each other bit, calc using xor on adjacent input bits
        temp_log[i] = bin_i[i+1]^bin_i[i];
    end   
  end
  //connect between temp_log to wire since, wires cannot be assign inside always_comb
  assign gray_o = temp_log;

endmodule

