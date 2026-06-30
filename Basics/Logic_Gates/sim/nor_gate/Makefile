.PHONY: sim

sim:
	iverilog -o nor_gate ../../src/nor_gate.v ../../testbench/nor_tb.v
	vvp nor_gate

wave: sim
	gtkwave nor_tb.vcd
	
clean:
	rm -f nor_gate nor_tb.vcd

