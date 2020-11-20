module mips32(clock);

	input clock;
	
	reg[31:0] PC = 32'b0;
	wire [31:0] instruction;
	
	// to parse instruction
	reg [4:0] rs, rt; 
	reg [15:0] immediate;
	reg [5:0] opcode;
	
	// signals
	wire read_reg_signal, write_reg_signal;
	wire read_mem_signal, write_mem_signal;
	
	// Registers contents
	wire [31:0] write_data, rs_content, rt_content, memory_read_data;
	
	instruction_memory_block instruction_memory (instruction, PC);
	
	control_unit signals (read_reg_signal, write_reg_signal,read_mem_signal, write_mem_signal, opcode);
								 
	extender ex1(write_data, opcode, rs_content, immediate);
	
	data_memory_block data_memory (memory_read_data, write_data, rt_content, opcode, read_mem_signal, write_mem_signal, clk);
	
	registers_block contents (rs_content, rt_content, write_data, rs, rt, opcode, 
									read_reg_signal, write_reg_signal, clock);
	

	
	always @(instruction) begin
		$display("PC: %2d\nopcode: %6b\nrs: %6b, rs content: %32b\nrt: %6b, rt content: %32b", PC, opcode, rs, rs_content, rt, rt_content);
		$display("result : %32b", data_memory.data_mem[data_memory.address]);
		$display("address : %32b\n", data_memory.address);

	end
	// PC operations
	always @(posedge clock) begin 
		PC = PC+1;
		if (PC==8'd19)
		begin
			$display("%d tests completed.",PC-1);
			$finish;
		end
	end
	
	always @(instruction) begin
		opcode = instruction[31:26];
		rt = instruction[20:16];
		rs = instruction[25:21];
		immediate = instruction[15:0];
	end
endmodule
