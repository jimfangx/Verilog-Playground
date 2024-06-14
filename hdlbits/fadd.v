module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//

wire carry;

add16 instance1(a[15:0], b[15:0], 0, sum[15:0], carry);
add16 instance2(a[31:16], b[31:16], carry, sum[31:16]);

endmodule

module add1 ( input a, input b, input cin, output sum, output cout );

// Full adder module here

wire a_xor_b;

assign a_xor_b = a ^ b;

assign sum = a_xor_b ^ cin;
assign cout = (a_xor_b & cin) | (a & b);


endmodule
