
// ============================================
// Module: day2
// Purpose: Three D-FF variants:
//          1) q_norst_o   - no reset
//          2) q_syncrst_o - synchronous reset (active-high)
//          3) q_asyncrst_o- asynchronous reset (active-high)
// ============================================

module day2 (
  input  logic clk,
  input  logic reset,     
  input  logic d_i,
  output logic q_norst_o,    // not resettable output
  output logic q_syncrst_o,  // synchronous reset output
  output logic q_asyncrst_o  // asynchronous reset output
);


  //not resetable + sync  output
//---------------------------------------------------------------------------------
  logic a;  						 // flag 
  always_ff @(posedge clk) begin
    q_norst_o <= d_i;		//every clk trigger - insert the data to "not resetable output"
    
    if (a) 				//if flag is raised -> reset our boy "sync output" at the trigger
      q_syncrst_o <= 1'b0;
    else				//otherwise keep the data in "sync output"
      q_syncrst_o <= d_i;
  end
//---------------------------------------------------------------------------------





  //async output
//---------------------------------------------------------------------------------
 always_ff @(posedge clk or posedge reset) begin
   if (reset) begin
    	q_asyncrst_o <= 1'b0;	//reset the "async output"
   		a <= 1'b1;					 //raise flg
   end
   else	begin
  	q_asyncrst_o <= d_i;	//insert the data to "async output"
    a <= 1'b0;					  //clear the flag
   end
 end
//---------------------------------------------------------------------------------     


endmodule 