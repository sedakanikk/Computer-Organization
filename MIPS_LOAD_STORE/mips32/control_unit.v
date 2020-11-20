module control_unit(RegRead, RegWrite, MemRead, MemWrite, opcode);
	
	output RegRead, RegWrite, MemRead, MemWrite;
	input [5:0] opcode;
	
	wire a1, a2, a22, a3, a4, a44, n0, n1, n2;
	
	not(n0, opcode[5]);
	and(a1, n0, opcode[2]);
	and(a2, opcode[5], opcode[4]);
	and(a22, a2, opcode[3]);
	or(RegWrite, a1, a22);

	or(RegRead, opcode[5], opcode[5]);
	
	and(a3, opcode[5], opcode[2]);
	not(n1, opcode[4]);
	not(n2, opcode[3]);
	and(a4, opcode[5], n1);
	and(a44, a4, n2);
	or(MemRead, a3, a44);
	
	and(MemWrite, opcode[5], opcode[3]);
	
endmodule
