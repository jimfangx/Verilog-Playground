/*
The hierarchy of modules is created by instantiating one module inside another, as long as all of the modules used belong to the same project (so the compiler knows where to find the module). The code for one module is not written inside another module's body (Code for different modules are not nested).

if mod_a is defined as the following:
module mod_a ( input in1, input in2, output out );
    // Module body
endmodule

mod_a instance1 ( wa, wb, wc );
=> wa -> in1, wb -> in2, wc -> out

mod_a instance2 ( .out(wc), .in1(wa), .in2(wb) );
=> name in module signature(input var)

*/

module top_module ( input a, input b, output out );

    mod_a instance1 (a, b, out);

endmodule
