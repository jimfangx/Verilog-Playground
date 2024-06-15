# Verilog Notes


## Assignments
Continuous assignments (assign x = y;). Can only be used when not inside a procedure ("always block").

Procedural blocking assignment: (x = y;). Can only be used inside a procedure.
* convention: use when in a *combinational* (always *) block

Procedural non-blocking assignment: (x <= y;). Can only be used inside a procedure.
* convention: use when in a clocked always (always (posedge clk)) block

## Operators
* Tenary operator with assign statements: `assign out = (condition) ? x : y;`

* The `++` operator doesnt exist in verilog!

* operators are mostly the same as C:
    * `||` = logical OR, `|` = bitwise OR, `&&` = logical AND, `&` = bitwise AND

## Latches
* inferred when output of a combinatorial logic has undefined states
    * ex: when you have a if statement with no else so the wire has undefined value

Avoiding inferred latches: https://stackoverflow.com/questions/22459413/what-is-inferred-latch-and-how-it-is-created-when-it-is-missing-else-statement-i


## Modules
The hierarchy of modules is created by instantiating one module inside another, as long as all of the modules used belong to the same project (so the compiler knows where to find the module). **The code for one module is not written inside another module's body (Code for different modules are not nested).**

if mod_a is defined as the following:
``` verilog
module mod_a ( input in1, input in2, output out );
    // Module body
endmodule
```

mod_a instance1 ( wa, wb, wc );

=> wa -> in1, wb -> in2, wc -> out

mod_a instance2 ( .out(wc), .in1(wa), .in2(wb) );

=> "name in module signature"(input var)


## Vectors
### Basic notation
```verilog
type [upper:lower] vector_name;

wire [7:0] w;         // 8-bit wire
reg  [4:1] x;         // 4-bit reg
output reg [0:0] y;   // 1-bit reg that is also an output port (this is still a vector)
input wire [3:-2] z;  // 6-bit wire input (negative ranges are allowed)
output [3:0] a;       // 4-bit output wire. Type is 'wire' unless specified otherwise.
wire [0:7] b;         // 8-bit wire where b[0] is the most-significant bit.
```

### Packed arrays
```verilog
reg [7:0] mem [255:0];   // 256 unpacked elements, each of which is a 8-bit packed vector of reg.
reg mem2 [28:0];         // 29 unpacked elements, each of which is a 1-bit reg.
```

### Concatenation operator: 
`{a, b, c}` concatenates smaller vectors together => larger vectors

```verilog
{3'b111, 3'b000} => 6'b111000
{1'b1, 1'b0, 3'b101} => 5'b10101
{4'ha, 4'd10} => 8'b10101010     // 4'ha and 4'd10 are both 4'b1010 in binary
```

concatentation requires the notation where every width is specified. so `{1, 2, 3}` is illegal.

### Duplication
```verilog
{5{1'b1}}           // 5'b11111 (or 5'd31 or 5'h1f)
{2{a,b,c}}          // The same as {a,b,c,a,b,c}
{3'd5, {2{3'd6}}}   // 9'b101_110_110. It's a concatenation of 101 with the second vector, which is two copies of 3'b110.
```

### Loops
```verilog
always @(*) begin
    integer i;

    for (i = 0; i < 100; i = i + 1) begin // ++ operator doesnt exist in verilog!
        out[i] <= in[99-i];
    end
end
```

## General
* `assign x, y = b;` does not exist!

## Verification
* Use `initial` & `forever`
    * You can have multiple `initial` blocks
    * (for HDLbits at least) all `forever` blocks need to be in an `initial` block.
* Example: https://www.chipverify.com/verification/directed-verification
* `#10 // this would then mean 10 timescales`
    * defining a timescale at the top of the file: https://www.chipverify.com/verilog/verilog-timescale