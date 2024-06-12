module top_module (
    input [2:0] vec,
    output [2:0] outv, o2, o1, o0
);
    
    assign outv [2:0] = vec[2:0];

    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];

endmodule