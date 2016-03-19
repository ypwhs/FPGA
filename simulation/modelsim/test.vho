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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "02/18/2016 18:44:21"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test IS
    PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	DATA : OUT std_logic_vector(7 DOWNTO 0);
	\SELECT\ : OUT std_logic_vector(5 DOWNTO 0)
	);
END test;

-- Design Ports Information
-- DATA[0]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATA[1]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATA[2]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATA[3]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATA[4]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATA[5]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATA[6]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATA[7]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SELECT[0]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SELECT[1]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SELECT[2]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SELECT[3]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SELECT[4]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SELECT[5]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A1	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_SELECT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \A0~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA[0]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \SELECT[0]~output_o\ : std_logic;
SIGNAL \SELECT[1]~output_o\ : std_logic;
SIGNAL \SELECT[2]~output_o\ : std_logic;
SIGNAL \SELECT[3]~output_o\ : std_logic;
SIGNAL \SELECT[4]~output_o\ : std_logic;
SIGNAL \SELECT[5]~output_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \A0~inputclkctrl_outclk\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \U1|data[7]~0_combout\ : std_logic;
SIGNAL \U1|data[6]~feeder_combout\ : std_logic;
SIGNAL \U1|data[5]~feeder_combout\ : std_logic;
SIGNAL \U1|data[4]~feeder_combout\ : std_logic;
SIGNAL \U1|data[3]~feeder_combout\ : std_logic;
SIGNAL \U1|data[2]~feeder_combout\ : std_logic;
SIGNAL \U1|data[1]~feeder_combout\ : std_logic;
SIGNAL \U1|data[0]~feeder_combout\ : std_logic;
SIGNAL \U1|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_A0~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|ALT_INV_data\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A0 <= A0;
ww_A1 <= A1;
DATA <= ww_DATA;
\SELECT\ <= \ww_SELECT\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\A0~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A0~input_o\);
\ALT_INV_A0~inputclkctrl_outclk\ <= NOT \A0~inputclkctrl_outclk\;
\U1|ALT_INV_data\(7) <= NOT \U1|data\(7);
\U1|ALT_INV_data\(6) <= NOT \U1|data\(6);
\U1|ALT_INV_data\(5) <= NOT \U1|data\(5);
\U1|ALT_INV_data\(4) <= NOT \U1|data\(4);
\U1|ALT_INV_data\(3) <= NOT \U1|data\(3);
\U1|ALT_INV_data\(2) <= NOT \U1|data\(2);
\U1|ALT_INV_data\(1) <= NOT \U1|data\(1);
\U1|ALT_INV_data\(0) <= NOT \U1|data\(0);

-- Location: IOOBUF_X11_Y24_N9
\DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_data\(0),
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_data\(1),
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_data\(2),
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_data\(3),
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_data\(4),
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_data\(5),
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_data\(6),
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_data\(7),
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\SELECT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SELECT[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\SELECT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SELECT[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\SELECT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SELECT[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\SELECT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SELECT[3]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\SELECT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SELECT[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\SELECT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SELECT[5]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\A0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: CLKCTRL_G2
\A0~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A0~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A0~inputclkctrl_outclk\);

-- Location: IOIBUF_X9_Y24_N8
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X9_Y23_N18
\U1|data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|data[7]~0_combout\ = !\A1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A1~input_o\,
	combout => \U1|data[7]~0_combout\);

-- Location: FF_X9_Y23_N19
\U1|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A0~inputclkctrl_outclk\,
	d => \U1|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(7));

-- Location: LCCOMB_X9_Y23_N0
\U1|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|data[6]~feeder_combout\ = \U1|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|data\(7),
	combout => \U1|data[6]~feeder_combout\);

-- Location: FF_X9_Y23_N1
\U1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A0~inputclkctrl_outclk\,
	d => \U1|data[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(6));

-- Location: LCCOMB_X9_Y23_N6
\U1|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|data[5]~feeder_combout\ = \U1|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|data\(6),
	combout => \U1|data[5]~feeder_combout\);

-- Location: FF_X9_Y23_N7
\U1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A0~inputclkctrl_outclk\,
	d => \U1|data[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(5));

-- Location: LCCOMB_X9_Y23_N20
\U1|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|data[4]~feeder_combout\ = \U1|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|data\(5),
	combout => \U1|data[4]~feeder_combout\);

-- Location: FF_X9_Y23_N21
\U1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A0~inputclkctrl_outclk\,
	d => \U1|data[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(4));

-- Location: LCCOMB_X9_Y23_N10
\U1|data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|data[3]~feeder_combout\ = \U1|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|data\(4),
	combout => \U1|data[3]~feeder_combout\);

-- Location: FF_X9_Y23_N11
\U1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A0~inputclkctrl_outclk\,
	d => \U1|data[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(3));

-- Location: LCCOMB_X9_Y23_N12
\U1|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|data[2]~feeder_combout\ = \U1|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|data\(3),
	combout => \U1|data[2]~feeder_combout\);

-- Location: FF_X9_Y23_N13
\U1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A0~inputclkctrl_outclk\,
	d => \U1|data[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(2));

-- Location: LCCOMB_X9_Y23_N2
\U1|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|data[1]~feeder_combout\ = \U1|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|data\(2),
	combout => \U1|data[1]~feeder_combout\);

-- Location: FF_X9_Y23_N3
\U1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A0~inputclkctrl_outclk\,
	d => \U1|data[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(1));

-- Location: LCCOMB_X9_Y23_N28
\U1|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|data[0]~feeder_combout\ = \U1|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|data\(1),
	combout => \U1|data[0]~feeder_combout\);

-- Location: FF_X9_Y23_N29
\U1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_A0~inputclkctrl_outclk\,
	d => \U1|data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(0));

ww_DATA(0) <= \DATA[0]~output_o\;

ww_DATA(1) <= \DATA[1]~output_o\;

ww_DATA(2) <= \DATA[2]~output_o\;

ww_DATA(3) <= \DATA[3]~output_o\;

ww_DATA(4) <= \DATA[4]~output_o\;

ww_DATA(5) <= \DATA[5]~output_o\;

ww_DATA(6) <= \DATA[6]~output_o\;

ww_DATA(7) <= \DATA[7]~output_o\;

\ww_SELECT\(0) <= \SELECT[0]~output_o\;

\ww_SELECT\(1) <= \SELECT[1]~output_o\;

\ww_SELECT\(2) <= \SELECT[2]~output_o\;

\ww_SELECT\(3) <= \SELECT[3]~output_o\;

\ww_SELECT\(4) <= \SELECT[4]~output_o\;

\ww_SELECT\(5) <= \SELECT[5]~output_o\;
END structure;


