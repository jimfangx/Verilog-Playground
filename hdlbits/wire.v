
/*
In a Verilog "continuous assignment" (assign left_side = right_side;), the value of the signal on the right side is driven onto the wire on the left side. The assignment is "continuous" because the assignment continues all the time even if the right side's value changes.
*/

module top_module (
    input in,
    output out 
);
    
    assign out = in;
    // Note that wires are directional, so "assign in = out" is not equivalent.

    
endmodule