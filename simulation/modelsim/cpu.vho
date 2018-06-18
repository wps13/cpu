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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/18/2018 14:23:38"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	rst : IN std_logic;
	start : IN std_logic;
	clk : IN std_logic;
	display1 : OUT std_logic_vector(6 DOWNTO 0);
	display2 : OUT std_logic_vector(6 DOWNTO 0);
	display3 : OUT std_logic_vector(6 DOWNTO 0);
	display4 : OUT std_logic_vector(6 DOWNTO 0);
	conv1 : OUT std_logic_vector(6 DOWNTO 0);
	conv2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- display1[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv1[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv1[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv1[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv1[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv1[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv1[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv1[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv2[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv2[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv2[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv2[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv2[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv2[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv2[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_conv1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_conv2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|alu1|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|alu1|output[2]~0_combout\ : std_logic;
SIGNAL \datapath|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux17~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux17~1_combout\ : std_logic;
SIGNAL \controller|enbcrf~regout\ : std_logic;
SIGNAL \datapath|rf1|Mux18~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux18~1_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux19~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux19~1_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux16~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux16~1_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux8~0_combout\ : std_logic;
SIGNAL \controller|selcrf[1]~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux8~1_combout\ : std_logic;
SIGNAL \datapath|rf1|out0[3]~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux8~2_combout\ : std_logic;
SIGNAL \controller|Selector51~0_combout\ : std_logic;
SIGNAL \datapath|entrada_acc[2]~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \datapath|entrada_rf[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|entrada_rf[0]~feeder_combout\ : std_logic;
SIGNAL \controller|ADDRESS[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out1[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out2[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out0[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out3[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out0[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out3[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out0[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out0[3]~feeder_combout\ : std_logic;
SIGNAL \clk~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \controller|state.s0~0_combout\ : std_logic;
SIGNAL \controller|state.s0~regout\ : std_logic;
SIGNAL \controller|Add0~0_combout\ : std_logic;
SIGNAL \controller|Selector31~0_combout\ : std_logic;
SIGNAL \controller|Add0~1\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|state.s2~feeder_combout\ : std_logic;
SIGNAL \controller|state.s2~regout\ : std_logic;
SIGNAL \controller|Add0~7_combout\ : std_logic;
SIGNAL \controller|PC[2]~2_combout\ : std_logic;
SIGNAL \controller|Add0~3\ : std_logic;
SIGNAL \controller|Add0~4_combout\ : std_logic;
SIGNAL \controller|Add0~6_combout\ : std_logic;
SIGNAL \controller|Mux0~0_combout\ : std_logic;
SIGNAL \controller|OPCODE[1]~feeder_combout\ : std_logic;
SIGNAL \controller|OPCODE[3]~0_combout\ : std_logic;
SIGNAL \controller|state.s4~regout\ : std_logic;
SIGNAL \controller|OPCODE[0]~1_combout\ : std_logic;
SIGNAL \controller|state.done~0_combout\ : std_logic;
SIGNAL \controller|state.done~1_combout\ : std_logic;
SIGNAL \controller|state.done~regout\ : std_logic;
SIGNAL \controller|WideOr11~0_combout\ : std_logic;
SIGNAL \controller|Selector37~0_combout\ : std_logic;
SIGNAL \controller|Selector37~1_combout\ : std_logic;
SIGNAL \controller|state.s1~regout\ : std_logic;
SIGNAL \controller|Selector52~0_combout\ : std_logic;
SIGNAL \display1[0]~reg0_regout\ : std_logic;
SIGNAL \controller|Mux5~2_combout\ : std_logic;
SIGNAL \controller|state.s8~regout\ : std_logic;
SIGNAL \controller|Selector54~0_combout\ : std_logic;
SIGNAL \controller|Selector54~1_combout\ : std_logic;
SIGNAL \d1|Mux1~0_combout\ : std_logic;
SIGNAL \display1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[1]~reg0_regout\ : std_logic;
SIGNAL \display1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[2]~reg0_regout\ : std_logic;
SIGNAL \display1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[3]~reg0_regout\ : std_logic;
SIGNAL \display1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[4]~reg0_regout\ : std_logic;
SIGNAL \display1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[5]~reg0_regout\ : std_logic;
SIGNAL \display2[0]~reg0feeder_combout\ : std_logic;
SIGNAL \display2[0]~reg0_regout\ : std_logic;
SIGNAL \display2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display2[1]~reg0_regout\ : std_logic;
SIGNAL \display2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display2[2]~reg0_regout\ : std_logic;
SIGNAL \display2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \display2[3]~reg0_regout\ : std_logic;
SIGNAL \display2[4]~reg0feeder_combout\ : std_logic;
SIGNAL \display2[4]~reg0_regout\ : std_logic;
SIGNAL \display2[5]~reg0feeder_combout\ : std_logic;
SIGNAL \display2[5]~reg0_regout\ : std_logic;
SIGNAL \display3[0]~reg0feeder_combout\ : std_logic;
SIGNAL \display3[0]~reg0_regout\ : std_logic;
SIGNAL \display3[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display3[1]~reg0_regout\ : std_logic;
SIGNAL \display3[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display3[2]~reg0_regout\ : std_logic;
SIGNAL \display3[3]~reg0feeder_combout\ : std_logic;
SIGNAL \display3[3]~reg0_regout\ : std_logic;
SIGNAL \display3[4]~reg0_regout\ : std_logic;
SIGNAL \display3[5]~reg0feeder_combout\ : std_logic;
SIGNAL \display3[5]~reg0_regout\ : std_logic;
SIGNAL \controller|Mux5~3_combout\ : std_logic;
SIGNAL \controller|state.s6~regout\ : std_logic;
SIGNAL \controller|Selector55~0_combout\ : std_logic;
SIGNAL \controller|Selector55~1_combout\ : std_logic;
SIGNAL \d1|Mux19~0_combout\ : std_logic;
SIGNAL \display4[0]~reg0_regout\ : std_logic;
SIGNAL \display4[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display4[1]~reg0_regout\ : std_logic;
SIGNAL \display4[2]~reg0_regout\ : std_logic;
SIGNAL \display4[3]~reg0_regout\ : std_logic;
SIGNAL \display4[4]~reg0_regout\ : std_logic;
SIGNAL \display4[5]~reg0_regout\ : std_logic;
SIGNAL \controller|Mux5~4_combout\ : std_logic;
SIGNAL \controller|state.s5~regout\ : std_logic;
SIGNAL \controller|Mux5~0_combout\ : std_logic;
SIGNAL \controller|state.s13~regout\ : std_logic;
SIGNAL \controller|Selector50~0_combout\ : std_logic;
SIGNAL \controller|Selector50~1_combout\ : std_logic;
SIGNAL \controller|enbcacc~regout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \datapath|Mux4~0_combout\ : std_logic;
SIGNAL \datapath|entrada_acc[2]~1_combout\ : std_logic;
SIGNAL \controller|Mux5~1_combout\ : std_logic;
SIGNAL \controller|state.s7~regout\ : std_logic;
SIGNAL \controller|Mux1~0_combout\ : std_logic;
SIGNAL \controller|ADDRESS[3]~feeder_combout\ : std_logic;
SIGNAL \controller|Selector32~0_combout\ : std_logic;
SIGNAL \controller|WideOr1~0_combout\ : std_logic;
SIGNAL \datapath|Mux0~0_combout\ : std_logic;
SIGNAL \controller|Mux2~0_combout\ : std_logic;
SIGNAL \controller|Selector35~0_combout\ : std_logic;
SIGNAL \datapath|entrada1_alu[2]~1_combout\ : std_logic;
SIGNAL \datapath|entrada1_alu[2]~0_combout\ : std_logic;
SIGNAL \datapath|Mux1~0_combout\ : std_logic;
SIGNAL \controller|Mux3~0_combout\ : std_logic;
SIGNAL \controller|Selector34~0_combout\ : std_logic;
SIGNAL \datapath|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~1_cout\ : std_logic;
SIGNAL \datapath|alu1|Add0~3\ : std_logic;
SIGNAL \datapath|alu1|Add0~5\ : std_logic;
SIGNAL \datapath|alu1|Add0~7\ : std_logic;
SIGNAL \datapath|alu1|Add0~8_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~2_combout\ : std_logic;
SIGNAL \datapath|entrada_acc[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|entrada_acc[2]~0_combout\ : std_logic;
SIGNAL \datapath|acc1|output~2_combout\ : std_logic;
SIGNAL \datapath|acc1|output[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~4_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~2_combout\ : std_logic;
SIGNAL \datapath|acc1|output~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~6_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux1~1_combout\ : std_logic;
SIGNAL \datapath|acc1|output~0_combout\ : std_logic;
SIGNAL \datapath|acc1|output[2]~feeder_combout\ : std_logic;
SIGNAL \c1|Mux3~0_combout\ : std_logic;
SIGNAL \conv1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \conv1[0]~reg0_regout\ : std_logic;
SIGNAL \conv1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \conv1[3]~reg0_regout\ : std_logic;
SIGNAL \conv1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \conv1[4]~reg0_regout\ : std_logic;
SIGNAL \conv1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \conv1[5]~reg0_regout\ : std_logic;
SIGNAL \datapath|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~1_combout\ : std_logic;
SIGNAL \datapath|entrada_acc[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|acc1|output~3_combout\ : std_logic;
SIGNAL \datapath|acc1|output[0]~feeder_combout\ : std_logic;
SIGNAL \c1|Mux10~0_combout\ : std_logic;
SIGNAL \conv2[0]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux9~0_combout\ : std_logic;
SIGNAL \conv2[1]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux8~0_combout\ : std_logic;
SIGNAL \conv2[2]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux7~0_combout\ : std_logic;
SIGNAL \conv2[3]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux6~0_combout\ : std_logic;
SIGNAL \conv2[4]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux5~0_combout\ : std_logic;
SIGNAL \conv2[5]~reg0_regout\ : std_logic;
SIGNAL \c1|Mux4~0_combout\ : std_logic;
SIGNAL \conv2[6]~reg0_regout\ : std_logic;
SIGNAL \datapath|entrada_rf\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|entrada_acc\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|entrada2_alu\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|entrada1_alu\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|alu1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|out3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|out2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|rf1|out0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|acc1|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|acc1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|selcrf\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \controller|selc_dp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|imm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controller|OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|ADDRESS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \ALT_INV_conv2[6]~reg0_regout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_start <= start;
ww_clk <= clk;
display1 <= ww_display1;
display2 <= ww_display2;
display3 <= ww_display3;
display4 <= ww_display4;
conv1 <= ww_conv1;
conv2 <= ww_conv2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~clk_delay_ctrl_clkout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\ALT_INV_conv2[6]~reg0_regout\ <= NOT \conv2[6]~reg0_regout\;

-- Location: LCFF_X36_Y9_N31
\datapath|entrada2_alu[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|Mux5~0_combout\,
	sload => VCC,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(2));

-- Location: LCFF_X36_Y9_N21
\datapath|entrada2_alu[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux6~0_combout\,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(1));

-- Location: LCCOMB_X37_Y9_N16
\datapath|alu1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~0_combout\ = (\controller|selc_dp\(0) & (((\datapath|entrada2_alu\(2))))) # (!\controller|selc_dp\(0) & ((\controller|selc_dp\(3) & ((!\datapath|entrada2_alu\(2)))) # (!\controller|selc_dp\(3) & (\datapath|entrada1_alu\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(2),
	datab => \controller|selc_dp\(0),
	datac => \datapath|entrada2_alu\(2),
	datad => \controller|selc_dp\(3),
	combout => \datapath|alu1|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y9_N14
\datapath|alu1|output[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[2]~0_combout\ = (\controller|selc_dp\(0) & \controller|selc_dp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(1),
	combout => \datapath|alu1|output[2]~0_combout\);

-- Location: LCFF_X36_Y10_N9
\datapath|rf1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|Mux17~1_combout\,
	aclr => \rst~combout\,
	ena => \controller|enbcrf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(2));

-- Location: LCCOMB_X35_Y9_N6
\datapath|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux5~0_combout\ = (\datapath|acc1|output\(2) & ((\controller|selc_dp\(3)) # (\controller|selc_dp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|selc_dp\(3),
	datac => \datapath|acc1|output\(2),
	datad => \controller|selc_dp\(0),
	combout => \datapath|Mux5~0_combout\);

-- Location: LCFF_X36_Y10_N15
\datapath|rf1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|Mux18~1_combout\,
	aclr => \rst~combout\,
	ena => \controller|enbcrf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(1));

-- Location: LCCOMB_X36_Y9_N20
\datapath|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux6~0_combout\ = (\datapath|acc1|output\(1) & ((\controller|selc_dp\(3)) # (\controller|selc_dp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(3),
	datab => \controller|selc_dp\(0),
	datad => \datapath|acc1|output\(1),
	combout => \datapath|Mux6~0_combout\);

-- Location: LCFF_X36_Y10_N17
\datapath|rf1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|Mux19~1_combout\,
	aclr => \rst~combout\,
	ena => \controller|enbcrf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(0));

-- Location: LCFF_X36_Y10_N27
\datapath|rf1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|Mux16~1_combout\,
	aclr => \rst~combout\,
	ena => \controller|enbcrf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(3));

-- Location: LCFF_X35_Y10_N17
\datapath|rf1|out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out1[2]~feeder_combout\,
	ena => \datapath|rf1|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(2));

-- Location: LCFF_X34_Y10_N13
\controller|selcrf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|ADDRESS\(0),
	sload => VCC,
	ena => \controller|selcrf[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selcrf\(0));

-- Location: LCFF_X35_Y10_N15
\datapath|rf1|out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out2[2]~feeder_combout\,
	ena => \datapath|rf1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(2));

-- Location: LCFF_X34_Y10_N27
\controller|selcrf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|ADDRESS\(3),
	sload => VCC,
	ena => \controller|selcrf[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selcrf\(1));

-- Location: LCFF_X36_Y10_N1
\datapath|rf1|out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out0[2]~feeder_combout\,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(2));

-- Location: LCCOMB_X35_Y10_N28
\datapath|rf1|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux17~0_combout\ = (\controller|selcrf\(0) & (((\controller|selcrf\(1))))) # (!\controller|selcrf\(0) & ((\controller|selcrf\(1) & (\datapath|rf1|out2\(2))) # (!\controller|selcrf\(1) & ((\datapath|rf1|out0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \datapath|rf1|out2\(2),
	datac => \datapath|rf1|out0\(2),
	datad => \controller|selcrf\(1),
	combout => \datapath|rf1|Mux17~0_combout\);

-- Location: LCFF_X34_Y10_N25
\datapath|rf1|out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out3[2]~feeder_combout\,
	ena => \datapath|rf1|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(2));

-- Location: LCCOMB_X36_Y10_N8
\datapath|rf1|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux17~1_combout\ = (\controller|selcrf\(0) & ((\datapath|rf1|Mux17~0_combout\ & ((\datapath|rf1|out3\(2)))) # (!\datapath|rf1|Mux17~0_combout\ & (\datapath|rf1|out1\(2))))) # (!\controller|selcrf\(0) & (((\datapath|rf1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \datapath|rf1|out1\(2),
	datac => \datapath|rf1|out3\(2),
	datad => \datapath|rf1|Mux17~0_combout\,
	combout => \datapath|rf1|Mux17~1_combout\);

-- Location: LCFF_X37_Y10_N13
\controller|enbcrf\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector51~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enbcrf~regout\);

-- Location: LCFF_X38_Y10_N23
\controller|ADDRESS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|ADDRESS[0]~feeder_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(0));

-- Location: LCFF_X35_Y10_N31
\datapath|rf1|out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|entrada_rf\(1),
	sload => VCC,
	ena => \datapath|rf1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(1));

-- Location: LCFF_X35_Y10_N9
\datapath|rf1|out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|entrada_rf\(1),
	sload => VCC,
	ena => \datapath|rf1|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(1));

-- Location: LCFF_X36_Y10_N31
\datapath|rf1|out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out0[1]~feeder_combout\,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(1));

-- Location: LCCOMB_X35_Y10_N8
\datapath|rf1|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux18~0_combout\ = (\controller|selcrf\(0) & ((\controller|selcrf\(1)) # ((\datapath|rf1|out1\(1))))) # (!\controller|selcrf\(0) & (!\controller|selcrf\(1) & ((\datapath|rf1|out0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \controller|selcrf\(1),
	datac => \datapath|rf1|out1\(1),
	datad => \datapath|rf1|out0\(1),
	combout => \datapath|rf1|Mux18~0_combout\);

-- Location: LCFF_X34_Y10_N3
\datapath|rf1|out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|entrada_rf\(1),
	sload => VCC,
	ena => \datapath|rf1|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(1));

-- Location: LCCOMB_X36_Y10_N14
\datapath|rf1|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux18~1_combout\ = (\controller|selcrf\(1) & ((\datapath|rf1|Mux18~0_combout\ & ((\datapath|rf1|out3\(1)))) # (!\datapath|rf1|Mux18~0_combout\ & (\datapath|rf1|out2\(1))))) # (!\controller|selcrf\(1) & (((\datapath|rf1|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out2\(1),
	datab => \controller|selcrf\(1),
	datac => \datapath|rf1|out3\(1),
	datad => \datapath|rf1|Mux18~0_combout\,
	combout => \datapath|rf1|Mux18~1_combout\);

-- Location: LCFF_X35_Y10_N27
\datapath|rf1|out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|entrada_rf\(0),
	sload => VCC,
	ena => \datapath|rf1|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(0));

-- Location: LCFF_X35_Y10_N13
\datapath|rf1|out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|entrada_rf\(0),
	sload => VCC,
	ena => \datapath|rf1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(0));

-- Location: LCFF_X36_Y10_N25
\datapath|rf1|out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out0[0]~feeder_combout\,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(0));

-- Location: LCCOMB_X35_Y10_N12
\datapath|rf1|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux19~0_combout\ = (\controller|selcrf\(0) & (\controller|selcrf\(1))) # (!\controller|selcrf\(0) & ((\controller|selcrf\(1) & (\datapath|rf1|out2\(0))) # (!\controller|selcrf\(1) & ((\datapath|rf1|out0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \controller|selcrf\(1),
	datac => \datapath|rf1|out2\(0),
	datad => \datapath|rf1|out0\(0),
	combout => \datapath|rf1|Mux19~0_combout\);

-- Location: LCFF_X34_Y10_N17
\datapath|rf1|out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out3[0]~feeder_combout\,
	ena => \datapath|rf1|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(0));

-- Location: LCCOMB_X36_Y10_N16
\datapath|rf1|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux19~1_combout\ = (\controller|selcrf\(0) & ((\datapath|rf1|Mux19~0_combout\ & ((\datapath|rf1|out3\(0)))) # (!\datapath|rf1|Mux19~0_combout\ & (\datapath|rf1|out1\(0))))) # (!\controller|selcrf\(0) & (((\datapath|rf1|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \datapath|rf1|out1\(0),
	datac => \datapath|rf1|out3\(0),
	datad => \datapath|rf1|Mux19~0_combout\,
	combout => \datapath|rf1|Mux19~1_combout\);

-- Location: LCFF_X35_Y10_N3
\datapath|rf1|out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|entrada_rf\(3),
	sload => VCC,
	ena => \datapath|rf1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(3));

-- Location: LCFF_X35_Y10_N25
\datapath|rf1|out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|entrada_rf\(3),
	sload => VCC,
	ena => \datapath|rf1|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(3));

-- Location: LCFF_X36_Y10_N3
\datapath|rf1|out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out0[3]~feeder_combout\,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(3));

-- Location: LCCOMB_X35_Y10_N24
\datapath|rf1|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux16~0_combout\ = (\controller|selcrf\(0) & ((\controller|selcrf\(1)) # ((\datapath|rf1|out1\(3))))) # (!\controller|selcrf\(0) & (!\controller|selcrf\(1) & ((\datapath|rf1|out0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \controller|selcrf\(1),
	datac => \datapath|rf1|out1\(3),
	datad => \datapath|rf1|out0\(3),
	combout => \datapath|rf1|Mux16~0_combout\);

-- Location: LCFF_X34_Y10_N19
\datapath|rf1|out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|entrada_rf\(3),
	sload => VCC,
	ena => \datapath|rf1|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(3));

-- Location: LCCOMB_X36_Y10_N26
\datapath|rf1|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux16~1_combout\ = (\controller|selcrf\(1) & ((\datapath|rf1|Mux16~0_combout\ & ((\datapath|rf1|out3\(3)))) # (!\datapath|rf1|Mux16~0_combout\ & (\datapath|rf1|out2\(3))))) # (!\controller|selcrf\(1) & (((\datapath|rf1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out2\(3),
	datab => \controller|selcrf\(1),
	datac => \datapath|rf1|out3\(3),
	datad => \datapath|rf1|Mux16~0_combout\,
	combout => \datapath|rf1|Mux16~1_combout\);

-- Location: LCFF_X35_Y9_N5
\datapath|entrada_rf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(2),
	sload => VCC,
	ena => \datapath|entrada_acc[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_rf\(2));

-- Location: LCCOMB_X35_Y10_N22
\datapath|rf1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux8~0_combout\ = (!\rst~combout\ & (!\controller|selcrf\(1) & (\controller|selcrf\(0) & !\controller|enbcrf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|selcrf\(1),
	datac => \controller|selcrf\(0),
	datad => \controller|enbcrf~regout\,
	combout => \datapath|rf1|Mux8~0_combout\);

-- Location: LCCOMB_X37_Y10_N22
\controller|selcrf[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|selcrf[1]~0_combout\ = (!\rst~combout\ & ((\controller|state.s8~regout\) # ((\controller|state.s5~regout\) # (\controller|state.s6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|state.s8~regout\,
	datac => \controller|state.s5~regout\,
	datad => \controller|state.s6~regout\,
	combout => \controller|selcrf[1]~0_combout\);

-- Location: LCCOMB_X34_Y10_N0
\datapath|rf1|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux8~1_combout\ = (!\controller|selcrf\(0) & (\controller|selcrf\(1) & (!\rst~combout\ & !\controller|enbcrf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \controller|selcrf\(1),
	datac => \rst~combout\,
	datad => \controller|enbcrf~regout\,
	combout => \datapath|rf1|Mux8~1_combout\);

-- Location: LCCOMB_X36_Y10_N12
\datapath|rf1|out0[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out0[3]~0_combout\ = (!\rst~combout\ & (!\controller|enbcrf~regout\ & (!\controller|selcrf\(0) & !\controller|selcrf\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|enbcrf~regout\,
	datac => \controller|selcrf\(0),
	datad => \controller|selcrf\(1),
	combout => \datapath|rf1|out0[3]~0_combout\);

-- Location: LCCOMB_X34_Y10_N22
\datapath|rf1|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux8~2_combout\ = (\controller|selcrf\(0) & (\controller|selcrf\(1) & (!\rst~combout\ & !\controller|enbcrf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \controller|selcrf\(1),
	datac => \rst~combout\,
	datad => \controller|enbcrf~regout\,
	combout => \datapath|rf1|Mux8~2_combout\);

-- Location: LCCOMB_X37_Y10_N12
\controller|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector51~0_combout\ = (\controller|state.s8~regout\) # ((\controller|state.s6~regout\) # ((!\controller|WideOr11~0_combout\ & \controller|enbcrf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|WideOr11~0_combout\,
	datab => \controller|state.s8~regout\,
	datac => \controller|enbcrf~regout\,
	datad => \controller|state.s6~regout\,
	combout => \controller|Selector51~0_combout\);

-- Location: LCFF_X35_Y9_N13
\datapath|entrada_rf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(1),
	sload => VCC,
	ena => \datapath|entrada_acc[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_rf\(1));

-- Location: LCFF_X35_Y9_N11
\datapath|entrada_rf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|entrada_rf[0]~feeder_combout\,
	ena => \datapath|entrada_acc[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_rf\(0));

-- Location: LCFF_X35_Y9_N29
\datapath|entrada_rf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|entrada_rf[3]~feeder_combout\,
	ena => \datapath|entrada_acc[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_rf\(3));

-- Location: LCCOMB_X35_Y9_N12
\datapath|entrada_acc[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_acc[2]~2_combout\ = (\controller|selc_dp\(0) & (!\controller|selc_dp\(1) & !\controller|selc_dp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(0),
	datab => \controller|selc_dp\(1),
	datad => \controller|selc_dp\(3),
	combout => \datapath|entrada_acc[2]~2_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LCCOMB_X35_Y9_N28
\datapath|entrada_rf[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_rf[3]~feeder_combout\ = \datapath|alu1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(3),
	combout => \datapath|entrada_rf[3]~feeder_combout\);

-- Location: LCCOMB_X35_Y9_N10
\datapath|entrada_rf[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_rf[0]~feeder_combout\ = \datapath|alu1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(0),
	combout => \datapath|entrada_rf[0]~feeder_combout\);

-- Location: LCCOMB_X38_Y10_N22
\controller|ADDRESS[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ADDRESS[0]~feeder_combout\ = \controller|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Mux2~0_combout\,
	combout => \controller|ADDRESS[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y10_N16
\datapath|rf1|out1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out1[2]~feeder_combout\ = \datapath|entrada_rf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(2),
	combout => \datapath|rf1|out1[2]~feeder_combout\);

-- Location: LCCOMB_X35_Y10_N14
\datapath|rf1|out2[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out2[2]~feeder_combout\ = \datapath|entrada_rf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(2),
	combout => \datapath|rf1|out2[2]~feeder_combout\);

-- Location: LCCOMB_X36_Y10_N0
\datapath|rf1|out0[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out0[2]~feeder_combout\ = \datapath|entrada_rf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(2),
	combout => \datapath|rf1|out0[2]~feeder_combout\);

-- Location: LCCOMB_X34_Y10_N24
\datapath|rf1|out3[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out3[2]~feeder_combout\ = \datapath|entrada_rf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(2),
	combout => \datapath|rf1|out3[2]~feeder_combout\);

-- Location: LCCOMB_X36_Y10_N30
\datapath|rf1|out0[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out0[1]~feeder_combout\ = \datapath|entrada_rf\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(1),
	combout => \datapath|rf1|out0[1]~feeder_combout\);

-- Location: LCCOMB_X34_Y10_N16
\datapath|rf1|out3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out3[0]~feeder_combout\ = \datapath|entrada_rf\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(0),
	combout => \datapath|rf1|out3[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y10_N24
\datapath|rf1|out0[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out0[0]~feeder_combout\ = \datapath|entrada_rf\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(0),
	combout => \datapath|rf1|out0[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y10_N2
\datapath|rf1|out0[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out0[3]~feeder_combout\ = \datapath|entrada_rf\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|entrada_rf\(3),
	combout => \datapath|rf1|out0[3]~feeder_combout\);

-- Location: CLKDELAYCTRL_G7
\clk~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \clk~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X37_Y10_N24
\controller|state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s0~0_combout\ = (\controller|state.s0~regout\) # ((\start~combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => \controller|state.s0~regout\,
	datad => \rst~combout\,
	combout => \controller|state.s0~0_combout\);

-- Location: LCFF_X37_Y10_N25
\controller|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|state.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s0~regout\);

-- Location: LCCOMB_X38_Y9_N6
\controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~0_combout\ = \controller|PC\(0) $ (GND)
-- \controller|Add0~1\ = CARRY(!\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datad => VCC,
	combout => \controller|Add0~0_combout\,
	cout => \controller|Add0~1\);

-- Location: LCCOMB_X37_Y9_N24
\controller|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector31~0_combout\ = (\controller|state.s2~regout\ & (((!\controller|Add0~0_combout\)))) # (!\controller|state.s2~regout\ & (((\controller|PC\(0))) # (!\controller|state.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|state.s0~regout\,
	datac => \controller|PC\(0),
	datad => \controller|Add0~0_combout\,
	combout => \controller|Selector31~0_combout\);

-- Location: LCFF_X37_Y9_N25
\controller|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector31~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(0));

-- Location: LCCOMB_X38_Y9_N8
\controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~2_combout\ = (\controller|PC\(1) & (!\controller|Add0~1\)) # (!\controller|PC\(1) & ((\controller|Add0~1\) # (GND)))
-- \controller|Add0~3\ = CARRY((!\controller|Add0~1\) # (!\controller|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(1),
	datad => VCC,
	cin => \controller|Add0~1\,
	combout => \controller|Add0~2_combout\,
	cout => \controller|Add0~3\);

-- Location: LCCOMB_X37_Y10_N2
\controller|state.s2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s2~feeder_combout\ = \controller|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|state.s1~regout\,
	combout => \controller|state.s2~feeder_combout\);

-- Location: LCFF_X37_Y10_N3
\controller|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|state.s2~feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s2~regout\);

-- Location: LCCOMB_X38_Y9_N14
\controller|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~7_combout\ = (\controller|Add0~2_combout\ & \controller|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Add0~2_combout\,
	datad => \controller|state.s2~regout\,
	combout => \controller|Add0~7_combout\);

-- Location: LCCOMB_X37_Y10_N10
\controller|PC[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|PC[2]~2_combout\ = (!\rst~combout\ & ((\controller|state.s2~regout\) # (!\controller|state.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \controller|state.s0~regout\,
	datad => \controller|state.s2~regout\,
	combout => \controller|PC[2]~2_combout\);

-- Location: LCFF_X38_Y9_N15
\controller|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Add0~7_combout\,
	ena => \controller|PC[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(1));

-- Location: LCCOMB_X38_Y9_N10
\controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~4_combout\ = \controller|Add0~3\ $ (!\controller|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller|PC\(2),
	cin => \controller|Add0~3\,
	combout => \controller|Add0~4_combout\);

-- Location: LCCOMB_X38_Y9_N12
\controller|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~6_combout\ = (\controller|state.s2~regout\ & \controller|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s2~regout\,
	datad => \controller|Add0~4_combout\,
	combout => \controller|Add0~6_combout\);

-- Location: LCFF_X38_Y9_N13
\controller|PC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Add0~6_combout\,
	ena => \controller|PC[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(2));

-- Location: LCCOMB_X38_Y9_N24
\controller|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux0~0_combout\ = (\controller|PC\(1)) # ((\controller|PC\(0) & !\controller|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datac => \controller|PC\(1),
	datad => \controller|PC\(2),
	combout => \controller|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y10_N30
\controller|OPCODE[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|OPCODE[1]~feeder_combout\ = \controller|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Mux0~0_combout\,
	combout => \controller|OPCODE[1]~feeder_combout\);

-- Location: LCCOMB_X38_Y10_N16
\controller|OPCODE[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|OPCODE[3]~0_combout\ = (!\rst~combout\ & \controller|state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|OPCODE[3]~0_combout\);

-- Location: LCFF_X38_Y10_N31
\controller|OPCODE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|OPCODE[1]~feeder_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(1));

-- Location: LCFF_X37_Y10_N5
\controller|state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|state.s2~regout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s4~regout\);

-- Location: LCCOMB_X38_Y10_N20
\controller|OPCODE[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|OPCODE[0]~1_combout\ = !\controller|PC\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|PC\(0),
	combout => \controller|OPCODE[0]~1_combout\);

-- Location: LCFF_X38_Y10_N21
\controller|OPCODE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|OPCODE[0]~1_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(0));

-- Location: LCFF_X38_Y10_N29
\controller|OPCODE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|PC\(2),
	sload => VCC,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(3));

-- Location: LCCOMB_X38_Y10_N2
\controller|state.done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~0_combout\ = (!\controller|OPCODE\(1) & (!\rst~combout\ & (\controller|state.s4~regout\ & \controller|OPCODE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(1),
	datab => \rst~combout\,
	datac => \controller|state.s4~regout\,
	datad => \controller|OPCODE\(3),
	combout => \controller|state.done~0_combout\);

-- Location: LCCOMB_X37_Y10_N6
\controller|state.done~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~1_combout\ = (\controller|state.done~regout\) # ((\controller|OPCODE\(0) & \controller|state.done~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|OPCODE\(0),
	datac => \controller|state.done~regout\,
	datad => \controller|state.done~0_combout\,
	combout => \controller|state.done~1_combout\);

-- Location: LCFF_X37_Y10_N7
\controller|state.done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|state.done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.done~regout\);

-- Location: LCCOMB_X37_Y10_N20
\controller|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|WideOr11~0_combout\ = (\controller|state.s0~regout\ & (!\controller|state.s2~regout\ & (!\controller|state.s4~regout\ & !\controller|state.done~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s0~regout\,
	datab => \controller|state.s2~regout\,
	datac => \controller|state.s4~regout\,
	datad => \controller|state.done~regout\,
	combout => \controller|WideOr11~0_combout\);

-- Location: LCCOMB_X37_Y10_N0
\controller|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~0_combout\ = (\controller|state.s0~regout\ & (((\controller|WideOr11~0_combout\ & !\controller|state.s1~regout\)))) # (!\controller|state.s0~regout\ & ((\start~combout\) # ((\controller|WideOr11~0_combout\ & 
-- !\controller|state.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s0~regout\,
	datab => \start~combout\,
	datac => \controller|WideOr11~0_combout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|Selector37~0_combout\);

-- Location: LCCOMB_X37_Y10_N26
\controller|Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~1_combout\ = (\controller|Selector37~0_combout\) # ((\controller|OPCODE\(3) & (\controller|OPCODE\(1) & \controller|state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(3),
	datab => \controller|OPCODE\(1),
	datac => \controller|state.s4~regout\,
	datad => \controller|Selector37~0_combout\,
	combout => \controller|Selector37~1_combout\);

-- Location: LCFF_X37_Y10_N27
\controller|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector37~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s1~regout\);

-- Location: LCCOMB_X36_Y9_N24
\controller|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector52~0_combout\ = (\controller|state.s13~regout\) # ((\controller|selc_dp\(3) & ((\controller|state.s1~regout\) # (!\controller|WideOr11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s13~regout\,
	datab => \controller|state.s1~regout\,
	datac => \controller|selc_dp\(3),
	datad => \controller|WideOr11~0_combout\,
	combout => \controller|Selector52~0_combout\);

-- Location: LCFF_X36_Y9_N25
\controller|selc_dp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector52~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selc_dp\(3));

-- Location: LCFF_X40_Y7_N1
\display1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|selc_dp\(3),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[0]~reg0_regout\);

-- Location: LCCOMB_X37_Y10_N28
\controller|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux5~2_combout\ = (!\controller|OPCODE\(3) & (\controller|OPCODE\(0) & (\controller|state.s4~regout\ & \controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(3),
	datab => \controller|OPCODE\(0),
	datac => \controller|state.s4~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Mux5~2_combout\);

-- Location: LCFF_X37_Y10_N29
\controller|state.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux5~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s8~regout\);

-- Location: LCCOMB_X36_Y9_N2
\controller|Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector54~0_combout\ = (\controller|state.s8~regout\) # ((\controller|selc_dp\(1) & \controller|state.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(1),
	datab => \controller|state.s8~regout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|Selector54~0_combout\);

-- Location: LCCOMB_X36_Y9_N22
\controller|Selector54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector54~1_combout\ = (\controller|state.s7~regout\) # ((\controller|Selector54~0_combout\) # ((\controller|selc_dp\(1) & !\controller|WideOr11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s7~regout\,
	datab => \controller|Selector54~0_combout\,
	datac => \controller|selc_dp\(1),
	datad => \controller|WideOr11~0_combout\,
	combout => \controller|Selector54~1_combout\);

-- Location: LCFF_X36_Y9_N23
\controller|selc_dp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector54~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selc_dp\(1));

-- Location: LCCOMB_X40_Y7_N10
\d1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|Mux1~0_combout\ = (\controller|selc_dp\(3) & \controller|selc_dp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|selc_dp\(3),
	datad => \controller|selc_dp\(1),
	combout => \d1|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y7_N2
\display1[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1[1]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display1[1]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N3
\display1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[1]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N20
\display1[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1[2]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display1[2]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N21
\display1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[2]~reg0_regout\);

-- Location: LCCOMB_X40_Y9_N4
\display1[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1[3]~reg0feeder_combout\ = \controller|selc_dp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|selc_dp\(3),
	combout => \display1[3]~reg0feeder_combout\);

-- Location: LCFF_X40_Y9_N5
\display1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[3]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[3]~reg0_regout\);

-- Location: LCCOMB_X40_Y9_N2
\display1[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1[4]~reg0feeder_combout\ = \controller|selc_dp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|selc_dp\(3),
	combout => \display1[4]~reg0feeder_combout\);

-- Location: LCFF_X40_Y9_N3
\display1[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[4]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[4]~reg0_regout\);

-- Location: LCCOMB_X40_Y9_N28
\display1[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1[5]~reg0feeder_combout\ = \controller|selc_dp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|selc_dp\(3),
	combout => \display1[5]~reg0feeder_combout\);

-- Location: LCFF_X40_Y9_N29
\display1[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[5]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[5]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N18
\display2[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2[0]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display2[0]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N19
\display2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[0]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[0]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N12
\display2[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2[1]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display2[1]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N13
\display2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[1]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N6
\display2[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2[2]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display2[2]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N7
\display2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[2]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N16
\display2[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2[3]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display2[3]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N17
\display2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[3]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[3]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N26
\display2[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2[4]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display2[4]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N27
\display2[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[4]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[4]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N28
\display2[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2[5]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display2[5]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N29
\display2[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[5]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[5]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N22
\display3[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3[0]~reg0feeder_combout\ = \controller|selc_dp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|selc_dp\(1),
	combout => \display3[0]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N23
\display3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display3[0]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[0]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N8
\display3[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3[1]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display3[1]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N9
\display3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display3[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[1]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N30
\display3[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3[2]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display3[2]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N31
\display3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display3[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[2]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N24
\display3[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3[3]~reg0feeder_combout\ = \controller|selc_dp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|selc_dp\(1),
	combout => \display3[3]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N25
\display3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display3[3]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[3]~reg0_regout\);

-- Location: LCFF_X40_Y9_N19
\display3[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|selc_dp\(1),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[4]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N14
\display3[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3[5]~reg0feeder_combout\ = \controller|selc_dp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|selc_dp\(1),
	combout => \display3[5]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N15
\display3[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display3[5]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[5]~reg0_regout\);

-- Location: LCCOMB_X37_Y10_N30
\controller|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux5~3_combout\ = (!\controller|OPCODE\(3) & (\controller|OPCODE\(0) & (\controller|state.s4~regout\ & !\controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(3),
	datab => \controller|OPCODE\(0),
	datac => \controller|state.s4~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Mux5~3_combout\);

-- Location: LCFF_X37_Y10_N31
\controller|state.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux5~3_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s6~regout\);

-- Location: LCCOMB_X37_Y9_N28
\controller|Selector55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector55~0_combout\ = (\controller|state.s6~regout\) # ((\controller|selc_dp\(0) & \controller|state.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|selc_dp\(0),
	datac => \controller|state.s1~regout\,
	datad => \controller|state.s6~regout\,
	combout => \controller|Selector55~0_combout\);

-- Location: LCCOMB_X36_Y9_N28
\controller|Selector55~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector55~1_combout\ = (\controller|state.s8~regout\) # ((\controller|Selector55~0_combout\) # ((\controller|selc_dp\(0) & !\controller|WideOr11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s8~regout\,
	datab => \controller|Selector55~0_combout\,
	datac => \controller|selc_dp\(0),
	datad => \controller|WideOr11~0_combout\,
	combout => \controller|Selector55~1_combout\);

-- Location: LCFF_X36_Y9_N29
\controller|selc_dp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector55~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selc_dp\(0));

-- Location: LCCOMB_X36_Y9_N16
\d1|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|Mux19~0_combout\ = (\controller|selc_dp\(0)) # ((\controller|selc_dp\(3) & \controller|selc_dp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(3),
	datab => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(1),
	combout => \d1|Mux19~0_combout\);

-- Location: LCFF_X36_Y9_N9
\display4[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \d1|Mux19~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[0]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N4
\display4[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display4[1]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display4[1]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N5
\display4[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display4[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[1]~reg0_regout\);

-- Location: LCFF_X40_Y7_N11
\display4[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \d1|Mux1~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[2]~reg0_regout\);

-- Location: LCFF_X36_Y9_N13
\display4[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \d1|Mux19~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[3]~reg0_regout\);

-- Location: LCFF_X36_Y9_N11
\display4[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \d1|Mux19~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[4]~reg0_regout\);

-- Location: LCFF_X36_Y9_N15
\display4[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \d1|Mux19~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[5]~reg0_regout\);

-- Location: LCCOMB_X37_Y10_N14
\controller|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux5~4_combout\ = (!\controller|OPCODE\(3) & (!\controller|OPCODE\(0) & (\controller|state.s4~regout\ & !\controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(3),
	datab => \controller|OPCODE\(0),
	datac => \controller|state.s4~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Mux5~4_combout\);

-- Location: LCFF_X37_Y10_N15
\controller|state.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux5~4_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s5~regout\);

-- Location: LCCOMB_X37_Y10_N8
\controller|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux5~0_combout\ = (\controller|OPCODE\(3) & (!\controller|OPCODE\(0) & (\controller|state.s4~regout\ & !\controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(3),
	datab => \controller|OPCODE\(0),
	datac => \controller|state.s4~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Mux5~0_combout\);

-- Location: LCFF_X37_Y10_N9
\controller|state.s13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux5~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s13~regout\);

-- Location: LCCOMB_X37_Y10_N16
\controller|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector50~0_combout\ = (\controller|state.s7~regout\) # ((\controller|state.s8~regout\) # ((\controller|state.s5~regout\) # (\controller|state.s13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s7~regout\,
	datab => \controller|state.s8~regout\,
	datac => \controller|state.s5~regout\,
	datad => \controller|state.s13~regout\,
	combout => \controller|Selector50~0_combout\);

-- Location: LCCOMB_X34_Y9_N22
\controller|Selector50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector50~1_combout\ = (\controller|Selector50~0_combout\) # ((\controller|enbcacc~regout\ & !\controller|WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Selector50~0_combout\,
	datac => \controller|enbcacc~regout\,
	datad => \controller|WideOr11~0_combout\,
	combout => \controller|Selector50~1_combout\);

-- Location: LCFF_X34_Y9_N23
\controller|enbcacc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector50~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enbcacc~regout\);

-- Location: LCFF_X34_Y9_N19
\datapath|acc1|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|temp\(3));

-- Location: LCCOMB_X35_Y9_N16
\datapath|alu1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~1_combout\ = (!\controller|selc_dp\(1) & ((\datapath|entrada2_alu\(3) & (!\controller|selc_dp\(3) & \controller|selc_dp\(0))) # (!\datapath|entrada2_alu\(3) & (\controller|selc_dp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(3),
	datab => \controller|selc_dp\(3),
	datac => \controller|selc_dp\(1),
	datad => \controller|selc_dp\(0),
	combout => \datapath|alu1|Mux0~1_combout\);

-- Location: LCCOMB_X35_Y9_N30
\datapath|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux4~0_combout\ = (\datapath|acc1|output\(3) & ((\controller|selc_dp\(3)) # (\controller|selc_dp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|selc_dp\(3),
	datac => \controller|selc_dp\(0),
	datad => \datapath|acc1|output\(3),
	combout => \datapath|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y9_N30
\datapath|entrada_acc[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_acc[2]~1_combout\ = ((!\controller|selc_dp\(0) & !\controller|selc_dp\(1))) # (!\controller|selc_dp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(3),
	datab => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(1),
	combout => \datapath|entrada_acc[2]~1_combout\);

-- Location: LCFF_X36_Y9_N3
\datapath|entrada2_alu[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|Mux4~0_combout\,
	sload => VCC,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(3));

-- Location: LCCOMB_X37_Y10_N18
\controller|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux5~1_combout\ = (!\controller|OPCODE\(3) & (!\controller|OPCODE\(0) & (\controller|state.s4~regout\ & \controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(3),
	datab => \controller|OPCODE\(0),
	datac => \controller|state.s4~regout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Mux5~1_combout\);

-- Location: LCFF_X37_Y10_N19
\controller|state.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux5~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s7~regout\);

-- Location: LCCOMB_X38_Y9_N0
\controller|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux1~0_combout\ = (!\controller|PC\(0) & \controller|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|PC\(0),
	datad => \controller|PC\(2),
	combout => \controller|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y10_N4
\controller|ADDRESS[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ADDRESS[3]~feeder_combout\ = \controller|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Mux1~0_combout\,
	combout => \controller|ADDRESS[3]~feeder_combout\);

-- Location: LCFF_X38_Y10_N5
\controller|ADDRESS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|ADDRESS[3]~feeder_combout\,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(3));

-- Location: LCCOMB_X38_Y9_N20
\controller|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector32~0_combout\ = (\controller|state.s7~regout\ & (((\controller|ADDRESS\(3))))) # (!\controller|state.s7~regout\ & (\controller|state.s1~regout\ & ((\controller|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s1~regout\,
	datab => \controller|state.s7~regout\,
	datac => \controller|ADDRESS\(3),
	datad => \controller|Mux1~0_combout\,
	combout => \controller|Selector32~0_combout\);

-- Location: LCCOMB_X38_Y9_N16
\controller|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|WideOr1~0_combout\ = (\controller|state.s7~regout\) # ((\controller|state.s1~regout\) # (!\controller|state.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s7~regout\,
	datac => \controller|state.s0~regout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|WideOr1~0_combout\);

-- Location: LCFF_X38_Y9_N21
\controller|imm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector32~0_combout\,
	aclr => \rst~combout\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(3));

-- Location: LCCOMB_X37_Y9_N6
\datapath|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux0~0_combout\ = (\controller|selc_dp\(1) & ((\controller|selc_dp\(0) & (\datapath|rf1|output\(3))) # (!\controller|selc_dp\(0) & ((\controller|imm\(3)))))) # (!\controller|selc_dp\(1) & (\datapath|rf1|output\(3) & (!\controller|selc_dp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(3),
	datab => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(0),
	datad => \controller|imm\(3),
	combout => \datapath|Mux0~0_combout\);

-- Location: LCFF_X37_Y9_N7
\datapath|entrada1_alu[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux0~0_combout\,
	sclr => \controller|selc_dp\(3),
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(3));

-- Location: LCCOMB_X38_Y9_N18
\controller|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux2~0_combout\ = (!\controller|PC\(1) & (\controller|PC\(2) $ (\controller|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(2),
	datac => \controller|PC\(1),
	datad => \controller|PC\(0),
	combout => \controller|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y9_N28
\controller|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~0_combout\ = (\controller|state.s7~regout\ & (\controller|ADDRESS\(0))) # (!\controller|state.s7~regout\ & (((\controller|Mux2~0_combout\ & \controller|state.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS\(0),
	datab => \controller|Mux2~0_combout\,
	datac => \controller|state.s1~regout\,
	datad => \controller|state.s7~regout\,
	combout => \controller|Selector35~0_combout\);

-- Location: LCFF_X38_Y9_N29
\controller|imm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector35~0_combout\,
	aclr => \rst~combout\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(0));

-- Location: LCCOMB_X37_Y9_N4
\datapath|entrada1_alu[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada1_alu[2]~1_combout\ = (\controller|selc_dp\(1) & (\controller|selc_dp\(0))) # (!\controller|selc_dp\(1) & (!\controller|selc_dp\(0) & !\controller|selc_dp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(3),
	combout => \datapath|entrada1_alu[2]~1_combout\);

-- Location: LCCOMB_X37_Y9_N10
\datapath|entrada1_alu[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada1_alu[2]~0_combout\ = (!\controller|selc_dp\(0) & !\controller|selc_dp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(3),
	combout => \datapath|entrada1_alu[2]~0_combout\);

-- Location: LCCOMB_X37_Y9_N30
\datapath|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux1~0_combout\ = (\datapath|entrada1_alu[2]~1_combout\ & (\datapath|rf1|output\(2))) # (!\datapath|entrada1_alu[2]~1_combout\ & (((\controller|imm\(0) & \datapath|entrada1_alu[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(2),
	datab => \controller|imm\(0),
	datac => \datapath|entrada1_alu[2]~1_combout\,
	datad => \datapath|entrada1_alu[2]~0_combout\,
	combout => \datapath|Mux1~0_combout\);

-- Location: LCFF_X37_Y9_N31
\datapath|entrada1_alu[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux1~0_combout\,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(2));

-- Location: LCCOMB_X38_Y9_N26
\controller|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux3~0_combout\ = (\controller|PC\(2) & (!\controller|PC\(1) & !\controller|PC\(0))) # (!\controller|PC\(2) & (\controller|PC\(1) & \controller|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(2),
	datac => \controller|PC\(1),
	datad => \controller|PC\(0),
	combout => \controller|Mux3~0_combout\);

-- Location: LCFF_X38_Y10_N17
\controller|ADDRESS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|Mux3~0_combout\,
	sload => VCC,
	ena => \controller|OPCODE[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(1));

-- Location: LCCOMB_X38_Y9_N30
\controller|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector34~0_combout\ = (\controller|state.s7~regout\ & (((\controller|ADDRESS\(1))))) # (!\controller|state.s7~regout\ & (\controller|state.s1~regout\ & ((\controller|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s7~regout\,
	datab => \controller|state.s1~regout\,
	datac => \controller|ADDRESS\(1),
	datad => \controller|Mux3~0_combout\,
	combout => \controller|Selector34~0_combout\);

-- Location: LCFF_X38_Y9_N31
\controller|imm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector34~0_combout\,
	aclr => \rst~combout\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(1));

-- Location: LCCOMB_X37_Y9_N8
\datapath|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux2~0_combout\ = (\controller|selc_dp\(0) & (\datapath|rf1|output\(1) & ((\controller|selc_dp\(1))))) # (!\controller|selc_dp\(0) & ((\controller|selc_dp\(1) & ((\controller|imm\(1)))) # (!\controller|selc_dp\(1) & (\datapath|rf1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(1),
	datab => \controller|imm\(1),
	datac => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(1),
	combout => \datapath|Mux2~0_combout\);

-- Location: LCFF_X37_Y9_N9
\datapath|entrada1_alu[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux2~0_combout\,
	sclr => \controller|selc_dp\(3),
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(1));

-- Location: LCCOMB_X36_Y9_N18
\datapath|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux3~0_combout\ = (\datapath|entrada1_alu[2]~1_combout\ & (\datapath|rf1|output\(0))) # (!\datapath|entrada1_alu[2]~1_combout\ & (((\controller|imm\(0) & \datapath|entrada1_alu[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(0),
	datab => \controller|imm\(0),
	datac => \datapath|entrada1_alu[2]~0_combout\,
	datad => \datapath|entrada1_alu[2]~1_combout\,
	combout => \datapath|Mux3~0_combout\);

-- Location: LCFF_X36_Y9_N19
\datapath|entrada1_alu[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux3~0_combout\,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(0));

-- Location: LCCOMB_X36_Y9_N6
\datapath|alu1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~1_cout\ = CARRY(!\controller|selc_dp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|selc_dp\(0),
	datad => VCC,
	cout => \datapath|alu1|Add0~1_cout\);

-- Location: LCCOMB_X36_Y9_N8
\datapath|alu1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~2_combout\ = (\datapath|entrada2_alu\(0) & ((\datapath|entrada1_alu\(0) & (\datapath|alu1|Add0~1_cout\ & VCC)) # (!\datapath|entrada1_alu\(0) & (!\datapath|alu1|Add0~1_cout\)))) # (!\datapath|entrada2_alu\(0) & 
-- ((\datapath|entrada1_alu\(0) & (!\datapath|alu1|Add0~1_cout\)) # (!\datapath|entrada1_alu\(0) & ((\datapath|alu1|Add0~1_cout\) # (GND)))))
-- \datapath|alu1|Add0~3\ = CARRY((\datapath|entrada2_alu\(0) & (!\datapath|entrada1_alu\(0) & !\datapath|alu1|Add0~1_cout\)) # (!\datapath|entrada2_alu\(0) & ((!\datapath|alu1|Add0~1_cout\) # (!\datapath|entrada1_alu\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(0),
	datab => \datapath|entrada1_alu\(0),
	datad => VCC,
	cin => \datapath|alu1|Add0~1_cout\,
	combout => \datapath|alu1|Add0~2_combout\,
	cout => \datapath|alu1|Add0~3\);

-- Location: LCCOMB_X36_Y9_N10
\datapath|alu1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~4_combout\ = ((\datapath|entrada2_alu\(1) $ (\datapath|entrada1_alu\(1) $ (!\datapath|alu1|Add0~3\)))) # (GND)
-- \datapath|alu1|Add0~5\ = CARRY((\datapath|entrada2_alu\(1) & ((\datapath|entrada1_alu\(1)) # (!\datapath|alu1|Add0~3\))) # (!\datapath|entrada2_alu\(1) & (\datapath|entrada1_alu\(1) & !\datapath|alu1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(1),
	datab => \datapath|entrada1_alu\(1),
	datad => VCC,
	cin => \datapath|alu1|Add0~3\,
	combout => \datapath|alu1|Add0~4_combout\,
	cout => \datapath|alu1|Add0~5\);

-- Location: LCCOMB_X36_Y9_N12
\datapath|alu1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~6_combout\ = (\datapath|entrada2_alu\(2) & ((\datapath|entrada1_alu\(2) & (\datapath|alu1|Add0~5\ & VCC)) # (!\datapath|entrada1_alu\(2) & (!\datapath|alu1|Add0~5\)))) # (!\datapath|entrada2_alu\(2) & ((\datapath|entrada1_alu\(2) & 
-- (!\datapath|alu1|Add0~5\)) # (!\datapath|entrada1_alu\(2) & ((\datapath|alu1|Add0~5\) # (GND)))))
-- \datapath|alu1|Add0~7\ = CARRY((\datapath|entrada2_alu\(2) & (!\datapath|entrada1_alu\(2) & !\datapath|alu1|Add0~5\)) # (!\datapath|entrada2_alu\(2) & ((!\datapath|alu1|Add0~5\) # (!\datapath|entrada1_alu\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(2),
	datab => \datapath|entrada1_alu\(2),
	datad => VCC,
	cin => \datapath|alu1|Add0~5\,
	combout => \datapath|alu1|Add0~6_combout\,
	cout => \datapath|alu1|Add0~7\);

-- Location: LCCOMB_X36_Y9_N14
\datapath|alu1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~8_combout\ = \datapath|entrada2_alu\(3) $ (\datapath|alu1|Add0~7\ $ (!\datapath|entrada1_alu\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|entrada2_alu\(3),
	datad => \datapath|entrada1_alu\(3),
	cin => \datapath|alu1|Add0~7\,
	combout => \datapath|alu1|Add0~8_combout\);

-- Location: LCCOMB_X37_Y9_N18
\datapath|alu1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~0_combout\ = (\datapath|entrada1_alu\(3) & (!\controller|selc_dp\(0) & ((\controller|selc_dp\(1)) # (!\controller|selc_dp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(3),
	datab => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(3),
	combout => \datapath|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y9_N4
\datapath|alu1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~2_combout\ = (\datapath|alu1|Mux0~1_combout\) # ((\datapath|alu1|Mux0~0_combout\) # ((\datapath|alu1|output[2]~0_combout\ & \datapath|alu1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[2]~0_combout\,
	datab => \datapath|alu1|Mux0~1_combout\,
	datac => \datapath|alu1|Add0~8_combout\,
	datad => \datapath|alu1|Mux0~0_combout\,
	combout => \datapath|alu1|Mux0~2_combout\);

-- Location: LCFF_X36_Y9_N5
\datapath|alu1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|alu1|Mux0~2_combout\,
	aclr => \rst~combout\,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(3));

-- Location: LCCOMB_X35_Y9_N0
\datapath|entrada_acc[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_acc[3]~feeder_combout\ = \datapath|alu1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(3),
	combout => \datapath|entrada_acc[3]~feeder_combout\);

-- Location: LCCOMB_X35_Y9_N20
\datapath|entrada_acc[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_acc[2]~0_combout\ = (\controller|selc_dp\(1) & ((!\controller|selc_dp\(3)))) # (!\controller|selc_dp\(1) & (!\controller|selc_dp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|selc_dp\(0),
	datac => \controller|selc_dp\(1),
	datad => \controller|selc_dp\(3),
	combout => \datapath|entrada_acc[2]~0_combout\);

-- Location: LCFF_X35_Y9_N1
\datapath|entrada_acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|entrada_acc[3]~feeder_combout\,
	ena => \datapath|entrada_acc[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_acc\(3));

-- Location: LCCOMB_X34_Y9_N18
\datapath|acc1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output~2_combout\ = (\controller|enbcacc~regout\ & ((\datapath|entrada_acc\(3)))) # (!\controller|enbcacc~regout\ & (\datapath|acc1|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enbcacc~regout\,
	datac => \datapath|acc1|temp\(3),
	datad => \datapath|entrada_acc\(3),
	combout => \datapath|acc1|output~2_combout\);

-- Location: LCCOMB_X34_Y9_N2
\datapath|acc1|output[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output[3]~feeder_combout\ = \datapath|acc1|output~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acc1|output~2_combout\,
	combout => \datapath|acc1|output[3]~feeder_combout\);

-- Location: LCFF_X34_Y9_N3
\datapath|acc1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output[3]~feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(3));

-- Location: LCFF_X34_Y9_N21
\datapath|acc1|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|temp\(1));

-- Location: LCCOMB_X37_Y9_N12
\datapath|alu1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~1_combout\ = (!\controller|selc_dp\(1) & ((\datapath|entrada2_alu\(1) & (\controller|selc_dp\(0) & !\controller|selc_dp\(3))) # (!\datapath|entrada2_alu\(1) & ((\controller|selc_dp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(1),
	datab => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(3),
	combout => \datapath|alu1|Mux2~1_combout\);

-- Location: LCCOMB_X37_Y9_N22
\datapath|alu1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~0_combout\ = (\datapath|entrada1_alu\(1) & (!\controller|selc_dp\(0) & ((\controller|selc_dp\(1)) # (!\controller|selc_dp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(1),
	datab => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(3),
	combout => \datapath|alu1|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y9_N26
\datapath|alu1|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~2_combout\ = (\datapath|alu1|Mux2~1_combout\) # ((\datapath|alu1|Mux2~0_combout\) # ((\datapath|alu1|output[2]~0_combout\ & \datapath|alu1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[2]~0_combout\,
	datab => \datapath|alu1|Mux2~1_combout\,
	datac => \datapath|alu1|Mux2~0_combout\,
	datad => \datapath|alu1|Add0~4_combout\,
	combout => \datapath|alu1|Mux2~2_combout\);

-- Location: LCFF_X36_Y9_N27
\datapath|alu1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|alu1|Mux2~2_combout\,
	aclr => \rst~combout\,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(1));

-- Location: LCFF_X35_Y9_N19
\datapath|entrada_acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(1),
	sload => VCC,
	ena => \datapath|entrada_acc[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_acc\(1));

-- Location: LCCOMB_X34_Y9_N20
\datapath|acc1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output~1_combout\ = (\controller|enbcacc~regout\ & ((\datapath|entrada_acc\(1)))) # (!\controller|enbcacc~regout\ & (\datapath|acc1|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enbcacc~regout\,
	datac => \datapath|acc1|temp\(1),
	datad => \datapath|entrada_acc\(1),
	combout => \datapath|acc1|output~1_combout\);

-- Location: LCFF_X34_Y9_N25
\datapath|acc1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|acc1|output~1_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(1));

-- Location: LCFF_X34_Y9_N29
\datapath|acc1|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|temp\(2));

-- Location: LCCOMB_X36_Y9_N0
\datapath|alu1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~1_combout\ = (\controller|selc_dp\(1) & ((\controller|selc_dp\(0) & ((\datapath|alu1|Add0~6_combout\))) # (!\controller|selc_dp\(0) & (\datapath|alu1|Mux1~0_combout\)))) # (!\controller|selc_dp\(1) & (\datapath|alu1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|Mux1~0_combout\,
	datab => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(0),
	datad => \datapath|alu1|Add0~6_combout\,
	combout => \datapath|alu1|Mux1~1_combout\);

-- Location: LCFF_X36_Y9_N1
\datapath|alu1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|alu1|Mux1~1_combout\,
	aclr => \rst~combout\,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(2));

-- Location: LCFF_X35_Y9_N25
\datapath|entrada_acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(2),
	sload => VCC,
	ena => \datapath|entrada_acc[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_acc\(2));

-- Location: LCCOMB_X34_Y9_N28
\datapath|acc1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output~0_combout\ = (\controller|enbcacc~regout\ & ((\datapath|entrada_acc\(2)))) # (!\controller|enbcacc~regout\ & (\datapath|acc1|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enbcacc~regout\,
	datac => \datapath|acc1|temp\(2),
	datad => \datapath|entrada_acc\(2),
	combout => \datapath|acc1|output~0_combout\);

-- Location: LCCOMB_X34_Y9_N30
\datapath|acc1|output[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output[2]~feeder_combout\ = \datapath|acc1|output~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acc1|output~0_combout\,
	combout => \datapath|acc1|output[2]~feeder_combout\);

-- Location: LCFF_X34_Y9_N31
\datapath|acc1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output[2]~feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(2));

-- Location: LCCOMB_X34_Y9_N24
\c1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux3~0_combout\ = (\datapath|acc1|output\(3) & ((\datapath|acc1|output\(1)) # (\datapath|acc1|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|acc1|output\(3),
	datac => \datapath|acc1|output\(1),
	datad => \datapath|acc1|output\(2),
	combout => \c1|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y9_N12
\conv1[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \conv1[0]~reg0feeder_combout\ = \c1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|Mux3~0_combout\,
	combout => \conv1[0]~reg0feeder_combout\);

-- Location: LCFF_X33_Y9_N13
\conv1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \conv1[0]~reg0feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv1[0]~reg0_regout\);

-- Location: LCCOMB_X33_Y9_N2
\conv1[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \conv1[3]~reg0feeder_combout\ = \c1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|Mux3~0_combout\,
	combout => \conv1[3]~reg0feeder_combout\);

-- Location: LCFF_X33_Y9_N3
\conv1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \conv1[3]~reg0feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv1[3]~reg0_regout\);

-- Location: LCCOMB_X34_Y9_N0
\conv1[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \conv1[4]~reg0feeder_combout\ = \c1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|Mux3~0_combout\,
	combout => \conv1[4]~reg0feeder_combout\);

-- Location: LCFF_X34_Y9_N1
\conv1[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \conv1[4]~reg0feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv1[4]~reg0_regout\);

-- Location: LCCOMB_X33_Y9_N8
\conv1[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \conv1[5]~reg0feeder_combout\ = \c1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|Mux3~0_combout\,
	combout => \conv1[5]~reg0feeder_combout\);

-- Location: LCFF_X33_Y9_N9
\conv1[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \conv1[5]~reg0feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv1[5]~reg0_regout\);

-- Location: LCFF_X34_Y9_N5
\datapath|acc1|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output~3_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|temp\(0));

-- Location: LCCOMB_X35_Y9_N4
\datapath|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux7~0_combout\ = (\datapath|acc1|output\(0) & ((\controller|selc_dp\(0)) # (\controller|selc_dp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(0),
	datab => \controller|selc_dp\(3),
	datad => \datapath|acc1|output\(0),
	combout => \datapath|Mux7~0_combout\);

-- Location: LCFF_X36_Y9_N17
\datapath|entrada2_alu[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|Mux7~0_combout\,
	sload => VCC,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(0));

-- Location: LCCOMB_X37_Y9_N20
\datapath|alu1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~0_combout\ = (\controller|selc_dp\(0) & (((\datapath|entrada2_alu\(0))))) # (!\controller|selc_dp\(0) & ((\controller|selc_dp\(3) & ((!\datapath|entrada2_alu\(0)))) # (!\controller|selc_dp\(3) & (\datapath|entrada1_alu\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(0),
	datab => \datapath|entrada2_alu\(0),
	datac => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(3),
	combout => \datapath|alu1|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y9_N26
\datapath|alu1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~1_combout\ = (\controller|selc_dp\(0) & ((\controller|selc_dp\(1) & ((\datapath|alu1|Add0~2_combout\))) # (!\controller|selc_dp\(1) & (\datapath|alu1|Mux3~0_combout\)))) # (!\controller|selc_dp\(0) & 
-- (((\datapath|alu1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(0),
	datab => \controller|selc_dp\(1),
	datac => \datapath|alu1|Mux3~0_combout\,
	datad => \datapath|alu1|Add0~2_combout\,
	combout => \datapath|alu1|Mux3~1_combout\);

-- Location: LCFF_X37_Y9_N27
\datapath|alu1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|alu1|Mux3~1_combout\,
	aclr => \rst~combout\,
	ena => \datapath|entrada_acc[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(0));

-- Location: LCCOMB_X35_Y9_N22
\datapath|entrada_acc[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada_acc[0]~feeder_combout\ = \datapath|alu1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(0),
	combout => \datapath|entrada_acc[0]~feeder_combout\);

-- Location: LCFF_X35_Y9_N23
\datapath|entrada_acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|entrada_acc[0]~feeder_combout\,
	ena => \datapath|entrada_acc[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada_acc\(0));

-- Location: LCCOMB_X34_Y9_N4
\datapath|acc1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output~3_combout\ = (\controller|enbcacc~regout\ & ((\datapath|entrada_acc\(0)))) # (!\controller|enbcacc~regout\ & (\datapath|acc1|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enbcacc~regout\,
	datac => \datapath|acc1|temp\(0),
	datad => \datapath|entrada_acc\(0),
	combout => \datapath|acc1|output~3_combout\);

-- Location: LCCOMB_X33_Y9_N20
\datapath|acc1|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output[0]~feeder_combout\ = \datapath|acc1|output~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acc1|output~3_combout\,
	combout => \datapath|acc1|output[0]~feeder_combout\);

-- Location: LCFF_X33_Y9_N21
\datapath|acc1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output[0]~feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(0));

-- Location: LCCOMB_X33_Y9_N10
\c1|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux10~0_combout\ = (\datapath|acc1|output\(3) & (\datapath|acc1|output\(1) & (\datapath|acc1|output\(2) $ (\datapath|acc1|output\(0))))) # (!\datapath|acc1|output\(3) & (!\datapath|acc1|output\(1) & (\datapath|acc1|output\(2) $ 
-- (\datapath|acc1|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acc1|output\(3),
	datab => \datapath|acc1|output\(2),
	datac => \datapath|acc1|output\(0),
	datad => \datapath|acc1|output\(1),
	combout => \c1|Mux10~0_combout\);

-- Location: LCFF_X33_Y9_N11
\conv2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux10~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[0]~reg0_regout\);

-- Location: LCCOMB_X33_Y9_N0
\c1|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux9~0_combout\ = (\datapath|acc1|output\(2) & ((\datapath|acc1|output\(3) & (\datapath|acc1|output\(0) & \datapath|acc1|output\(1))) # (!\datapath|acc1|output\(3) & (\datapath|acc1|output\(0) $ (\datapath|acc1|output\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acc1|output\(3),
	datab => \datapath|acc1|output\(2),
	datac => \datapath|acc1|output\(0),
	datad => \datapath|acc1|output\(1),
	combout => \c1|Mux9~0_combout\);

-- Location: LCFF_X33_Y9_N1
\conv2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux9~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[1]~reg0_regout\);

-- Location: LCCOMB_X33_Y9_N18
\c1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux8~0_combout\ = (!\datapath|acc1|output\(0) & ((\datapath|acc1|output\(3) & (\datapath|acc1|output\(2) & !\datapath|acc1|output\(1))) # (!\datapath|acc1|output\(3) & (!\datapath|acc1|output\(2) & \datapath|acc1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acc1|output\(3),
	datab => \datapath|acc1|output\(2),
	datac => \datapath|acc1|output\(0),
	datad => \datapath|acc1|output\(1),
	combout => \c1|Mux8~0_combout\);

-- Location: LCFF_X33_Y9_N19
\conv2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux8~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[2]~reg0_regout\);

-- Location: LCCOMB_X33_Y9_N24
\c1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux7~0_combout\ = (\datapath|acc1|output\(3) & (\datapath|acc1|output\(1) & (\datapath|acc1|output\(2) $ (\datapath|acc1|output\(0))))) # (!\datapath|acc1|output\(3) & ((\datapath|acc1|output\(2) & (\datapath|acc1|output\(0) $ 
-- (!\datapath|acc1|output\(1)))) # (!\datapath|acc1|output\(2) & (\datapath|acc1|output\(0) & !\datapath|acc1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acc1|output\(3),
	datab => \datapath|acc1|output\(2),
	datac => \datapath|acc1|output\(0),
	datad => \datapath|acc1|output\(1),
	combout => \c1|Mux7~0_combout\);

-- Location: LCFF_X33_Y9_N25
\conv2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux7~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[3]~reg0_regout\);

-- Location: LCCOMB_X33_Y9_N22
\c1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux6~0_combout\ = (\datapath|acc1|output\(2) & ((\datapath|acc1|output\(0)) # (\datapath|acc1|output\(3) $ (!\datapath|acc1|output\(1))))) # (!\datapath|acc1|output\(2) & (\datapath|acc1|output\(0) & ((\datapath|acc1|output\(1)) # 
-- (!\datapath|acc1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acc1|output\(3),
	datab => \datapath|acc1|output\(2),
	datac => \datapath|acc1|output\(0),
	datad => \datapath|acc1|output\(1),
	combout => \c1|Mux6~0_combout\);

-- Location: LCFF_X33_Y9_N23
\conv2[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux6~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[4]~reg0_regout\);

-- Location: LCCOMB_X33_Y9_N16
\c1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux5~0_combout\ = (\datapath|acc1|output\(2) & ((\datapath|acc1|output\(3) & ((!\datapath|acc1|output\(1)))) # (!\datapath|acc1|output\(3) & (\datapath|acc1|output\(0) & \datapath|acc1|output\(1))))) # (!\datapath|acc1|output\(2) & 
-- ((\datapath|acc1|output\(0)) # ((!\datapath|acc1|output\(3) & \datapath|acc1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acc1|output\(3),
	datab => \datapath|acc1|output\(2),
	datac => \datapath|acc1|output\(0),
	datad => \datapath|acc1|output\(1),
	combout => \c1|Mux5~0_combout\);

-- Location: LCFF_X33_Y9_N17
\conv2[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux5~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[5]~reg0_regout\);

-- Location: LCCOMB_X33_Y9_N26
\c1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux4~0_combout\ = (\datapath|acc1|output\(2) & ((\datapath|acc1|output\(3)) # ((!\datapath|acc1|output\(1)) # (!\datapath|acc1|output\(0))))) # (!\datapath|acc1|output\(2) & (\datapath|acc1|output\(3) $ (((\datapath|acc1|output\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acc1|output\(3),
	datab => \datapath|acc1|output\(2),
	datac => \datapath|acc1|output\(0),
	datad => \datapath|acc1|output\(1),
	combout => \c1|Mux4~0_combout\);

-- Location: LCFF_X33_Y9_N27
\conv2[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux4~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[6]~reg0_regout\);

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display1[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display2[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display2[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display3[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display3[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display3[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display3[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display3[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(6));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display4[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display4[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display4[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display4[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display4[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display4[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv1(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv1(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv1(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv1[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv1(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv1[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv1(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv1[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv1(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv1(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv2(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv2(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv2(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv2(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv2[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv2(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \conv2[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv2(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conv2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_conv2[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conv2(6));
END structure;


