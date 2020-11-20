module xor_2x1(a, b, result);	

	input a, b;
	output result;
	wire z0, z1, na, nb;
	// calculates reverse of inputs a and b
	not (na, a);
	not (nb, b);
	// xor operations
	or (z0, b, a);
	or (z1, na, nb); 
	and (result, z0, z1);
	
endmodule 
