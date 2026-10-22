// 8-bit twos' complement converter: invert all bits, then add 1.
module twos_compliment (
    input  [7:0] a,
    output [7:0] y
);
    wire [7:0] inv = ~a;
    wire [7:0] c;

    full_adder f0 (.a(inv[0]), .b(1'b0), .cin(1'b1), .sum(y[0]), .cout(c[0]));
    full_adder f1 (.a(inv[1]), .b(1'b0), .cin(c[0]), .sum(y[1]), .cout(c[1]));
    full_adder f2 (.a(inv[2]), .b(1'b0), .cin(c[1]), .sum(y[2]), .cout(c[2]));
    full_adder f3 (.a(inv[3]), .b(1'b0), .cin(c[2]), .sum(y[3]), .cout(c[3]));
    full_adder f4 (.a(inv[4]), .b(1'b0), .cin(c[3]), .sum(y[4]), .cout(c[4]));
    full_adder f5 (.a(inv[5]), .b(1'b0), .cin(c[4]), .sum(y[5]), .cout(c[5]));
    full_adder f6 (.a(inv[6]), .b(1'b0), .cin(c[5]), .sum(y[6]), .cout(c[6]));
    full_adder f7 (.a(inv[7]), .b(1'b0), .cin(c[6]), .sum(y[7]), .cout(c[7]));
endmodule