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

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Fri Nov 28 13:25:51 2025"

module UnidadeControle(
	t0,
	t1,
	t2,
	t3,
	t4,
	t5,
	t6,
	t7,
	or_op,
	and_op,
	add_op,
	lda_op,
	sta_op,
	not_op,
	nop_op,
	jz_op,
	jn_op,
	jmp_op,
	n_flag,
	z_flag,
	cargaREM,
	incrementaPC,
	cargaRI,
	sel,
	cargaRDM,
	read,
	write,
	cargaAC,
	cargaNZ,
	cargaPC,
	goto_t0,
	ULA_Y,
	ULA_ADD,
	ULA_AND,
	ULA_OR,
	ULA_NOT
);


input wire	t0;
input wire	t1;
input wire	t2;
input wire	t3;
input wire	t4;
input wire	t5;
input wire	t6;
input wire	t7;
input wire	or_op;
input wire	and_op;
input wire	add_op;
input wire	lda_op;
input wire	sta_op;
input wire	not_op;
input wire	nop_op;
input wire	jz_op;
input wire	jn_op;
input wire	jmp_op;
input wire	n_flag;
input wire	z_flag;
output wire	cargaREM;
output wire	incrementaPC;
output wire	cargaRI;
output wire	sel;
output wire	cargaRDM;
output wire	read;
output wire	write;
output wire	cargaAC;
output wire	cargaNZ;
output wire	cargaPC;
output wire	goto_t0;
output wire	ULA_Y;
output wire	ULA_ADD;
output wire	ULA_AND;
output wire	ULA_OR;
output wire	ULA_NOT;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;

assign	cargaRI = t2;
assign	cargaAC = SYNTHESIZED_WIRE_32;
assign	cargaNZ = SYNTHESIZED_WIRE_32;
assign	cargaPC = SYNTHESIZED_WIRE_24;
assign	ULA_NOT = SYNTHESIZED_WIRE_15;



assign	cargaREM = SYNTHESIZED_WIRE_0 | t0 | SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 = t3 & SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_3 & t3;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_34 | SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_35 = jn_op & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_34 = jz_op & SYNTHESIZED_WIRE_7;

assign	sel = t5 & SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_6 =  ~n_flag;

assign	SYNTHESIZED_WIRE_7 =  ~z_flag;

assign	cargaRDM = sta_op & t6;

assign	read = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | t1;

assign	SYNTHESIZED_WIRE_1 = t5 & SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_9 = t4 & SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_10 = t6 & SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_37 = lda_op | or_op | and_op | add_op;

assign	write = t7 & sta_op;

assign	SYNTHESIZED_WIRE_16 = t7 & SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_33 = sta_op | add_op | lda_op | or_op | jmp_op | and_op | SYNTHESIZED_WIRE_38 | SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_15 = t3 & not_op;

assign	SYNTHESIZED_WIRE_24 = t5 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_38 | jmp_op | SYNTHESIZED_WIRE_39;

assign	goto_t0 = SYNTHESIZED_WIRE_22 | SYNTHESIZED_WIRE_23 | SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_22 = t7 & SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_23 = t3 & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_26 = SYNTHESIZED_WIRE_34 | not_op | nop_op | SYNTHESIZED_WIRE_35;

assign	ULA_Y = t7 & lda_op;

assign	ULA_ADD = t7 & add_op;

assign	ULA_AND = t7 & and_op;

assign	SYNTHESIZED_WIRE_39 = n_flag & jn_op;

assign	ULA_OR = t7 & or_op;

assign	SYNTHESIZED_WIRE_38 = z_flag & jz_op;

assign	SYNTHESIZED_WIRE_30 = t4 & SYNTHESIZED_WIRE_36;


or5_0	b2v_inst7(
	.IN1(sta_op),
	.IN3(add_op),
	.IN2(lda_op),
	.IN5(and_op),
	.IN4(or_op),
	.OUT(SYNTHESIZED_WIRE_36));

assign	incrementaPC = SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_31 | t1;


endmodule

module or5_0(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

endmodule
