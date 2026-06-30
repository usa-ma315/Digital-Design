`timescale 1ps/1ps

module nor_tb;
    reg a,b;
    wire y;
    nor_gate uut(
        .a(a),
        .b(b),
        .y(y)
    );
    initial begin 
        $dumpfile("nor_tb.vcd");
        $dumpvars(0,nor_tb);
        a=0; b=0;
        #10;
        a=0; b=1;
        #10;
        a=1; b=0;
        #10;
        a=1; b=1;
        #10;
        $finish;
    end
endmodule