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
-- CREATED		"Thu Nov 27 13:56:27 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY contador3bits IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		enable :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END contador3bits;

ARCHITECTURE bdf_type OF contador3bits IS 

COMPONENT mux_2_1
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 SEL : IN STD_LOGIC;
		 S : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_16 <= '1';



b2v_inst : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(0),
		 B => SYNTHESIZED_WIRE_0,
		 SEL => enable,
		 S => SYNTHESIZED_WIRE_4);


b2v_inst10 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(2),
		 B => SYNTHESIZED_WIRE_1,
		 SEL => enable,
		 S => SYNTHESIZED_WIRE_8);


PROCESS(clock,enable,SYNTHESIZED_WIRE_16)
BEGIN
IF (enable = '0') THEN
	S_ALTERA_SYNTHESIZED(2) <= '0';
ELSIF (SYNTHESIZED_WIRE_16 = '0') THEN
	S_ALTERA_SYNTHESIZED(2) <= '1';
ELSIF (RISING_EDGE(clock)) THEN
	S_ALTERA_SYNTHESIZED(2) <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_17 <= NOT(reset);



SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_8 AND SYNTHESIZED_WIRE_17;


PROCESS(clock,enable,SYNTHESIZED_WIRE_16)
BEGIN
IF (enable = '0') THEN
	S_ALTERA_SYNTHESIZED(0) <= '0';
ELSIF (SYNTHESIZED_WIRE_16 = '0') THEN
	S_ALTERA_SYNTHESIZED(0) <= '1';
ELSIF (RISING_EDGE(clock)) THEN
	S_ALTERA_SYNTHESIZED(0) <= SYNTHESIZED_WIRE_10;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= NOT(S_ALTERA_SYNTHESIZED(0));



PROCESS(clock,enable,SYNTHESIZED_WIRE_16)
BEGIN
IF (enable = '0') THEN
	S_ALTERA_SYNTHESIZED(1) <= '0';
ELSIF (SYNTHESIZED_WIRE_16 = '0') THEN
	S_ALTERA_SYNTHESIZED(1) <= '1';
ELSIF (RISING_EDGE(clock)) THEN
	S_ALTERA_SYNTHESIZED(1) <= SYNTHESIZED_WIRE_12;
END IF;
END PROCESS;



SYNTHESIZED_WIRE_14 <= S_ALTERA_SYNTHESIZED(1) XOR S_ALTERA_SYNTHESIZED(0);


b2v_inst7 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(1),
		 B => SYNTHESIZED_WIRE_14,
		 SEL => enable,
		 S => SYNTHESIZED_WIRE_6);


SYNTHESIZED_WIRE_15 <= S_ALTERA_SYNTHESIZED(1) AND S_ALTERA_SYNTHESIZED(0);


SYNTHESIZED_WIRE_1 <= S_ALTERA_SYNTHESIZED(2) XOR SYNTHESIZED_WIRE_15;

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;