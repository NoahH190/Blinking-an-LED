'timescale 1ns \ 1ps
module blinking_a_led_tb ();

reg clk; 
reg i_switch_1; 
wire o_LED_1;

blinking_a_led_tb dut(
    .i_clk(clk),
    .i_switch_1(i_switch_1),
    .o_LED_1(o_LED_1)
);

initial begin
    clk = 1'b0;
    forever #1 clk = ~clk;
end

initial begin 
    $monitor("time=%0T, i_switch_1=%b, o_LED_1=%b, \n", 
            $time, i_switch_1, o_LED_1);

    i_switch_1 = 1'b0;
    #20
    i_switch_1 = 1'b1;
end

endmodule : blinking_a_led_tb