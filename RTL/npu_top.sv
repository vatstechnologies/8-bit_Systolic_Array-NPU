module npu_top (
    input logic clk,
    input logic rst,

    input logic [7:0] a0,
    input logic [7:0] a1,

    input logic [7:0] b0,
    input logic [7:0] b1,

    output logic [15:0] c00,
    output logic [15:0] c01,
    output logic [15:0] c10,
    output logic [15:0] c11
);

logic [7:0] a_wire_00;
logic [7:0] a_wire_10;

logic [7:0] b_wire_00;
logic [7:0] b_wire_01;

pe pe00 (
    .clk(clk),
    .rst(rst),
    .a_in(a0),
    .b_in(b0),
    .a_out(a_wire_00),
    .b_out(b_wire_00),
    .acc(c00)
);

pe pe01 (
    .clk(clk),
    .rst(rst),
    .a_in(a_wire_00),
    .b_in(b1),
    .a_out(),
    .b_out(b_wire_01),
    .acc(c01)
);

pe pe10 (
    .clk(clk),
    .rst(rst),
    .a_in(a1),
    .b_in(b_wire_00),
    .a_out(a_wire_10),
    .b_out(),
    .acc(c10)
);

pe pe11 (
    .clk(clk),
    .rst(rst),
    .a_in(a_wire_10),
    .b_in(b_wire_01),
    .a_out(),
    .b_out(),
    .acc(c11)
);

endmodule
