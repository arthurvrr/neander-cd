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
-- CREATED		"Sun Nov 23 20:36:56 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY DECODER IS 
	PORT
	(
		S :  IN  STD_LOGIC_VECTOR(0 TO 7);
		HLTout :  OUT  STD_LOGIC;
		JZout :  OUT  STD_LOGIC;
		JNout :  OUT  STD_LOGIC;
		JMPout :  OUT  STD_LOGIC;
		NOTout :  OUT  STD_LOGIC;
		ANDout :  OUT  STD_LOGIC;
		ORout :  OUT  STD_LOGIC;
		ADDout :  OUT  STD_LOGIC;
		LDAout :  OUT  STD_LOGIC;
		STAout :  OUT  STD_LOGIC;
		NOPout :  OUT  STD_LOGIC
	);
END DECODER;

ARCHITECTURE bdf_type OF DECODER IS 

SIGNAL	N4 :  STD_LOGIC;
SIGNAL	N5 :  STD_LOGIC;
SIGNAL	N6 :  STD_LOGIC;
SIGNAL	N7 :  STD_LOGIC;


BEGIN 



HLTout <= S(7) AND S(6) AND S(5) AND S(4);


N4 <= NOT(S(4));



ORout <= N7 AND S(6) AND N5 AND N4;


ADDout <= N7 AND N6 AND S(5) AND S(4);


LDAout <= N7 AND N6 AND S(5) AND N4;


STAout <= N7 AND N6 AND N5 AND S(4);


NOPout <= N7 AND N6 AND N5 AND N4;


JZout <= S(7) AND N6 AND S(5) AND N4;


N5 <= NOT(S(5));



N7 <= NOT(S(7));



N6 <= NOT(S(6));



JNout <= S(7) AND N6 AND N5 AND S(4);


JMPout <= S(7) AND N6 AND N5 AND N4;


NOTout <= N7 AND S(6) AND S(5) AND N4;


ANDout <= N7 AND S(6) AND S(5) AND N4;


END bdf_type;