module top_module ( );

reg clk;

dut instance1(clk);

initial begin
        clk = 0;
    forever begin
        #5 clk = ~clk;
    end
end


endmodule
