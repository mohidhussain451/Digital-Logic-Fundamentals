module half_adder(
    input logic A,
    input logic B,
    output logic S, // Sum
    output logic CarryOut // The carried bit (ie. 1 + 1 in binary gives 0 carry 1, CarryOut would be 1)
    );
        assign S = A ^ B; // A XOR B 
        assign CarryOut = A & B; // A AND B
endmodule
