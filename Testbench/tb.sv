`timescale 1ns/1ps

module tb;

logic clk;
logic rst;

logic [7:0] a0;
logic [7:0] a1;

logic [7:0] b0;
logic [7:0] b1;

logic [15:0] c00;
logic [15:0] c01;
logic [15:0] c10;
logic [15:0] c11;

npu_top dut (
    .clk(clk),
    .rst(rst),
    .a0(a0),
    .a1(a1),
    .b0(b0),
    .b1(b1),
    .c00(c00),
    .c01(c01),
    .c10(c10),
    .c11(c11)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    clk = 0;
    rst = 1;

    a0 = 0;
    a1 = 0;

    b0 = 0;
    b1 = 0;

    #20;
    rst = 0;

    a0 = 1;
    a1 = 3;

    b0 = 5;
    b1 = 6;

    #10;

    a0 = 2;
    a1 = 4;

    b0 = 7;
    b1 = 8;

    #100;

    $finish;
end

endmodule
