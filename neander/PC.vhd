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
-- CREATED		"Mon Dec 01 21:40:54 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY PC IS 
	PORT
	(
		pulse :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SEL :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		S :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END PC;

ARCHITECTURE bdf_type OF PC IS 

COMPONENT contador_8bits
	PORT(SEL : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux_2_1
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 SEL : IN STD_LOGIC;
		 S : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SM :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : contador_8bits
PORT MAP(SEL => SEL(0),
		 clk => pulse,
		 D => SM,
		 S => S_ALTERA_SYNTHESIZED);


b2v_inst2 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(1),
		 B => D(1),
		 SEL => SEL(1),
		 S => SM(1));


b2v_inst200 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(0),
		 B => D(0),
		 SEL => SEL(1),
		 S => SM(0));


b2v_inst3 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(2),
		 B => D(2),
		 SEL => SEL(1),
		 S => SM(2));


b2v_inst4 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(3),
		 B => D(3),
		 SEL => SEL(1),
		 S => SM(3));


b2v_inst5 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(4),
		 B => D(4),
		 SEL => SEL(1),
		 S => SM(4));


b2v_inst6 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(5),
		 B => D(5),
		 SEL => SEL(1),
		 S => SM(5));


b2v_inst7 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(6),
		 B => D(6),
		 SEL => SEL(1),
		 S => SM(6));


b2v_inst8 : mux_2_1
PORT MAP(A => S_ALTERA_SYNTHESIZED(7),
		 B => D(7),
		 SEL => SEL(1),
		 S => SM(7));

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;