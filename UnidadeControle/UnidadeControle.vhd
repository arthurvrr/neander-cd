-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Mon Dec 01 22:38:17 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY UnidadeControle IS 
	PORT
	(
		t0 :  IN  STD_LOGIC;
		t1 :  IN  STD_LOGIC;
		t2 :  IN  STD_LOGIC;
		t3 :  IN  STD_LOGIC;
		t4 :  IN  STD_LOGIC;
		t5 :  IN  STD_LOGIC;
		t6 :  IN  STD_LOGIC;
		t7 :  IN  STD_LOGIC;
		or_op :  IN  STD_LOGIC;
		and_op :  IN  STD_LOGIC;
		add_op :  IN  STD_LOGIC;
		lda_op :  IN  STD_LOGIC;
		sta_op :  IN  STD_LOGIC;
		not_op :  IN  STD_LOGIC;
		nop_op :  IN  STD_LOGIC;
		jz_op :  IN  STD_LOGIC;
		jn_op :  IN  STD_LOGIC;
		jmp_op :  IN  STD_LOGIC;
		n_flag :  IN  STD_LOGIC;
		z_flag :  IN  STD_LOGIC;
		cargaREM :  OUT  STD_LOGIC;
		incrementaPC :  OUT  STD_LOGIC;
		cargaRI :  OUT  STD_LOGIC;
		sel :  OUT  STD_LOGIC;
		cargaRDM :  OUT  STD_LOGIC;
		read :  OUT  STD_LOGIC;
		write :  OUT  STD_LOGIC;
		cargaAC :  OUT  STD_LOGIC;
		cargaNZ :  OUT  STD_LOGIC;
		cargaPC :  OUT  STD_LOGIC;
		goto_t0 :  OUT  STD_LOGIC;
		ULA_Y :  OUT  STD_LOGIC;
		ULA_ADD :  OUT  STD_LOGIC;
		ULA_AND :  OUT  STD_LOGIC;
		ULA_OR :  OUT  STD_LOGIC;
		ULA_NOT :  OUT  STD_LOGIC
	);
END UnidadeControle;

ARCHITECTURE bdf_type OF UnidadeControle IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT or5_0
	PORT(IN1 : IN STD_LOGIC;
		 IN3 : IN STD_LOGIC;
		 IN2 : IN STD_LOGIC;
		 IN5 : IN STD_LOGIC;
		 IN4 : IN STD_LOGIC;
		 OUT : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF or5_0: COMPONENT IS true;
ATTRIBUTE noopt OF or5_0: COMPONENT IS true;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;


BEGIN 
cargaRI <= t2;
cargaAC <= SYNTHESIZED_WIRE_32;
cargaNZ <= SYNTHESIZED_WIRE_32;
cargaPC <= SYNTHESIZED_WIRE_24;
ULA_NOT <= SYNTHESIZED_WIRE_15;



cargaREM <= SYNTHESIZED_WIRE_0 OR t0 OR SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_0 <= t3 AND SYNTHESIZED_WIRE_33;


SYNTHESIZED_WIRE_31 <= SYNTHESIZED_WIRE_3 AND t3;


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_34 OR SYNTHESIZED_WIRE_35;


SYNTHESIZED_WIRE_35 <= jn_op AND SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_34 <= jz_op AND SYNTHESIZED_WIRE_7;


sel <= t5 AND SYNTHESIZED_WIRE_36;


SYNTHESIZED_WIRE_6 <= NOT(n_flag);



SYNTHESIZED_WIRE_7 <= NOT(z_flag);



cargaRDM <= sta_op AND t6;


read <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR t1;


SYNTHESIZED_WIRE_1 <= t5 AND SYNTHESIZED_WIRE_36;


SYNTHESIZED_WIRE_9 <= t4 AND SYNTHESIZED_WIRE_33;


SYNTHESIZED_WIRE_10 <= t6 AND SYNTHESIZED_WIRE_37;


SYNTHESIZED_WIRE_37 <= lda_op OR or_op OR and_op OR add_op;


write <= t7 AND sta_op;


SYNTHESIZED_WIRE_16 <= t7 AND SYNTHESIZED_WIRE_37;


SYNTHESIZED_WIRE_32 <= SYNTHESIZED_WIRE_15 OR SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_33 <= sta_op OR add_op OR lda_op OR or_op OR jmp_op OR and_op OR SYNTHESIZED_WIRE_38 OR SYNTHESIZED_WIRE_39;


SYNTHESIZED_WIRE_15 <= t3 AND not_op;


SYNTHESIZED_WIRE_24 <= t5 AND SYNTHESIZED_WIRE_19;


SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_38 OR jmp_op OR SYNTHESIZED_WIRE_39;


goto_t0 <= SYNTHESIZED_WIRE_22 OR SYNTHESIZED_WIRE_23 OR SYNTHESIZED_WIRE_24;


SYNTHESIZED_WIRE_22 <= t7 AND SYNTHESIZED_WIRE_36;


SYNTHESIZED_WIRE_23 <= t3 AND SYNTHESIZED_WIRE_26;


SYNTHESIZED_WIRE_26 <= SYNTHESIZED_WIRE_34 OR not_op OR nop_op OR SYNTHESIZED_WIRE_35;


ULA_Y <= t7 AND lda_op;


ULA_ADD <= t7 AND add_op;


ULA_AND <= t7 AND and_op;


SYNTHESIZED_WIRE_39 <= n_flag AND jn_op;


ULA_OR <= t7 AND or_op;


SYNTHESIZED_WIRE_38 <= z_flag AND jz_op;


SYNTHESIZED_WIRE_30 <= t4 AND SYNTHESIZED_WIRE_36;


b2v_inst7 : or5_0
PORT MAP(IN1 => sta_op,
		 IN3 => add_op,
		 IN2 => lda_op,
		 IN5 => and_op,
		 IN4 => or_op,
		 OUT => SYNTHESIZED_WIRE_36);


incrementaPC <= SYNTHESIZED_WIRE_30 OR SYNTHESIZED_WIRE_31 OR t1;


END bdf_type;