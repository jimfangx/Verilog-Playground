module top_module ( input clk, input d, output q );

    wire mid1;
    wire mid2;
    
    my_dff instance1(clk, d, mid1);
    my_dff instance2(clk, mid1, mid2);
    my_dff instance3(clk, mid2, q);

endmodule
