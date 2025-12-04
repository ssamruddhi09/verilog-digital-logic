module half_adder (
    input  a,
    input  b,
    output sum,
    output carry
);

    assign sum   = a ^ b;   // XOR
    assign carry = a & b;   // AND

endmodule
