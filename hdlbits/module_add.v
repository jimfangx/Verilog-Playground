module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

// wire[15:0] lower;
// wire[31:16] upper;
wire carry;

add16 instance1(a[15:0], b[15:0], 0, sum[15:0], carry);
add16 instance2(a[31:16], b[31:16], carry, sum[31:16]);

endmodule
