module full_adder(
    input logic A,
    input logic B,
    input logic CarryIn, // The carried bit from the previous addition 
    output logic S, // Sum
    output logic CarryOut // The carried bit (ie. 1 + 1 in binary gives 0 carry 1, CarryOut would be 1)
    );
        assign S = B ^ (A ^ CarryIn);
        assign CarryOut = (A & B) | (A & CarryIn) | (B & CarryIn);
endmodule
