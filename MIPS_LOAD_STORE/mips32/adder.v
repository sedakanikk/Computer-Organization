module adder(result, first, second, c, cout);

	output [31:0] result;
	input signed [31:0] first;
	input [31:0]second;
	input [31:0] c;
	output cout;
	
	full_adder_1_bit f1(result[0],c[1],first[0],second[0],1'b0);
	full_adder_1_bit f2(result[1],c[2],first[1],second[1],c[1]);
	full_adder_1_bit f3(result[2],c[3],first[2],second[2],c[2]);
	full_adder_1_bit f4(result[3],c[4],first[3],second[3],c[3]);
	full_adder_1_bit f5(result[4],c[5],first[4],second[4],c[4]);
	full_adder_1_bit f6(result[5],c[6],first[5],second[5],c[5]);
	full_adder_1_bit f7(result[6],c[7],first[6],second[6],c[6]);
	full_adder_1_bit f8(result[7],c[8],first[7],second[7],c[7]);
	full_adder_1_bit f9(result[8],c[9],first[8],second[8],c[8]);
	full_adder_1_bit f10(result[9],c[10],first[9],second[9],c[9]);
	full_adder_1_bit f11(result[10],c[11],first[10],second[10],c[10]);
	full_adder_1_bit f12(result[11],c[12],first[11],second[11],c[11]);
	full_adder_1_bit f13(result[12],c[13],first[12],second[12],c[12]);
	full_adder_1_bit f14(result[13],c[14],first[13],second[13],c[13]);
	full_adder_1_bit f15(result[14],c[15],first[14],second[14],c[14]);
	full_adder_1_bit f16(result[15],c[16],first[15],second[15],c[15]);
	full_adder_1_bit f17(result[16],c[17],first[16],second[16],c[16]);
	full_adder_1_bit f18(result[17],c[18],first[17],second[17],c[17]);
	full_adder_1_bit f19(result[18],c[19],first[18],second[18],c[18]);
	full_adder_1_bit f20(result[19],c[20],first[19],second[19],c[19]);
	full_adder_1_bit f21(result[20],c[21],first[20],second[20],c[20]);
	full_adder_1_bit f22(result[21],c[22],first[21],second[21],c[21]);
	full_adder_1_bit f23(result[22],c[23],first[22],second[22],c[22]);
	full_adder_1_bit f24(result[23],c[24],first[23],second[23],c[23]);
	full_adder_1_bit f25(result[24],c[25],first[24],second[24],c[24]);
	full_adder_1_bit f26(result[25],c[26],first[25],second[25],c[25]);
	full_adder_1_bit f27(result[26],c[27],first[26],second[26],c[26]);
	full_adder_1_bit f28(result[27],c[28],first[27],second[27],c[27]);
	full_adder_1_bit f29(result[28],c[29],first[28],second[28],c[28]);
	full_adder_1_bit f30(result[29],c[30],first[29],second[29],c[29]);
	full_adder_1_bit f31(result[30],c[31],first[30],second[30],c[30]);
	full_adder_1_bit f32(result[31],cout,first[31],second[31],c[31]);
	
endmodule
