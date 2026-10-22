// Half subtractor: Y = A - B (difference), Borrow when A < B
module half_sub (
    input  a,
    input  b,
    output y,
    output borrow
);
    assign y      = a ^ b;
    assign borrow = ~a & b;
endmodule