/*
AVOID INFERRED LATCHES: https://stackoverflow.com/questions/22459413/what-is-inferred-latch-and-how-it-is-created-when-it-is-missing-else-statement-i


*/


// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
            shut_off_computer = 0;
    end

    always @(*) begin
        if (~arrived && ~gas_tank_empty)
            keep_driving = 1;
        else
            keep_driving = 0;
    end

endmodule
