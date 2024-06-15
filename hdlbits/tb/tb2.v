module top_module();

reg clk;
reg in;
reg [2:0] s;
reg q7_out;

q7 instance1(clk, in, s, q7_out);

initial begin
    clk = 0;
    in = 0;
    s = 2;
    #10
    s = 6;
    #10 // time 20
    s = 2;
    in = 1;
    #10 // time 30
    s = 7;
    in = 0;
    #10 // time 40
    s = 0;
    in = 1;
    #30
    in = 0;
end

initial begin
    forever begin
        #5 clk = ~clk;
    end
end

endmodule
