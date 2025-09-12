
// ©2025 Tomer Elis - All Rights Reserved.
// Module: day2 TB
// Purpose: Three D-FF variants:
//          1) q_norst_o   - no reset
//          2) q_syncrst_o - synchronous reset 
//          3) q_asyncrst_o- asynchronous reset 
// ============================================
module day2_tb ();

	logic clk;
  logic reset;     
  logic d_i;
  logic q_norst_o;    // not resettable output
  logic q_syncrst_o;  // synchronous reset output
  logic q_asyncrst_o;  // asynchronous reset output
  
  day2 DUT (.*);
  
  
  //sequential part (clk):
  //---------------------------------------------------------------------------
  always begin
    clk = 1'b1;
    #10;
    clk = 1'b0;
    #10;
  end
  //---------------------------------------------------------------------------
  
  
  
	//combinational part:
	//---------------------------------------------------------------------------
  initial begin 
    reset <= 1'b0;
    d_i <= 1'b0;
    @(posedge clk);   //wait until the next rising edge of clk
     d_i <= 1'b0;
    @(posedge clk);	  //wait until the next rising edge of clk
     d_i <= 1'b1;
    @(posedge clk);	  //wait until the next rising edge of clk
     d_i <= 1'b1;
    @(posedge clk);	  //wait until the next rising edge of clk
    reset <= 1'b1;

  	//$finish();
  end
  
endmodule


