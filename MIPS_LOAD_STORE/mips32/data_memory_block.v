module data_memory_block(read_data, address, write_data, opcode, sig_mem_read, sig_mem_write, clk);
	output reg [31:0] read_data;
	input  [31:0] address, write_data;
	input [5:0] opcode;
	input sig_mem_read, sig_mem_write;
	input clk;
	
	reg [31:0] data_mem [1220:0];

	always @(address) begin
		if(sig_mem_write) begin
			if(opcode == 6'h28) begin
				data_mem[address][7:0] = write_data[7:0];
			end
			else if(opcode == 6'h29) begin
				data_mem[address][15:0] = write_data[15:0];
			end
			else begin
				data_mem[address] = write_data;
			end
			// write to file
			$writememb("data.mem", data_mem);
		end
	end
	
	always @(address) begin
		if(sig_mem_read) begin
			read_data = data_mem[address];
		end
	end
	
endmodule
