// 2-Input AND Gate Design Module
module and_gate (
    input wire a,
    input wire b,
    output wire y
);

    // Continuous assignment using the bitwise AND operator
    assign y = a & b;

endmodule
