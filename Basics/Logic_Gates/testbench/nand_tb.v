`timescale 1ps/1ps

module nand_tb;
    reg a, b;
    wire y;

    nand_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        
        $dumpfile("Basics/Logic_Gates/sim/nand_gate/nand_tb.vcd");
        $dumpvars(0, nand_tb);

        // Test case 1: a=0, b=0
        a = 0; b = 0;
        #10;
        $display("Test case 1: a=%b, b=%b, y=%b", a, b, y);

        // Test case 2: a=0, b=1
        a = 0; b = 1;
        #10;
        $display("Test case 2: a=%b, b=%b, y=%b", a, b, y);

        // Test case 3: a=1, b=0
        a = 1; b = 0;
        #10;
        $display("Test case 3: a=%b, b=%b, y=%b", a, b, y);

        // Test case 4: a=1, b=1
        a = 1; b = 1;
        #10;
        $display("Test case 4: a=%b, b=%b, y=%b", a, b, y);

        $stop;
    end
endmodule