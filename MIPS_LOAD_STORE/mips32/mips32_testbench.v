`timescale 10ns/10ns
module mips32_testbench ();

	reg clock;
	wire result;
	
	mips32 test(clock);

	initial clock = 0;

	always begin 
		#15 clock=~clock;
	end

	initial begin
		$readmemb("registers.mem", test.contents.registers);
		$readmemb("instruction.mem", test.instruction_memory.instructions);
		$readmemb("data.mem", test.data_memory.data_mem);
	end


endmodule