module top (
    input  [9:0] sw,
    output [13:0] led
);
    // Half subtractor: sw[0]=A, sw[1]=B -> led[0]=Y, led[1]=Borrow
    half_sub hs (
        .a(sw[0]),
        .b(sw[1]),
        .y(led[0]),
        .borrow(led[1])
    );

    // Ones' complement adder: A=sw[5:2], B=sw[9:6] -> led[5:2]
    ones_compliment oc (
        .a(sw[5:2]),
        .b(sw[9:6]),
        .y(led[5:2])
    );

    // Twos' complement converter: sw[9:2] -> led[13:6]
    twos_compliment tc (
        .a(sw[9:2]),
        .y(led[13:6])
    );

    
endmodule