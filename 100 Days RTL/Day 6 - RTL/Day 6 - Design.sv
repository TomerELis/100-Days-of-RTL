// ============================================
// Module: day6
// Purpose: simple shift register
// Date: September 1, 2025
// Tomer Elis
// ============================================
module day6(
  input     wire        clk,
  input     wire        reset,
  input     wire        x_i,      // Serial input

  output    wire[3:0]   sr_o
);

  //sequential part
  //-----------------------------------------------------------------------------
  logic[3:0] temp_ff;			//temp_ff is logic since we cant update a wire inside always_ff
  always_ff @(posedge clk or posedge reset) begin
    if (reset)
      temp_ff <= 4'b0;
  	else
      temp_ff <= {sr_o[2:0],x_i};
  end
  //-----------------------------------------------------------------------------
  assign sr_o = temp_ff;
    

endmodule
