module top_module (
    input a, b, c,
    output w, x, y, z
);
    
    assign w = a;
    // assign x, y = b; CANNOT DO THIS!
    assign x = b;
    assign y = b;
    assign z = c;


endmodule