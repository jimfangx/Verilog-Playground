module top_module( 
    input [7:0] in,
    output [7:0] out
);

    assign out[7:0] = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};

    // alternative: assign {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]} = in;

    /*
    writing a loop:
    for-loops describe circuit *behaviour*, not *structure*, so they can only be used inside procedural blocks (e.g., always block).

    always @(*) begin	
		for (int i=0; i<8; i++)	// int is a SystemVerilog type. Use integer for pure Verilog.
			out[i] = in[8-i-1];
	end


    */

endmodule
