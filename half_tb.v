`timescale 1ns/1ps
module half_adder_tb;
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,half_adder_tb);
end
 reg  a_tb;
 reg  b_tb;
 wire carry_tb;
 wire sum_tb;

half_adder add(
    .a(a_tb),
    .b(b_tb),
    .carry(carry_tb),
    .sum(sum_tb)
);
initial begin
    a_tb=1'b0;
    b_tb=1'b0;
    #5;
    a_tb=1'b0;
    b_tb=1'b1;
    #5;
    a_tb=1'b1;
    b_tb=1'b0;
    #5;
    a_tb=1'b1;
    b_tb=1'b1;
    #40;
    $finish;
end
endmodule