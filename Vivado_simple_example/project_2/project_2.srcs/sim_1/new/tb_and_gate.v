`timescale 1ns / 1ps

module tb_and_gate();

    // Inputs are declared as registers (reg) to hold values
    reg a;
    reg b;
    
    // Outputs are declared as wires to observe the response
    wire y;

    // Instantiate the Unit Under Test (UUT)
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Stimulus block
    initial begin
        // Display a header in the Tcl Console
        $display("Time\t A\t B\t Y");
        $monitor("%0tns\t %b\t %b\t %b", $time, a, b, y);

        // Case 1: Both inputs low
        a = 0; b = 0;
        #10;
        
        // Case 2: Input B high
        a = 0; b = 1;
        #10;
        
        // Case 3: Input A high
        a = 1; b = 0;
        #10;
        
        // Case 4: Both inputs high
        a = 1; b = 1;
        #10;

        // End simulation safely
        $finish;
    end

endmodule
