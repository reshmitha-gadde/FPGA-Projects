module LED_Blink(
    input clk,
    output reg led
);

reg [25:0] counter = 0;

always @(posedge clk) begin
    counter <= counter + 1;

    if (counter == 26'd49999999) begin
        led <= ~led;
        counter <= 0;
    end
end

endmodule
