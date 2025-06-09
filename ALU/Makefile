# Testbench targets
top_tb:
	iverilog -o top_test.vvp top_tb.v top.v controller.v ALU_7bit.v ALU_NOT_7bit.v ALU_SHR_7bit.v
	vvp top_test.vvp
	gtkwave top_test.vcd

alu_tb:
	iverilog -o alu_test.vvp ALU_7bit_tb.v ALU_7bit.v ALU_NOT_7bit.v ALU_SHR_7bit.v
	vvp alu_test.vvp
	gtkwave alu_7bit_test.vcd

controller_tb:
	iverilog -o controller_test.vvp controller_tb.v controller.v
	vvp controller_test.vvp
	gtkwave controller_test.vcd

# Clean target
clean:
	rm -f *.vvp *.vcd
