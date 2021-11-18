-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

-- DATE "08/10/2021 01:39:03"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DEV_CLRn~	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ~ALTERA_CLKUSR~	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_DEV_CLRn~~padout\ : std_logic;
SIGNAL \~ALTERA_CLKUSR~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DEV_CLRn~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CLKUSR~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	led_case IS
    PORT (
	clk : IN std_logic;
	\out\ : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END led_case;

-- Design Ports Information
-- out[0]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out[1]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out[2]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- out[3]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_24,	 I/O Standard: 3.0-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF led_case IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \ww_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~93_combout\ : std_logic;
SIGNAL \count[1]~31_combout\ : std_logic;
SIGNAL \count[1]~32\ : std_logic;
SIGNAL \count[2]~33_combout\ : std_logic;
SIGNAL \count[2]~34\ : std_logic;
SIGNAL \count[3]~35_combout\ : std_logic;
SIGNAL \count[3]~36\ : std_logic;
SIGNAL \count[4]~37_combout\ : std_logic;
SIGNAL \count[4]~38\ : std_logic;
SIGNAL \count[5]~39_combout\ : std_logic;
SIGNAL \count[5]~40\ : std_logic;
SIGNAL \count[6]~41_combout\ : std_logic;
SIGNAL \count[6]~42\ : std_logic;
SIGNAL \count[7]~43_combout\ : std_logic;
SIGNAL \count[7]~44\ : std_logic;
SIGNAL \count[8]~45_combout\ : std_logic;
SIGNAL \count[8]~46\ : std_logic;
SIGNAL \count[9]~47_combout\ : std_logic;
SIGNAL \count[9]~48\ : std_logic;
SIGNAL \count[10]~49_combout\ : std_logic;
SIGNAL \count[10]~50\ : std_logic;
SIGNAL \count[11]~51_combout\ : std_logic;
SIGNAL \count[11]~52\ : std_logic;
SIGNAL \count[12]~53_combout\ : std_logic;
SIGNAL \count[12]~54\ : std_logic;
SIGNAL \count[13]~55_combout\ : std_logic;
SIGNAL \count[13]~56\ : std_logic;
SIGNAL \count[14]~57_combout\ : std_logic;
SIGNAL \count[14]~58\ : std_logic;
SIGNAL \count[15]~59_combout\ : std_logic;
SIGNAL \count[15]~60\ : std_logic;
SIGNAL \count[16]~61_combout\ : std_logic;
SIGNAL \count[16]~62\ : std_logic;
SIGNAL \count[17]~63_combout\ : std_logic;
SIGNAL \count[17]~64\ : std_logic;
SIGNAL \count[18]~65_combout\ : std_logic;
SIGNAL \count[18]~66\ : std_logic;
SIGNAL \count[19]~67_combout\ : std_logic;
SIGNAL \count[19]~68\ : std_logic;
SIGNAL \count[20]~69_combout\ : std_logic;
SIGNAL \count[20]~70\ : std_logic;
SIGNAL \count[21]~71_combout\ : std_logic;
SIGNAL \count[21]~72\ : std_logic;
SIGNAL \count[22]~73_combout\ : std_logic;
SIGNAL \count[22]~74\ : std_logic;
SIGNAL \count[23]~75_combout\ : std_logic;
SIGNAL \count[23]~76\ : std_logic;
SIGNAL \count[24]~77_combout\ : std_logic;
SIGNAL \count[24]~78\ : std_logic;
SIGNAL \count[25]~79_combout\ : std_logic;
SIGNAL \count[25]~80\ : std_logic;
SIGNAL \count[26]~81_combout\ : std_logic;
SIGNAL \count[26]~82\ : std_logic;
SIGNAL \count[27]~83_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \count[27]~84\ : std_logic;
SIGNAL \count[28]~85_combout\ : std_logic;
SIGNAL \count[28]~86\ : std_logic;
SIGNAL \count[29]~87_combout\ : std_logic;
SIGNAL \count[29]~88\ : std_logic;
SIGNAL \count[30]~89_combout\ : std_logic;
SIGNAL \count[30]~90\ : std_logic;
SIGNAL \count[31]~91_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \select[0]~1_combout\ : std_logic;
SIGNAL \select[1]~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \select\ : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y24_N9
\out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(0),
	devoe => ww_devoe,
	o => \out[0]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(1),
	devoe => ww_devoe,
	o => \out[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(2),
	devoe => ww_devoe,
	o => \out[2]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(3),
	devoe => ww_devoe,
	o => \out[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y5_N10
\count[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~93_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~93_combout\);

-- Location: FF_X21_Y5_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count[0]~93_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X21_Y5_N2
\count[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~31_combout\ = (count(1) & (count(0) $ (VCC))) # (!count(1) & (count(0) & VCC))
-- \count[1]~32\ = CARRY((count(1) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datad => VCC,
	combout => \count[1]~31_combout\,
	cout => \count[1]~32\);

-- Location: FF_X21_Y5_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X21_Y5_N4
\count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~33_combout\ = (count(2) & (!\count[1]~32\)) # (!count(2) & ((\count[1]~32\) # (GND)))
-- \count[2]~34\ = CARRY((!\count[1]~32\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~32\,
	combout => \count[2]~33_combout\,
	cout => \count[2]~34\);

-- Location: FF_X21_Y5_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X21_Y5_N6
\count[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~35_combout\ = (count(3) & (\count[2]~34\ $ (GND))) # (!count(3) & (!\count[2]~34\ & VCC))
-- \count[3]~36\ = CARRY((count(3) & !\count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~34\,
	combout => \count[3]~35_combout\,
	cout => \count[3]~36\);

-- Location: FF_X21_Y5_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X21_Y5_N8
\count[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~37_combout\ = (count(4) & (!\count[3]~36\)) # (!count(4) & ((\count[3]~36\) # (GND)))
-- \count[4]~38\ = CARRY((!\count[3]~36\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~36\,
	combout => \count[4]~37_combout\,
	cout => \count[4]~38\);

-- Location: FF_X21_Y5_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X21_Y5_N10
\count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~39_combout\ = (count(5) & (\count[4]~38\ $ (GND))) # (!count(5) & (!\count[4]~38\ & VCC))
-- \count[5]~40\ = CARRY((count(5) & !\count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~38\,
	combout => \count[5]~39_combout\,
	cout => \count[5]~40\);

-- Location: FF_X21_Y5_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X21_Y5_N12
\count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~41_combout\ = (count(6) & (!\count[5]~40\)) # (!count(6) & ((\count[5]~40\) # (GND)))
-- \count[6]~42\ = CARRY((!\count[5]~40\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~40\,
	combout => \count[6]~41_combout\,
	cout => \count[6]~42\);

-- Location: FF_X21_Y5_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X21_Y5_N14
\count[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~43_combout\ = (count(7) & (\count[6]~42\ $ (GND))) # (!count(7) & (!\count[6]~42\ & VCC))
-- \count[7]~44\ = CARRY((count(7) & !\count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~42\,
	combout => \count[7]~43_combout\,
	cout => \count[7]~44\);

-- Location: FF_X21_Y5_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X21_Y5_N16
\count[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~45_combout\ = (count(8) & (!\count[7]~44\)) # (!count(8) & ((\count[7]~44\) # (GND)))
-- \count[8]~46\ = CARRY((!\count[7]~44\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~44\,
	combout => \count[8]~45_combout\,
	cout => \count[8]~46\);

-- Location: FF_X21_Y5_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X21_Y5_N18
\count[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~47_combout\ = (count(9) & (\count[8]~46\ $ (GND))) # (!count(9) & (!\count[8]~46\ & VCC))
-- \count[9]~48\ = CARRY((count(9) & !\count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~46\,
	combout => \count[9]~47_combout\,
	cout => \count[9]~48\);

-- Location: FF_X21_Y5_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X21_Y5_N20
\count[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~49_combout\ = (count(10) & (!\count[9]~48\)) # (!count(10) & ((\count[9]~48\) # (GND)))
-- \count[10]~50\ = CARRY((!\count[9]~48\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~48\,
	combout => \count[10]~49_combout\,
	cout => \count[10]~50\);

-- Location: FF_X21_Y5_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X21_Y5_N22
\count[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~51_combout\ = (count(11) & (\count[10]~50\ $ (GND))) # (!count(11) & (!\count[10]~50\ & VCC))
-- \count[11]~52\ = CARRY((count(11) & !\count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~50\,
	combout => \count[11]~51_combout\,
	cout => \count[11]~52\);

-- Location: FF_X21_Y5_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X21_Y5_N24
\count[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~53_combout\ = (count(12) & (!\count[11]~52\)) # (!count(12) & ((\count[11]~52\) # (GND)))
-- \count[12]~54\ = CARRY((!\count[11]~52\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~52\,
	combout => \count[12]~53_combout\,
	cout => \count[12]~54\);

-- Location: FF_X21_Y5_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X21_Y5_N26
\count[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~55_combout\ = (count(13) & (\count[12]~54\ $ (GND))) # (!count(13) & (!\count[12]~54\ & VCC))
-- \count[13]~56\ = CARRY((count(13) & !\count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~54\,
	combout => \count[13]~55_combout\,
	cout => \count[13]~56\);

-- Location: FF_X21_Y5_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X21_Y5_N28
\count[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~57_combout\ = (count(14) & (!\count[13]~56\)) # (!count(14) & ((\count[13]~56\) # (GND)))
-- \count[14]~58\ = CARRY((!\count[13]~56\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~56\,
	combout => \count[14]~57_combout\,
	cout => \count[14]~58\);

-- Location: FF_X21_Y5_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X21_Y5_N30
\count[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~59_combout\ = (count(15) & (\count[14]~58\ $ (GND))) # (!count(15) & (!\count[14]~58\ & VCC))
-- \count[15]~60\ = CARRY((count(15) & !\count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~58\,
	combout => \count[15]~59_combout\,
	cout => \count[15]~60\);

-- Location: FF_X21_Y5_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X21_Y4_N0
\count[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~61_combout\ = (count(16) & (!\count[15]~60\)) # (!count(16) & ((\count[15]~60\) # (GND)))
-- \count[16]~62\ = CARRY((!\count[15]~60\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~60\,
	combout => \count[16]~61_combout\,
	cout => \count[16]~62\);

-- Location: FF_X21_Y4_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X21_Y4_N2
\count[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~63_combout\ = (count(17) & (\count[16]~62\ $ (GND))) # (!count(17) & (!\count[16]~62\ & VCC))
-- \count[17]~64\ = CARRY((count(17) & !\count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~62\,
	combout => \count[17]~63_combout\,
	cout => \count[17]~64\);

-- Location: FF_X21_Y4_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X21_Y4_N4
\count[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~65_combout\ = (count(18) & (!\count[17]~64\)) # (!count(18) & ((\count[17]~64\) # (GND)))
-- \count[18]~66\ = CARRY((!\count[17]~64\) # (!count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~64\,
	combout => \count[18]~65_combout\,
	cout => \count[18]~66\);

-- Location: FF_X21_Y4_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X21_Y4_N6
\count[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~67_combout\ = (count(19) & (\count[18]~66\ $ (GND))) # (!count(19) & (!\count[18]~66\ & VCC))
-- \count[19]~68\ = CARRY((count(19) & !\count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~66\,
	combout => \count[19]~67_combout\,
	cout => \count[19]~68\);

-- Location: FF_X21_Y4_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X21_Y4_N8
\count[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~69_combout\ = (count(20) & (!\count[19]~68\)) # (!count(20) & ((\count[19]~68\) # (GND)))
-- \count[20]~70\ = CARRY((!\count[19]~68\) # (!count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~68\,
	combout => \count[20]~69_combout\,
	cout => \count[20]~70\);

-- Location: FF_X21_Y4_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X21_Y4_N10
\count[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~71_combout\ = (count(21) & (\count[20]~70\ $ (GND))) # (!count(21) & (!\count[20]~70\ & VCC))
-- \count[21]~72\ = CARRY((count(21) & !\count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~70\,
	combout => \count[21]~71_combout\,
	cout => \count[21]~72\);

-- Location: FF_X21_Y4_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X21_Y4_N12
\count[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~73_combout\ = (count(22) & (!\count[21]~72\)) # (!count(22) & ((\count[21]~72\) # (GND)))
-- \count[22]~74\ = CARRY((!\count[21]~72\) # (!count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~72\,
	combout => \count[22]~73_combout\,
	cout => \count[22]~74\);

-- Location: FF_X21_Y4_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X21_Y4_N14
\count[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~75_combout\ = (count(23) & (\count[22]~74\ $ (GND))) # (!count(23) & (!\count[22]~74\ & VCC))
-- \count[23]~76\ = CARRY((count(23) & !\count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~74\,
	combout => \count[23]~75_combout\,
	cout => \count[23]~76\);

-- Location: FF_X21_Y4_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X21_Y4_N16
\count[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~77_combout\ = (count(24) & (!\count[23]~76\)) # (!count(24) & ((\count[23]~76\) # (GND)))
-- \count[24]~78\ = CARRY((!\count[23]~76\) # (!count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~76\,
	combout => \count[24]~77_combout\,
	cout => \count[24]~78\);

-- Location: FF_X21_Y4_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X21_Y4_N18
\count[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~79_combout\ = (count(25) & (\count[24]~78\ $ (GND))) # (!count(25) & (!\count[24]~78\ & VCC))
-- \count[25]~80\ = CARRY((count(25) & !\count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~78\,
	combout => \count[25]~79_combout\,
	cout => \count[25]~80\);

-- Location: FF_X21_Y4_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X21_Y4_N20
\count[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~81_combout\ = (count(26) & (!\count[25]~80\)) # (!count(26) & ((\count[25]~80\) # (GND)))
-- \count[26]~82\ = CARRY((!\count[25]~80\) # (!count(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~80\,
	combout => \count[26]~81_combout\,
	cout => \count[26]~82\);

-- Location: FF_X21_Y4_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X21_Y4_N22
\count[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~83_combout\ = (count(27) & (\count[26]~82\ $ (GND))) # (!count(27) & (!\count[26]~82\ & VCC))
-- \count[27]~84\ = CARRY((count(27) & !\count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~82\,
	combout => \count[27]~83_combout\,
	cout => \count[27]~84\);

-- Location: FF_X21_Y4_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X22_Y4_N12
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(25) & (!count(27) & (!count(24) & !count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => count(27),
	datac => count(24),
	datad => count(26),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X21_Y4_N24
\count[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~85_combout\ = (count(28) & (!\count[27]~84\)) # (!count(28) & ((\count[27]~84\) # (GND)))
-- \count[28]~86\ = CARRY((!\count[27]~84\) # (!count(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \count[27]~84\,
	combout => \count[28]~85_combout\,
	cout => \count[28]~86\);

-- Location: FF_X21_Y4_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X21_Y4_N26
\count[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[29]~87_combout\ = (count(29) & (\count[28]~86\ $ (GND))) # (!count(29) & (!\count[28]~86\ & VCC))
-- \count[29]~88\ = CARRY((count(29) & !\count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~86\,
	combout => \count[29]~87_combout\,
	cout => \count[29]~88\);

-- Location: FF_X21_Y4_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X21_Y4_N28
\count[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[30]~89_combout\ = (count(30) & (!\count[29]~88\)) # (!count(30) & ((\count[29]~88\) # (GND)))
-- \count[30]~90\ = CARRY((!\count[29]~88\) # (!count(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \count[29]~88\,
	combout => \count[30]~89_combout\,
	cout => \count[30]~90\);

-- Location: FF_X21_Y4_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X21_Y4_N30
\count[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[31]~91_combout\ = count(31) $ (!\count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \count[30]~90\,
	combout => \count[31]~91_combout\);

-- Location: FF_X21_Y4_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X22_Y4_N2
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!count(31) & (!count(30) & (!count(29) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => count(30),
	datac => count(29),
	datad => count(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X22_Y4_N4
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(21) & !count(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => count(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X22_Y4_N10
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(16) & (!count(18) & (!count(19) & !count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(18),
	datac => count(19),
	datad => count(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X22_Y4_N26
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(22) & (!count(23) & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(23),
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X22_Y5_N16
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(13) & (count(12) & (count(15) & count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(12),
	datac => count(15),
	datad => count(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X21_Y5_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(2) & (count(1) & (count(0) & count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y5_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(8) & (count(9) & (count(10) & count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(9),
	datac => count(10),
	datad => count(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X22_Y5_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count(6) & (count(4) & (count(5) & count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(4),
	datac => count(5),
	datad => count(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X22_Y4_N16
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X22_Y4_N20
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (\Equal0~9_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X22_Y4_N22
\select[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \select[0]~1_combout\ = \select\(0) $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \select\(0),
	datad => \Equal0~10_combout\,
	combout => \select[0]~1_combout\);

-- Location: FF_X22_Y4_N23
\select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \select[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select\(0));

-- Location: LCCOMB_X22_Y4_N28
\select[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select[1]~0_combout\ = \select\(1) $ (((\select\(0) & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select\(0),
	datac => \select\(1),
	datad => \Equal0~10_combout\,
	combout => \select[1]~0_combout\);

-- Location: FF_X22_Y4_N29
\select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \select[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select\(1));

-- Location: LCCOMB_X22_Y4_N0
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\select\(0) & !\select\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \select\(0),
	datad => \select\(1),
	combout => \Decoder0~0_combout\);

-- Location: FF_X22_Y4_N1
\leds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => leds(0));

-- Location: LCCOMB_X22_Y4_N6
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\select\(0) & !\select\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \select\(0),
	datad => \select\(1),
	combout => \Decoder0~1_combout\);

-- Location: FF_X22_Y4_N7
\leds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => leds(1));

-- Location: LCCOMB_X22_Y4_N24
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\select\(0) & \select\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \select\(0),
	datad => \select\(1),
	combout => \Decoder0~2_combout\);

-- Location: FF_X22_Y4_N25
\leds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => leds(2));

-- Location: LCCOMB_X22_Y4_N18
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\select\(0) & \select\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \select\(0),
	datad => \select\(1),
	combout => \Decoder0~3_combout\);

-- Location: FF_X22_Y4_N19
\leds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => leds(3));

\ww_out\(0) <= \out[0]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

\ww_out\(3) <= \out[3]~output_o\;
END structure;


