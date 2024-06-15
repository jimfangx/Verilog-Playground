// typically you would set a time scale: https://www.chipverify.com/verilog/verilog-timescale

module top_module ( output reg A, output reg B );//

    // generate input patterns here
    initial begin
        A = 0;
        B = 0;
        #10 // this would then mean 10 timescales
        A = ~A;
        #5
        B = ~B;
        #5
        A = ~A;
        #20
        B = ~B;
    end


endmodule
