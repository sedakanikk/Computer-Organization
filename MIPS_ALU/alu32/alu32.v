module alu32(a, b, aluop, r, V, c31);
	input [31:0] a;
	input [31:0] b;
	input [2:0] aluop;
	wire [31:0] res0, res1, res2, res3;
	wire [31:0] cout;
	output [31:0] r;
	output V;
	output c31;
	wire [31:0] cin;
	// calculates cin and sends all of them to do some operations
	or (cin[0], aluop[2], aluop[2]);
	alu1 a0(a[0], b[0], res0[0], res1[0], res2[0], res3[0], aluop, cin[0], cout[0]);
	
	or (cin[1], cout[0], cout[0]);
	alu1 a1(a[1], b[1], res0[1], res1[1], res2[1], res3[1], aluop, cin[1], cout[1]);
	
	or (cin[2], cout[1], cout[1]);
	alu1 a2(a[2], b[2], res0[2], res1[2], res2[2], res3[2], aluop, cin[2], cout[2]);
	
	or (cin[3], cout[2], cout[2]);
	alu1 a3(a[3], b[3], res0[3], res1[3], res2[3], res3[3], aluop, cin[3], cout[3]);
	
	or (cin[4], cout[3], cout[3]);
	alu1 a4(a[4], b[4], res0[4], res1[4], res2[4], res3[4], aluop, cin[4], cout[4]);
	
	or (cin[5], cout[4], cout[4]);
	alu1 a5(a[5], b[5], res0[5], res1[5], res2[5], res3[5], aluop, cin[5], cout[5]);
	
	or (cin[6], cout[5], cout[5]);
	alu1 a6(a[6], b[6], res0[6], res1[6], res2[6], res3[6], aluop, cin[6], cout[6]);
	
	or (cin[7], cout[6], cout[6]);
	alu1 a7(a[7], b[7], res0[7], res1[7], res2[7], res3[7], aluop, cin[7], cout[7]);
	
	or (cin[8], cout[7], cout[7]);
	alu1 a8(a[8], b[8], res0[8], res1[8], res2[8], res3[8], aluop, cin[8], cout[8]);

	or (cin[9], cout[8], cout[8]);
	alu1 a9(a[9], b[9], res0[9], res1[9], res2[9], res3[9], aluop, cin[9], cout[9]);

	or (cin[10], cout[9], cout[9]);
	alu1 a10(a[10], b[10], res0[10], res1[10], res2[10], res3[10], aluop, cin[10], cout[10]);

	or (cin[11], cout[10], cout[10]);
	alu1 a11(a[11], b[11], res0[11], res1[11], res2[11], res3[11], aluop, cin[11], cout[11]);

	or (cin[12], cout[11], cout[11]);
	alu1 a12(a[12], b[12], res0[12], res1[12], res2[12], res3[12], aluop, cin[12], cout[12]);

	or (cin[13], cout[12], cout[12]);
	alu1 a13(a[13], b[13], res0[13], res1[13], res2[13], res3[13], aluop, cin[13], cout[13]);

	or (cin[14], cout[13], cout[13]);
	alu1 a14(a[14], b[14], res0[14], res1[14], res2[14], res3[14], aluop, cin[14], cout[14]);

	or (cin[15], cout[14], cout[14]);
	alu1 a15(a[15], b[15], res0[15], res1[15], res2[15], res3[15], aluop, cin[15], cout[15]);

	or (cin[16], cout[15], cout[15]);
	alu1 a16(a[16], b[16], res0[16], res1[16], res2[16], res3[16], aluop, cin[16], cout[16]);

	or (cin[17], cout[16], cout[16]);
	alu1 a17(a[17], b[17], res0[17], res1[17], res2[17], res3[17], aluop, cin[17], cout[17]);

	or (cin[18], cout[17], cout[17]);
	alu1 a18(a[18], b[18], res0[18], res1[18], res2[18], res3[18], aluop, cin[18], cout[18]);

	or (cin[19], cout[18], cout[18]);
	alu1 a19(a[19], b[19], res0[19], res1[19], res2[19], res3[19], aluop, cin[19], cout[19]);

	or (cin[20], cout[19], cout[19]);
	alu1 a20(a[20], b[20], res0[20], res1[20], res2[20], res3[20], aluop, cin[20], cout[20]);

	or (cin[21], cout[20], cout[20]);
	alu1 a21(a[21], b[21], res0[21], res1[21], res2[21], res3[21], aluop, cin[21], cout[21]);

	or (cin[22], cout[21], cout[21]);
	alu1 a22(a[22], b[22], res0[22], res1[22], res2[22], res3[22], aluop, cin[22], cout[22]);

	or (cin[23], cout[22], cout[22]);
	alu1 a23(a[23], b[23], res0[23], res1[23], res2[23], res3[23], aluop, cin[23], cout[23]);

	or (cin[24], cout[23], cout[23]);
	alu1 a24(a[24], b[24], res0[24], res1[24], res2[24], res3[24], aluop, cin[24], cout[24]);

	or (cin[25], cout[24], cout[24]);
	alu1 a25(a[25], b[25], res0[25], res1[25], res2[25], res3[25], aluop, cin[25], cout[25]);

	or (cin[26], cout[25], cout[25]);
	alu1 a26(a[26], b[26], res0[26], res1[26], res2[26], res3[26], aluop, cin[26], cout[26]);

	or (cin[27], cout[26], cout[26]);
	alu1 a27(a[27], b[27], res0[27], res1[27], res2[27], res3[27], aluop, cin[27], cout[27]);

	or (cin[28], cout[27], cout[27]);
	alu1 a28(a[28], b[28], res0[28], res1[28], res2[28], res3[28], aluop, cin[28], cout[28]);

	or (cin[29], cout[28], cout[28]);
	alu1 a29(a[29], b[29], res0[29], res1[29], res2[29], res3[29], aluop, cin[29], cout[29]);

	or (cin[30], cout[29], cout[29]);
	alu1 a30(a[30], b[30], res0[30], res1[30], res2[30], res3[30], aluop, cin[30], cout[30]);

	or (cin[31], cout[30], cout[30]);
	alu1 a31(a[31], b[31], res0[31], res1[31], res2[31], res3[31], aluop, cin[31], cout[31]);
	
	// calculates V and set value of MSB
	wire set, backV;	
	xor_2x1 xV(cin[31], cout[31], backV);
	or (c31, cout[31], cout[31]);
	xor_2x1 xset(backV, res2[31], set);
	or (V, backV, backV);
	
	// decides the output with data selector of mux
	mux_4x2 m1(res0[1], res1[1], res2[1], res3[1], aluop[1], aluop[0], r[1]);
	mux_4x2 m2(res0[2], res1[2], res2[2], res3[2], aluop[1], aluop[0], r[2]);
	mux_4x2 m3(res0[3], res1[3], res2[3], res3[3], aluop[1], aluop[0], r[3]);
	mux_4x2 m4(res0[4], res1[4], res2[4], res3[4], aluop[1], aluop[0], r[4]);
	mux_4x2 m5(res0[5], res1[5], res2[5], res3[5], aluop[1], aluop[0], r[5]);
	mux_4x2 m6(res0[6], res1[6], res2[6], res3[6], aluop[1], aluop[0], r[6]);
	mux_4x2 m7(res0[7], res1[7], res2[7], res3[7], aluop[1], aluop[0], r[7]);
	mux_4x2 m8(res0[8], res1[8], res2[8], res3[8], aluop[1], aluop[0], r[8]);
	mux_4x2 m9(res0[9], res1[9], res2[9], res3[9], aluop[1], aluop[0], r[9]);
	mux_4x2 m10(res0[10], res1[10], res2[10], res3[10], aluop[1], aluop[0], r[10]);
	mux_4x2 m11(res0[11], res1[11], res2[11], res3[11], aluop[1], aluop[0], r[11]);
	mux_4x2 m12(res0[12], res1[12], res2[12], res3[12], aluop[1], aluop[0], r[12]);
	mux_4x2 m13(res0[13], res1[13], res2[13], res3[13], aluop[1], aluop[0], r[13]);
	mux_4x2 m14(res0[14], res1[14], res2[14], res3[14], aluop[1], aluop[0], r[14]);
	mux_4x2 m15(res0[15], res1[15], res2[15], res3[15], aluop[1], aluop[0], r[15]);
	mux_4x2 m16(res0[16], res1[16], res2[16], res3[16], aluop[1], aluop[0], r[16]);
	mux_4x2 m17(res0[17], res1[17], res2[17], res3[17], aluop[1], aluop[0], r[17]);
	mux_4x2 m18(res0[18], res1[18], res2[18], res3[18], aluop[1], aluop[0], r[18]);
	mux_4x2 m19(res0[19], res1[19], res2[19], res3[19], aluop[1], aluop[0], r[19]);
	mux_4x2 m20(res0[20], res1[20], res2[20], res3[20], aluop[1], aluop[0], r[20]);
	mux_4x2 m21(res0[21], res1[21], res2[21], res3[21], aluop[1], aluop[0], r[21]);
	mux_4x2 m22(res0[22], res1[22], res2[22], res3[22], aluop[1], aluop[0], r[22]);
	mux_4x2 m23(res0[23], res1[23], res2[23], res3[23], aluop[1], aluop[0], r[23]);
	mux_4x2 m24(res0[24], res1[24], res2[24], res3[24], aluop[1], aluop[0], r[24]);
	mux_4x2 m25(res0[25], res1[25], res2[25], res3[25], aluop[1], aluop[0], r[25]);
	mux_4x2 m26(res0[26], res1[26], res2[26], res3[26], aluop[1], aluop[0], r[26]);
	mux_4x2 m27(res0[27], res1[27], res2[27], res3[27], aluop[1], aluop[0], r[27]);
	mux_4x2 m28(res0[28], res1[28], res2[28], res3[28], aluop[1], aluop[0], r[28]);
	mux_4x2 m29(res0[29], res1[29], res2[29], res3[29], aluop[1], aluop[0], r[29]);
	mux_4x2 m30(res0[30], res1[30], res2[30], res3[30], aluop[1], aluop[0], r[30]);
	mux_4x2 m31(res0[31], res1[31], res2[31], res3[31], aluop[1], aluop[0], r[31]);
	// least significant calculation was last done beacuse of less i 
	// less i is the set of the most significant bit
	mux_4x2 m0(res0[0], res1[0], res2[0], set, aluop[1], aluop[0], r[0]);
	

endmodule 
