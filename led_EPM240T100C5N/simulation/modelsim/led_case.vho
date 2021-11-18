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

-- DATE "08/10/2021 17:04:23"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	led_case IS
    PORT (
	clk : IN std_logic;
	plus : OUT std_logic;
	minus : IN std_logic;
	pin_77 : OUT std_logic
	);
END led_case;

-- Design Ports Information


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
SIGNAL ww_plus : std_logic;
SIGNAL ww_minus : std_logic;
SIGNAL ww_pin_77 : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_161\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_162\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_163\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_164\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_165\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_166\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_167\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_168\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_169\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_170\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_171\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_172\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92COUT1_173\ : std_logic;
SIGNAL \Add0~82COUT1_174\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_175\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_176\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_177\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_178\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_179\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~132COUT1_181\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_180\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~137COUT1_182\ : std_logic;
SIGNAL \Add0~142COUT1_183\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_184\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Equal0~8\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \led~regout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_led~regout\ : std_logic;

BEGIN

ww_clk <= clk;
plus <= ww_plus;
ww_minus <= minus;
pin_77 <= ww_pin_77;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_led~regout\ <= NOT \led~regout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X2_Y3_N4
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (!count(0))
-- \Add0~37\ = CARRY((count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X2_Y3_N3
\count[0]\ : maxii_lcell
-- Equation(s):
-- count(0) = DFFEAS((\Add0~35_combout\ & (((!\Equal0~9_combout\)) # (!\Equal0~4_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~35_combout\,
	datab => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X2_Y3_N5
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count(1) $ ((\Add0~37\)))
-- \Add0~32\ = CARRY(((!\Add0~37\) # (!count(1))))
-- \Add0~32COUT1_161\ = CARRY(((!\Add0~37\) # (!count(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_161\);

-- Location: LC_X3_Y2_N4
\count[1]\ : maxii_lcell
-- Equation(s):
-- count(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X2_Y3_N6
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (count(2) $ ((!(!\Add0~37\ & \Add0~32\) # (\Add0~37\ & \Add0~32COUT1_161\))))
-- \Add0~27\ = CARRY(((count(2) & !\Add0~32\)))
-- \Add0~27COUT1_162\ = CARRY(((count(2) & !\Add0~32COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	cin => \Add0~37\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_162\);

-- Location: LC_X2_Y3_N2
\count[2]\ : maxii_lcell
-- Equation(s):
-- count(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X2_Y3_N7
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = count(3) $ (((((!\Add0~37\ & \Add0~27\) # (\Add0~37\ & \Add0~27COUT1_162\)))))
-- \Add0~22\ = CARRY(((!\Add0~27\)) # (!count(3)))
-- \Add0~22COUT1_163\ = CARRY(((!\Add0~27COUT1_162\)) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	cin => \Add0~37\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_163\);

-- Location: LC_X3_Y2_N2
\count[3]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (!count(1) & (!count(2) & (!count[3] & !count(0))))
-- count(3) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(1),
	datab => count(2),
	datac => \Add0~20_combout\,
	datad => count(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count(3));

-- Location: LC_X2_Y3_N8
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (count(4) $ ((!(!\Add0~37\ & \Add0~22\) # (\Add0~37\ & \Add0~22COUT1_163\))))
-- \Add0~17\ = CARRY(((count(4) & !\Add0~22\)))
-- \Add0~17COUT1_164\ = CARRY(((count(4) & !\Add0~22COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	cin => \Add0~37\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_164\);

-- Location: LC_X2_Y3_N1
\count[4]\ : maxii_lcell
-- Equation(s):
-- count(4) = DFFEAS((((\Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LC_X2_Y3_N9
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (count(5) $ (((!\Add0~37\ & \Add0~17\) # (\Add0~37\ & \Add0~17COUT1_164\))))
-- \Add0~12\ = CARRY(((!\Add0~17COUT1_164\) # (!count(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	cin => \Add0~37\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout => \Add0~12\);

-- Location: LC_X2_Y3_N0
\count[5]\ : maxii_lcell
-- Equation(s):
-- count(5) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LC_X3_Y3_N5
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (count(11) $ ((\Add0~52\)))
-- \Add0~57\ = CARRY(((!\Add0~52\) # (!count(11))))
-- \Add0~57COUT1_169\ = CARRY(((!\Add0~52\) # (!count(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	cin => \Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_169\);

-- Location: LC_X4_Y2_N4
\count[11]\ : maxii_lcell
-- Equation(s):
-- count(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LC_X3_Y3_N0
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (count(6) $ ((!\Add0~12\)))
-- \Add0~7\ = CARRY(((count(6) & !\Add0~12\)))
-- \Add0~7COUT1_165\ = CARRY(((count(6) & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	cin => \Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_165\);

-- Location: LC_X3_Y2_N1
\count[6]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (!count(5) & (count(7) & (!count[6] & !count(4))))
-- count(6) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(5),
	datab => count(7),
	datac => \Add0~5_combout\,
	datad => count(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count(6));

-- Location: LC_X3_Y3_N1
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (count(7) $ (((!\Add0~12\ & \Add0~7\) # (\Add0~12\ & \Add0~7COUT1_165\))))
-- \Add0~2\ = CARRY(((!\Add0~7\) # (!count(7))))
-- \Add0~2COUT1_166\ = CARRY(((!\Add0~7COUT1_165\) # (!count(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	cin => \Add0~12\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_166\);

-- Location: LC_X3_Y2_N8
\count[7]\ : maxii_lcell
-- Equation(s):
-- count(7) = DFFEAS(((\Add0~0_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X3_Y3_N2
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = count(8) $ ((((!(!\Add0~12\ & \Add0~2\) # (\Add0~12\ & \Add0~2COUT1_166\)))))
-- \Add0~42\ = CARRY((count(8) & ((!\Add0~2\))))
-- \Add0~42COUT1_167\ = CARRY((count(8) & ((!\Add0~2COUT1_166\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	cin => \Add0~12\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_167\);

-- Location: LC_X4_Y2_N1
\count[8]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (!count(11) & (!count(10) & (!count[8] & !count(9))))
-- count(8) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(11),
	datab => count(10),
	datac => \Add0~40_combout\,
	datad => count(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => count(8));

-- Location: LC_X3_Y3_N3
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count(9) $ (((!\Add0~12\ & \Add0~42\) # (\Add0~12\ & \Add0~42COUT1_167\))))
-- \Add0~47\ = CARRY(((!\Add0~42\) # (!count(9))))
-- \Add0~47COUT1_168\ = CARRY(((!\Add0~42COUT1_167\) # (!count(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	cin => \Add0~12\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_168\);

-- Location: LC_X4_Y2_N6
\count[9]\ : maxii_lcell
-- Equation(s):
-- count(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X3_Y3_N4
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = (count(10) $ ((!(!\Add0~12\ & \Add0~47\) # (\Add0~12\ & \Add0~47COUT1_168\))))
-- \Add0~52\ = CARRY(((count(10) & !\Add0~47COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	cin => \Add0~12\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout => \Add0~52\);

-- Location: LC_X4_Y2_N2
\count[10]\ : maxii_lcell
-- Equation(s):
-- count(10) = DFFEAS((((\Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LC_X3_Y3_N6
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count(12) $ ((!(!\Add0~52\ & \Add0~57\) # (\Add0~52\ & \Add0~57COUT1_169\))))
-- \Add0~62\ = CARRY(((count(12) & !\Add0~57\)))
-- \Add0~62COUT1_170\ = CARRY(((count(12) & !\Add0~57COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	cin => \Add0~52\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_170\);

-- Location: LC_X3_Y2_N9
\count[12]\ : maxii_lcell
-- Equation(s):
-- count(12) = DFFEAS(((\Add0~60_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LC_X3_Y3_N7
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = count(13) $ (((((!\Add0~52\ & \Add0~62\) # (\Add0~52\ & \Add0~62COUT1_170\)))))
-- \Add0~67\ = CARRY(((!\Add0~62\)) # (!count(13)))
-- \Add0~67COUT1_171\ = CARRY(((!\Add0~62COUT1_170\)) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	cin => \Add0~52\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_171\);

-- Location: LC_X3_Y2_N6
\count[13]\ : maxii_lcell
-- Equation(s):
-- count(13) = DFFEAS(((\Add0~65_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X3_Y3_N8
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = count(14) $ ((((!(!\Add0~52\ & \Add0~67\) # (\Add0~52\ & \Add0~67COUT1_171\)))))
-- \Add0~72\ = CARRY((count(14) & ((!\Add0~67\))))
-- \Add0~72COUT1_172\ = CARRY((count(14) & ((!\Add0~67COUT1_171\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	cin => \Add0~52\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_172\);

-- Location: LC_X3_Y2_N7
\count[14]\ : maxii_lcell
-- Equation(s):
-- count(14) = DFFEAS(((\Add0~70_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LC_X3_Y2_N3
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (count(15) & (count(13) & (count(12) & count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(13),
	datac => count(12),
	datad => count(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X3_Y2_N0
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0\ & (\Equal0~2\ & \Equal0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0\,
	datac => \Equal0~2\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X3_Y3_N9
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = (count(15) $ (((!\Add0~52\ & \Add0~72\) # (\Add0~52\ & \Add0~72COUT1_172\))))
-- \Add0~77\ = CARRY(((!\Add0~72COUT1_172\) # (!count(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	cin => \Add0~52\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout => \Add0~77\);

-- Location: LC_X3_Y2_N5
\count[15]\ : maxii_lcell
-- Equation(s):
-- count(15) = DFFEAS(((\Add0~75_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X4_Y3_N0
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = count(16) $ ((((!\Add0~77\))))
-- \Add0~92\ = CARRY((count(16) & ((!\Add0~77\))))
-- \Add0~92COUT1_173\ = CARRY((count(16) & ((!\Add0~77\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	cin => \Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_173\);

-- Location: LC_X4_Y3_N1
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (count(17) $ (((!\Add0~77\ & \Add0~92\) # (\Add0~77\ & \Add0~92COUT1_173\))))
-- \Add0~82\ = CARRY(((!\Add0~92\) # (!count(17))))
-- \Add0~82COUT1_174\ = CARRY(((!\Add0~92COUT1_173\) # (!count(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	cin => \Add0~77\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_174\);

-- Location: LC_X4_Y3_N2
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = count(18) $ ((((!(!\Add0~77\ & \Add0~82\) # (\Add0~77\ & \Add0~82COUT1_174\)))))
-- \Add0~97\ = CARRY((count(18) & ((!\Add0~82\))))
-- \Add0~97COUT1_175\ = CARRY((count(18) & ((!\Add0~82COUT1_174\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	cin => \Add0~77\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_175\);

-- Location: LC_X4_Y3_N3
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = (count(19) $ (((!\Add0~77\ & \Add0~97\) # (\Add0~77\ & \Add0~97COUT1_175\))))
-- \Add0~87\ = CARRY(((!\Add0~97\) # (!count(19))))
-- \Add0~87COUT1_176\ = CARRY(((!\Add0~97COUT1_175\) # (!count(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	cin => \Add0~77\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_176\);

-- Location: LC_X5_Y3_N8
\count[19]\ : maxii_lcell
-- Equation(s):
-- count(19) = DFFEAS(((\Add0~85_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LC_X5_Y3_N9
\count[16]\ : maxii_lcell
-- Equation(s):
-- \Equal0~5\ = (!count(18) & (count(17) & (!count[16] & count(19))))
-- count(16) = DFFEAS(\Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(18),
	datab => count(17),
	datac => \Add0~90_combout\,
	datad => count(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => count(16));

-- Location: LC_X5_Y3_N7
\count[17]\ : maxii_lcell
-- Equation(s):
-- count(17) = DFFEAS(((\Add0~80_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~9_combout\,
	datac => \Add0~80_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LC_X5_Y3_N6
\count[18]\ : maxii_lcell
-- Equation(s):
-- count(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X4_Y3_N4
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = (count(20) $ ((!(!\Add0~77\ & \Add0~87\) # (\Add0~77\ & \Add0~87COUT1_176\))))
-- \Add0~102\ = CARRY(((count(20) & !\Add0~87COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	cin => \Add0~77\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout => \Add0~102\);

-- Location: LC_X7_Y3_N6
\count[20]\ : maxii_lcell
-- Equation(s):
-- count(20) = DFFEAS(((\Add0~100_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LC_X5_Y3_N0
\Add0~130\ : maxii_lcell
-- Equation(s):
-- \Add0~130_combout\ = (count(26) $ ((!\Add0~122\)))
-- \Add0~132\ = CARRY(((count(26) & !\Add0~122\)))
-- \Add0~132COUT1_181\ = CARRY(((count(26) & !\Add0~122\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	cin => \Add0~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout0 => \Add0~132\,
	cout1 => \Add0~132COUT1_181\);

-- Location: LC_X6_Y3_N4
\count[26]\ : maxii_lcell
-- Equation(s):
-- count(26) = DFFEAS((((\Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(26));

-- Location: LC_X4_Y3_N5
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count(21) $ ((\Add0~102\)))
-- \Add0~107\ = CARRY(((!\Add0~102\) # (!count(21))))
-- \Add0~107COUT1_177\ = CARRY(((!\Add0~102\) # (!count(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	cin => \Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_177\);

-- Location: LC_X7_Y3_N2
\count[21]\ : maxii_lcell
-- Equation(s):
-- count(21) = DFFEAS(((\Add0~105_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LC_X4_Y3_N6
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = (count(22) $ ((!(!\Add0~102\ & \Add0~107\) # (\Add0~102\ & \Add0~107COUT1_177\))))
-- \Add0~112\ = CARRY(((count(22) & !\Add0~107\)))
-- \Add0~112COUT1_178\ = CARRY(((count(22) & !\Add0~107COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	cin => \Add0~102\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_178\);

-- Location: LC_X7_Y3_N4
\count[22]\ : maxii_lcell
-- Equation(s):
-- count(22) = DFFEAS(((\Add0~110_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X4_Y3_N7
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = (count(23) $ (((!\Add0~102\ & \Add0~112\) # (\Add0~102\ & \Add0~112COUT1_178\))))
-- \Add0~117\ = CARRY(((!\Add0~112\) # (!count(23))))
-- \Add0~117COUT1_179\ = CARRY(((!\Add0~112COUT1_178\) # (!count(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	cin => \Add0~102\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_179\);

-- Location: LC_X6_Y3_N6
\count[23]\ : maxii_lcell
-- Equation(s):
-- count(23) = DFFEAS(((\Add0~115_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~9_combout\,
	datac => \Add0~115_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LC_X4_Y3_N8
\Add0~125\ : maxii_lcell
-- Equation(s):
-- \Add0~125_combout\ = (count(24) $ ((!(!\Add0~102\ & \Add0~117\) # (\Add0~102\ & \Add0~117COUT1_179\))))
-- \Add0~127\ = CARRY(((count(24) & !\Add0~117\)))
-- \Add0~127COUT1_180\ = CARRY(((count(24) & !\Add0~117COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	cin => \Add0~102\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_180\);

-- Location: LC_X5_Y3_N1
\Add0~135\ : maxii_lcell
-- Equation(s):
-- \Add0~135_combout\ = count(27) $ (((((!\Add0~122\ & \Add0~132\) # (\Add0~122\ & \Add0~132COUT1_181\)))))
-- \Add0~137\ = CARRY(((!\Add0~132\)) # (!count(27)))
-- \Add0~137COUT1_182\ = CARRY(((!\Add0~132COUT1_181\)) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	cin => \Add0~122\,
	cin0 => \Add0~132\,
	cin1 => \Add0~132COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout0 => \Add0~137\,
	cout1 => \Add0~137COUT1_182\);

-- Location: LC_X6_Y3_N3
\count[27]\ : maxii_lcell
-- Equation(s):
-- count(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~135_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(27));

-- Location: LC_X6_Y3_N7
\count[24]\ : maxii_lcell
-- Equation(s):
-- \Equal0~7\ = (!count(26) & (count(25) & (!count[24] & !count(27))))
-- count(24) = DFFEAS(\Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(26),
	datab => count(25),
	datac => \Add0~125_combout\,
	datad => count(27),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => count(24));

-- Location: LC_X4_Y3_N9
\Add0~120\ : maxii_lcell
-- Equation(s):
-- \Add0~120_combout\ = (count(25) $ (((!\Add0~102\ & \Add0~127\) # (\Add0~102\ & \Add0~127COUT1_180\))))
-- \Add0~122\ = CARRY(((!\Add0~127COUT1_180\) # (!count(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	cin => \Add0~102\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout => \Add0~122\);

-- Location: LC_X6_Y3_N1
\count[25]\ : maxii_lcell
-- Equation(s):
-- count(25) = DFFEAS(((\Add0~120_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~120_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LC_X5_Y3_N2
\Add0~140\ : maxii_lcell
-- Equation(s):
-- \Add0~140_combout\ = (count(28) $ ((!(!\Add0~122\ & \Add0~137\) # (\Add0~122\ & \Add0~137COUT1_182\))))
-- \Add0~142\ = CARRY(((count(28) & !\Add0~137\)))
-- \Add0~142COUT1_183\ = CARRY(((count(28) & !\Add0~137COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	cin => \Add0~122\,
	cin0 => \Add0~137\,
	cin1 => \Add0~137COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_183\);

-- Location: LC_X5_Y3_N3
\Add0~145\ : maxii_lcell
-- Equation(s):
-- \Add0~145_combout\ = (count(29) $ (((!\Add0~122\ & \Add0~142\) # (\Add0~122\ & \Add0~142COUT1_183\))))
-- \Add0~147\ = CARRY(((!\Add0~142\) # (!count(29))))
-- \Add0~147COUT1_184\ = CARRY(((!\Add0~142COUT1_183\) # (!count(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	cin => \Add0~122\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_184\);

-- Location: LC_X5_Y3_N4
\Add0~150\ : maxii_lcell
-- Equation(s):
-- \Add0~150_combout\ = (count(30) $ ((!(!\Add0~122\ & \Add0~147\) # (\Add0~122\ & \Add0~147COUT1_184\))))
-- \Add0~152\ = CARRY(((count(30) & !\Add0~147COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	cin => \Add0~122\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout => \Add0~152\);

-- Location: LC_X6_Y3_N2
\count[30]\ : maxii_lcell
-- Equation(s):
-- count(30) = DFFEAS((((\Add0~150_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~150_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(30));

-- Location: LC_X5_Y3_N5
\Add0~155\ : maxii_lcell
-- Equation(s):
-- \Add0~155_combout\ = ((\Add0~152\ $ (count(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\);

-- Location: LC_X6_Y3_N8
\count[31]\ : maxii_lcell
-- Equation(s):
-- count(31) = DFFEAS((((\Add0~155_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~155_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(31));

-- Location: LC_X6_Y3_N9
\count[28]\ : maxii_lcell
-- Equation(s):
-- \Equal0~8\ = (!count(29) & (!count(30) & (!count[28] & !count(31))))
-- count(28) = DFFEAS(\Equal0~8\, GLOBAL(\clk~combout\), VCC, , , \Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(29),
	datab => count(30),
	datac => \Add0~140_combout\,
	datad => count(31),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8\,
	regout => count(28));

-- Location: LC_X6_Y3_N5
\count[29]\ : maxii_lcell
-- Equation(s):
-- count(29) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~145_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(29));

-- Location: LC_X7_Y3_N5
\Equal0~6\ : maxii_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (count(22) & (count(23) & (count(20) & count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(23),
	datac => count(20),
	datad => count(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X6_Y3_N0
\Equal0~9\ : maxii_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5\ & (\Equal0~8\ & (\Equal0~7\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5\,
	datab => \Equal0~8\,
	datac => \Equal0~7\,
	datad => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X5_Y2_N2
led : maxii_lcell
-- Equation(s):
-- \led~regout\ = DFFEAS((\led~regout\ $ (((\Equal0~9_combout\ & \Equal0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \led~regout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led~regout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\plus~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_led~regout\,
	oe => VCC,
	padio => ww_plus);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\minus~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_minus);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pin_77~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_led~regout\,
	oe => VCC,
	padio => ww_pin_77);
END structure;


