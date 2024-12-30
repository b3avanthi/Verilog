module full_adder(
    input a,
    input b,
    input c,
    output sum,
    output c_out
);
    // Module functionality here
    assign sum = a ^ b^c;       // XOR operation
    assign c_out = (a & b) | c&(a|b) ;     // AND operation
endmodule
