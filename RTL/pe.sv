module pe (
    input  logic clk,
    input  logic rst,

    input  logic [7:0] a_in,
    input  logic [7:0] b_in,

    output logic [7:0] a_out,
    output logic [7:0] b_out,

    output logic [15:0] acc
);

always_ff @(posedge clk) begin
    if (rst) begin
        acc   <= 0;
        a_out <= 0;
        b_out <= 0;
    end
    else begin
        acc   <= acc + (a_in * b_in);

        a_out <= a_in;
        b_out <= b_in;
    end
end

endmodule
