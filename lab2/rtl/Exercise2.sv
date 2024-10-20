/**
  @brief A fibonacci linear feedback shift register module

  @input clk    clock
  @input nReset active-low reset
  @input init   initial value following a reset
  @output out   current output
*/
module Exercise2 (
    input clk,
    input nReset,
    input [15:0] init,
    output logic [15:0] out
);

// Update LFSR output on every positive clock edge
always_ff @(posedge clk or negedge nReset) begin
    if (!nReset)             // When nReset is low (active-low reset)
        out <= init;         // Load the initial value
    else begin
        // Shift the LFSR and calculate the new bit using XOR of feedback bits
        out <= {out[14:0], (out[15] ^ out[13] ^ out[12] ^ out[10])};
    end
end

endmodule
