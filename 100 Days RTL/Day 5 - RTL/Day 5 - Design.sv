// ============================================
// Module: day5
// Purpose: Odd counter
// Date: August 31, 2025
// Tomer Elis
// ============================================

module day5 (
  input     wire        clk,
  input     wire        reset,

  output    logic[7:0]  cnt_o
);

  //sequential part
  always_ff @(posedge clk or posedge reset) begin
    if (reset)
      cnt_o <= 8'b1;
    else
      cnt_o <= cnt_o + 2;
    
      end
    

endmodule

