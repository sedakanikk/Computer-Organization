module instruction_memory_block(instruction, program_counter);

	input [31:0] program_counter;
	output reg [31:0] instruction;
	
	reg [31:0] instructions [255:0];

	always @ (program_counter) begin
		instruction = instructions[program_counter];
	end

endmodule
