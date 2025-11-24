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
-- CREATED		"Sun Nov 23 23:14:22 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY multiplexador8bits IS 
	PORT
	(
		SEL :  IN  STD_LOGIC;
		X :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Y :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		S :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END multiplexador8bits;

ARCHITECTURE bdf_type OF multiplexador8bits IS 

COMPONENT or8bits
	PORT(X : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Y : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	C :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	D :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;


BEGIN 



b2v_inst : or8bits
PORT MAP(X => C,
		 Y => D,
		 S => S);


D(3) <= Y(4) AND SEL;


D(2) <= Y(5) AND SEL;


C(5) <= X(5) AND SYNTHESIZED_WIRE_8;


C(7) <= X(7) AND SYNTHESIZED_WIRE_8;


C(4) <= X(4) AND SYNTHESIZED_WIRE_8;


C(6) <= X(6) AND SYNTHESIZED_WIRE_8;


C(0) <= X(0) AND SYNTHESIZED_WIRE_8;


D(5) <= Y(2) AND SEL;


C(1) <= X(1) AND SYNTHESIZED_WIRE_8;


D(4) <= Y(3) AND SEL;


C(3) <= X(3) AND SYNTHESIZED_WIRE_8;


D(7) <= Y(0) AND SEL;


C(2) <= X(2) AND SYNTHESIZED_WIRE_8;


D(6) <= Y(1) AND SEL;


D(0) <= Y(7) AND SEL;


D(1) <= Y(6) AND SEL;


SYNTHESIZED_WIRE_8 <= NOT(SEL);



END bdf_type;