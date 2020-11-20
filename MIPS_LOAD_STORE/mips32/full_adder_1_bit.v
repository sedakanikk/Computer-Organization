module full_adder_1_bit(result, cout, first, second, cin);
	output result, cout;
	input first, second, cin;
	wire abxor, abc, ab;

	xor_2x1 x1(abxor, first, second);
	xor_2x1 x2(result, abxor, cin);//result is seted

	and (abc, abxor, cin);
	and (ab, first, second);
	or (cout, abc, ab);//cout is seted

endmodule
