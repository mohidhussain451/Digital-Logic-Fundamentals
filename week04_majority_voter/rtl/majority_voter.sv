module majority_voter(
    input switch1, //A
    input switch2, //B
    input switch3, // C
    
    output led0
    );
    // Only output if A AND B or A AND C or B AND C are on
    assign led0 = (switch1 & switch2) | (switch1 & switch3) | (switch2 & switch3);
endmodule
