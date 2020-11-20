// setted but can not used
module sign_extend(extended, immediate);

	output reg [31:0] extended;
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
	
	or(extended[16], immediate[15], immediate[15]);
	or(extended[17], immediate[15], immediate[15]);
	or(extended[18], immediate[15], immediate[15]);
	or(extended[19], immediate[15], immediate[15]);
	or(extended[20], immediate[15], immediate[15]);
	or(extended[21], immediate[15], immediate[15]);
	or(extended[22], immediate[15], immediate[15]);
	or(extended[23], immediate[15], immediate[15]);
	or(extended[24], immediate[15], immediate[15]);
	or(extended[25], immediate[15], immediate[15]);
	or(extended[26], immediate[15], immediate[15]);
	or(extended[27], immediate[15], immediate[15]);
	or(extended[28], immediate[15], immediate[15]);
	or(extended[29], immediate[15], immediate[15]);
	or(extended[30], immediate[15], immediate[15]);
	or(extended[31], immediate[15], immediate[15]);




endmodule
