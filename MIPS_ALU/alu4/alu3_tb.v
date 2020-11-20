module alu3_tb;
// to do 32 bits alu
reg [2:0] t_aluop;
reg [2:0] t_a;
reg [2:0] t_b;
reg [2:0] t_r;
wire t_V;
wire t_c3;

alu32 my_gate( .a(t_a), .b(t_b), 
				.aluop(t_aluop), .r(t_r), .V(t_V) , .c3(t_c3) );
					
initial begin
	/******************** test cases ********************/
	
	//with 000 - AND
	#5
	t_aluop = 3'b000;
	t_a = 3'b010;
	t_b = 3'b101;
	
	#5
	t_a = 3'b101;
	t_b = 3'b010;

	//with 001 - OR
	#5
	t_aluop = 3'b001;
	t_a = 3'b010;
	t_b = 3'b010;
	
	#5
	t_a = 3'b010;
	t_b = 3'b100;
	
	//with 010 - ADD
	#5
	t_aluop = 3'b010;
	t_a = 3'b010;
	t_b = 3'b111;
	
	#5
	t_a = 3'b000;
	t_b = 3'b010;
	
	//with 110 - SUBTRACT
	#5
	t_aluop = 3'b110;
	t_a = 3'b010;
	t_b = 3'b111;
	
	#5
	t_a = 3'b101;
	t_b = 3'b001;
		
	// with 111 - SET-ON-LESS-THAN
	#5
	t_aluop = 3'b111;
	t_a = 3'b000;
	t_b = 3'b101;

	#5
	t_b = 3'b000;
	t_a = 3'b101;
	
end
endmodule 
