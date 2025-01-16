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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/22/2023 16:51:45"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	three_bit_serial_shift_right_register IS
    PORT (
	i_resetBar : IN std_logic;
	i_load : IN std_logic;
	i_clock : IN std_logic;
	shift_droite : IN std_logic;
	i_Value : IN std_logic_vector(7 DOWNTO 0);
	o_register_empty : OUT std_logic;
	o_Value : OUT std_logic
	);
END three_bit_serial_shift_right_register;

-- Design Ports Information
-- i_resetBar	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_load	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_droite	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Value[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Value[1]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Value[2]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Value[3]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Value[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Value[5]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Value[6]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Value[7]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_register_empty	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Value	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF three_bit_serial_shift_right_register IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_resetBar : std_logic;
SIGNAL ww_i_load : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_shift_droite : std_logic;
SIGNAL ww_i_Value : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_register_empty : std_logic;
SIGNAL ww_o_Value : std_logic;
SIGNAL \i_resetBar~input_o\ : std_logic;
SIGNAL \i_load~input_o\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \shift_droite~input_o\ : std_logic;
SIGNAL \i_Value[0]~input_o\ : std_logic;
SIGNAL \i_Value[1]~input_o\ : std_logic;
SIGNAL \i_Value[2]~input_o\ : std_logic;
SIGNAL \i_Value[3]~input_o\ : std_logic;
SIGNAL \i_Value[4]~input_o\ : std_logic;
SIGNAL \i_Value[5]~input_o\ : std_logic;
SIGNAL \i_Value[6]~input_o\ : std_logic;
SIGNAL \i_Value[7]~input_o\ : std_logic;
SIGNAL \o_register_empty~output_o\ : std_logic;
SIGNAL \o_Value~output_o\ : std_logic;

BEGIN

ww_i_resetBar <= i_resetBar;
ww_i_load <= i_load;
ww_i_clock <= i_clock;
ww_shift_droite <= shift_droite;
ww_i_Value <= i_Value;
o_register_empty <= ww_o_register_empty;
o_Value <= ww_o_Value;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X89_Y0_N9
\o_register_empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_register_empty~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\o_Value~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_Value~output_o\);

-- Location: IOIBUF_X0_Y69_N8
\i_resetBar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_resetBar,
	o => \i_resetBar~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\i_load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_load,
	o => \i_load~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\i_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clock,
	o => \i_clock~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\shift_droite~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift_droite,
	o => \shift_droite~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\i_Value[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Value(0),
	o => \i_Value[0]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\i_Value[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Value(1),
	o => \i_Value[1]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\i_Value[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Value(2),
	o => \i_Value[2]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\i_Value[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Value(3),
	o => \i_Value[3]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\i_Value[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Value(4),
	o => \i_Value[4]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\i_Value[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Value(5),
	o => \i_Value[5]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\i_Value[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Value(6),
	o => \i_Value[6]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\i_Value[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Value(7),
	o => \i_Value[7]~input_o\);

ww_o_register_empty <= \o_register_empty~output_o\;

ww_o_Value <= \o_Value~output_o\;
END structure;


