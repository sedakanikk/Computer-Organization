module mux_4x2(a, b, c, d, s1, s0, res);
	input a, b, c, d;
	input s1, s0;
	output res;

	wire r1, r2, r3, r4, e1, e2, e3, e4, ns0, ns1, d1, d2;
	// calculates reverse of data selector 
	not (ns0, s0);
	not (ns1, s1);
	// mux operations 
	and (e1, ns1, ns0);
	and (r1, e1, a);
	
	and (e2, ns1, s0);
	and (r2, e2, b);
	
	and (e3, s1, ns0);
	and (r3, e3, c);
	
	and (e4, s1, s0);
	and (r4, e4, d);
	
	or (d1, r1, r2);
	or (d2, r3, r4);
	or (res, d1, d2);
	
endmodule 
