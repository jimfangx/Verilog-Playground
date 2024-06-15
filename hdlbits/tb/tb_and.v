// https://www.chipverify.com/verification/directed-verification

module top_module();

    reg [1:0] in;
    reg out;
    reg andgateout;

    andgate instance1(in, andgateout);

    initial begin
        // test case 1: in[0] = 0, in[1] = 0
        in = {1'b0, 1'b0};
        out = andgateout;
        #10

        in = 1;
        out = andgateout;
        #10

        in = 2;
        out = andgateout;
        #10

        in = 3;
        out = andgateout;
        
    end

endmodule
