module top_module( 
    input a, b, sel,
    output out ); 

    always @(*) begin
        case (sel)
            0: out = a; // do not use "assign" keyword here
            1: out = b;
        endcase
    end

endmodule
