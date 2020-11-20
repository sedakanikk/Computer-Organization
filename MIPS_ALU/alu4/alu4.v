module alu4(a, b, aluop, r, V, c3);
	input [2:0] a;
	input [2:0] b;
	input [2:0] aluop;
	wire [2:0] res0, res1, res2, res3;
	wire [2:0] cout;
	output [2:0] r;
	output V;
	output c3;
	wire [2:0] cin;
	// calculates cin and sends all of them to do some operations
	or (cin[0], aluop[2], aluop[2]);
	alu1 a0(a[0], b[0], res0[0], res1[0], res2[0], res3[0], aluop, cin[0], cout[0]);
	
	or (cin[1], cout[0], cout[0]);
	alu1 a1(a[1], b[1], res0[1], res1[1], res2[1], res3[1], aluop, cin[1], cout[1]);
	
	or (cin[2], cout[1], cout[1]);
	alu1 a2(a[2], b[2], res0[2], res1[2], res2[2], res3[2], aluop, cin[2], cout[2]);	
		
	// calculates V and set value of MSB
	wire set, backV;	
	xor_2x1 xV(cin[2], cout[2], backV);
	or (c3, cout[2], cout[2]);
	xor_2x1 xset(backV, res2[2], set);
	or (V, backV, backV);
	
	// decides the output with data selector of mux
	mux_4x2 m1(res0[1], res1[1], res2[1], res3[1], aluop[1], aluop[0], r[1]);
	mux_4x2 m2(res0[2], res1[2], res2[2], res3[2], aluop[1], aluop[0], r[2]);

	// least significant calculation was last done beacuse of less i 
	// less i is the set of the most significant bit
	mux_4x2 m0(res0[0], res1[0], res2[0], set, aluop[1], aluop[0], r[0]);
	

endmodule 
