module alu1(a, b, res0, res1, res2, res3, aluop, cin, cout);
	input a;
	input b;
	input [2:0] aluop;
	output res0, res1, res2, res3;
	input cin;
	output cout;
	wire y1, y2, y3, y4, y5, y6, y7, y8, y9, z0, z1, not0, not1;
	// 1 bit alu operations to calculate results
	xor_2x1 x(aluop[2], b, y1);
	or (y2, y1, a);	
	and (y3, y1, a);	
	not (y4, y3);	
	and (y5, y2, y4);	
	and (y6, y5, cin);	
	or (cout, y6, y3);
	not (y7, y6);
	or (y8, y5, cin);
	and (y9, y7, y8);
	// legs of mux
	or (res0, y3, y3);
	or (res1, y2, y2);
	or (res2, y9, y9);
	or (res3, 1'b0, 1'b0);

endmodule 