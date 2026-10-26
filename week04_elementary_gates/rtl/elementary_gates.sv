module elementary_gates(
    // Take input from 2 switches, flicking the switch ON (1) and leaving it OFF (0)
	input switch1,
	input switch2,
	
	// Output of the operator is displayed using the LEDs, each LED corresponds to a different bitwise operator
	output led0,
	output led1,
	output led2,
	output led3,
	output led4,
	output led5,
	output led6
    );
    assign led0 = switch1 & switch2; // AND   
    assign led1 = switch1 | switch2; // OR
    assign led2 = ~switch1; // NOT
    assign led3 = switch1 ^ switch2; // XOR
    assign led4 = ~(switch1 & switch2); // NAND
    assign led5 = ~(switch1 | switch2); // NOR
    assign led6 = ~(switch1 ^ switch2); // XNOR
endmodule
