module tb_majority_voter;

    logic switch1, switch2, switch3;
    logic led0;

    majority_voter uut(
        .switch1(switch1),
        .switch2(switch2),
        .switch3(switch3),
        .led0(led0)
    );
    
    initial begin
        // 2^3 possible inputs
        switch1 = 0; switch2 = 0; switch3 = 0; // 0
        #10; // Wait 10 time units (10ns)
        
        // Apply next input state at t = 10ns
        switch1 = 0; switch2 = 0; switch3 = 1; // 1
        #10; // Wait 10 time units (20ns)
        
        switch1 = 0; switch2 = 1; switch3 = 0; // 2
        #10;
        
        switch1 = 0; switch2 = 1; switch3 = 1; // 3
        #10;
        
        switch1 = 1; switch2 = 0; switch3 = 0; // 4
        #10;
        
        switch1 = 1; switch2 = 0; switch3 = 1; // 5
        #10;
        
        switch1 = 1; switch2 = 1; switch3 = 0; // 6
        #10;
        
        switch1 = 1; switch2 = 1; switch3 = 1; // 7
        #10;
        $finish; // Stop the simulation
    end
endmodule
