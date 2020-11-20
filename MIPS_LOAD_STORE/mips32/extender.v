module extender(result, opcode, rs_content, immediate);
	
	input [5:0] opcode;
	input [15:0] immediate;
	input [31:0] rs_content; //inputs
	
	output reg [31:0] result; //output
	

	reg signed [31:0] signed_rs, signed_rt; 
	reg [31:0] signExtend, zeroExtend;

	always @ (rs_content, immediate) begin
		
		// signed value assigment
		signed_rs = rs_content;
			
		if(opcode != 6'h0) begin
			
			signExtend = {{16{immediate[15]}}, immediate};
			zeroExtend = {{16{1'b0}}, immediate};
			
			case(opcode)

				6'b010101 : // lui
					result = {immediate, {16{1'b0}}};
				6'h28 : // sb
					result = signed_rs + signExtend;
				6'h29 : // sh
					result = signed_rs + signExtend;
				6'h2b : // sw
					result = signed_rs + signExtend;
				6'h23 : // lw
					result = signed_rs + signExtend;
				6'h24 : // lbu
					result = signed_rs + signExtend;
				6'h25 : // lhu
					result = signed_rs + signExtend;
				6'h20 : // ll
					result = signed_rs + zeroExtend;
				6'h21 : // ll
					result = signed_rs + zeroExtend;
				
			endcase
		end
	end
endmodule