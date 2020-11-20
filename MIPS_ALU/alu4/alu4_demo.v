// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

module alu4_demo
(
// {ALTERA_ARGS_BEGIN} DO NOT REMOVE THIS LINE!

	V,
	a,
	aluop,
	b,
	c3,
	r
// {ALTERA_ARGS_END} DO NOT REMOVE THIS LINE!

);

// {ALTERA_IO_BEGIN} DO NOT REMOVE THIS LINE!
output			V;
input	[2:0]	a;
input	[2:0]	aluop;
input	[2:0]	b;
output			c3;
output	[2:0]	r;

// {ALTERA_IO_END} DO NOT REMOVE THIS LINE!
// {ALTERA_MODULE_BEGIN} DO NOT REMOVE THIS LINE!

alu4 testme (a, b, aluop, r, V, c3);

// {ALTERA_MODULE_END} DO NOT REMOVE THIS LINE!
endmodule
