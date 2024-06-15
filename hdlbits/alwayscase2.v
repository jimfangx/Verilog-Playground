// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );

always @(*) begin
   if (in[0] == 1) begin
        pos = 0;
   end
   else if (in[1] == 1) begin
        pos = 1;
   end
   else if (in[2] == 1) begin
        pos = 2;
   end
   else if (in[3] == 1) begin
        pos = 3;
   end
   else begin
        pos = 0;
   end
end

endmodule
