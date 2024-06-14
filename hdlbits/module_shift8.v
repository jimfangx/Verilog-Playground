module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

wire[7:0] mid1;
wire[7:0] mid2;
wire[7:0] mid3;

my_dff8 instance1(clk, d[7:0], mid1[7:0]);
my_dff8 instance2(clk, mid1[7:0], mid2[7:0]);
my_dff8 instance3(clk, mid2[7:0], mid3[7:0]);

always @(*) begin
    case (sel)
        0: q[7:0] = d[7:0];
        1: q[7:0] = mid1[7:0];
        2: q[7:0] = mid2[7:0];
        3: q[7:0] = mid3[7:0]; 
    endcase
end

endmodule
