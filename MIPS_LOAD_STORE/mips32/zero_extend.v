// setted but can not used 
module zero_extend(extended, immediate);

	output [31:0] extended;
	input [15:0] immediate;

	or(extended[0], immediate[0], immediate[0]);
	or(extended[1], immediate[1], immediate[1]);
	or(extended[2], immediate[2], immediate[2]);
	or(extended[3], immediate[3], immediate[3]);
	or(extended[4], immediate[4], immediate[4]);
	or(extended[5], immediate[5], immediate[5]);
	or(extended[6], immediate[6], immediate[6]);
	or(extended[7], immediate[7], immediate[7]);
	or(extended[8], immediate[8], immediate[8]);
	or(extended[9], immediate[9], immediate[9]);
	or(extended[10], immediate[10], immediate[10]);
	or(extended[11], immediate[11], immediate[11]);
	or(extended[12], immediate[12], immediate[12]);
	or(extended[13], immediate[13], immediate[13]);
	or(extended[14], immediate[14], immediate[14]);
	or(extended[15], immediate[15], immediate[15]);
	
	or(extended[16], 1'b0, 1'b0);
	or(extended[17], 1'b0, 1'b0);
	or(extended[18], 1'b0, 1'b0);
	or(extended[19], 1'b0, 1'b0);
	or(extended[20], 1'b0, 1'b0);
	or(extended[21], 1'b0, 1'b0);
	or(extended[22], 1'b0, 1'b0);
	or(extended[23], 1'b0, 1'b0);
	or(extended[24], 1'b0, 1'b0);
	or(extended[25], 1'b0, 1'b0);
	or(extended[26], 1'b0, 1'b0);
	or(extended[27], 1'b0, 1'b0);
	or(extended[28], 1'b0, 1'b0);
	or(extended[29], 1'b0, 1'b0);
	or(extended[30], 1'b0, 1'b0);
	or(extended[31], 1'b0, 1'b0);
	
	
	
endmodule
