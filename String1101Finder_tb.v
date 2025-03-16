module String1101Finder_tb;

    // Inputs
    reg c0;
    reg c1;
    reg in;

    // Outputs
    wire out;
    wire next0;
    wire next1;

    String1101Finder dut (
        .c0(c0), 
        .c1(c1), 
        .in(in), 
        .out(out), 
        .next0(next0), 
        .next1(next1)
    );

    initial begin

        c0 = 0;
        c1 = 0;
        in = 0;

        // Test all combinations in a loop
        repeat (8) begin
            // Wait for some time to observe the output
            #10; // Adjust the delay as needed
            
            // Display the current state
            $display("c0=%b, c1=%b, in=%b -> out=%b, next0=%b, next1=%b", c0, c1, in, out, next0, next1);
            
            // Change inputs for the next iteration
            {c0, c1, in} = {c0, c1, in} + 1; // Increment the inputs
        end

        // Finish simulation
        $finish;
    end
      
endmodule
