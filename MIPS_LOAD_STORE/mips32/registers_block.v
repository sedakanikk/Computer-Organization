module registers_block(read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, opcode, signal_regRead, signal_regWrite, clk);
	output reg [31:0] read_data_1, read_data_2;
	input [31:0] write_data;
	input [4:0] read_reg_1, read_reg_2;
	input [5:0] opcode;
	input signal_regRead, signal_regWrite, clk;

	reg [31:0] registers [17:0];
	
	always @(write_data) begin
		// Write
		if(signal_regWrite) begin
			if(opcode == 6'h24)begin
				registers[read_reg_2][7:0] = write_data[7:0];
			end
			if(opcode == 6'h25)begin
				registers[read_reg_2][15:0] = write_data[15:0];
			end
			else begin
				registers[read_reg_2] = write_data;
			end
			// update the file
			$writememb("registers.mem",registers);
		end
	end
	
	always @(read_reg_1, read_reg_2) begin
		// Read
		if(signal_regRead) begin
			read_data_1 = registers[read_reg_1];
			read_data_2 = registers[read_reg_2];
		end
	end
	
endmodule
