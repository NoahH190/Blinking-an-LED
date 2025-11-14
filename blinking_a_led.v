module blinking_a_led (
    input i_clk,
    input i_switch_1,
    output o_LED_1
);

reg r_LED_1    = 1'b0;
reg r_switch_1 = 1'b0;

always @(posedge i_clk) begin 
    r_switch_1 <= i_switch_1; 
    if(i_switch_1 == 1'b0 && r_switch_1 == 1'b1) r_LED_1 <= ~r_LED_1;
end 

assign o_LED_1 = r_LED_1;

endmodule