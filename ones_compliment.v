// 4-bit ones' complement addition with end-around carry.
// Two SEPARATE adder chains avoid a combinatorial loop:
//   stage 1: A + B            -> s1, c1
//   stage 2: s1 + c1 (as cin) -> result  (final carry discarded)
module ones_compliment (
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] y
);
    wire [3:0] s1;
    wire [3:0] carry1;
    wire [3:0] carry2;

    // Stage 1: plain add
    full_adder fa0 (.a(a[0]), .b(b[0]), .cin(1'b0),      .sum(s1[0]), .cout(carry1[0]));
    full_adder fa1 (.a(a[1]), .b(b[1]), .cin(carry1[0]), .sum(s1[1]), .cout(carry1[1]));
    full_adder fa2 (.a(a[2]), .b(b[2]), .cin(carry1[1]), .sum(s1[2]), .cout(carry1[2]));
    full_adder fa3 (.a(a[3]), .b(b[3]), .cin(carry1[2]), .sum(s1[3]), .cout(carry1[3]));

    // Stage 2: add the end-around carry back in
    full_adder fb0 (.a(s1[0]), .b(1'b0), .cin(carry1[3]), .sum(y[0]), .cout(carry2[0]));
    full_adder fb1 (.a(s1[1]), .b(1'b0), .cin(carry2[0]), .sum(y[1]), .cout(carry2[1]));
    full_adder fb2 (.a(s1[2]), .b(1'b0), .cin(carry2[1]), .sum(y[2]), .cout(carry2[2]));
    full_adder fb3 (.a(s1[3]), .b(1'b0), .cin(carry2[2]), .sum(y[3]), .cout(carry2[3]));
endmodule