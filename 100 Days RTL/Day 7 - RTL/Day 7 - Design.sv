// ============================================
// Module: day7
// Purpose: 4 bit shift register (LFSR) 
// Date: September 7, 2025
// Tomer Elis
// ============================================
module day7 (
  input     wire      clk,
  input     wire      reset,

  output    wire[3:0] lfsr_o
);
  
  logic [3:0] lfsr_i;
  logic [3:0] nxt_lfsr;
  
  always_ff @(posedge clk or posedge reset) begin
    if (reset)
      lfsr_i <= 4'b0010;
      //lfsr_i <= 4'hE;
    else
      lfsr_i <= nxt_lfsr;
  end
  
  assign nxt_lfsr = {lfsr_i[2:0], (lfsr_i[1])^(lfsr_i[3])};
  assign lfsr_o = nxt_lfsr;
    


endmodule
