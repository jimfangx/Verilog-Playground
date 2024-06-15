module top_module ();

reg clk;
reg reset;
reg t;
reg tff_out_q;

tff instance1(clk, reset, t, tff_out_q);

initial begin
    clk = 0;
    reset = 1;
    t = 0;

    #10
    reset = 0;
    t = ~t;
end

initial begin
    forever begin
        #5 clk = ~clk;
    end
end


endmodule
