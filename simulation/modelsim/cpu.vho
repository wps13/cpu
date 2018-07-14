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

-- DATE "06/19/2018 10:44:08"

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
-- conv1[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv1[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conv1[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \datapath|alu1|sub|FA_1|s~combout\ : std_logic;
SIGNAL \controller|Selector37~1_combout\ : std_logic;
SIGNAL \controller|Selector35~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux18~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux18~1_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux16~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux16~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \datapath|rf1|out3[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out2[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out3[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out3[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|out2[3]~feeder_combout\ : std_logic;
SIGNAL \clk~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \controller|ADDRESS[3]~0_combout\ : std_logic;
SIGNAL \controller|Mux6~0_combout\ : std_logic;
SIGNAL \controller|Add0~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \controller|state.s0~0_combout\ : std_logic;
SIGNAL \controller|state.s0~regout\ : std_logic;
SIGNAL \controller|Selector31~0_combout\ : std_logic;
SIGNAL \controller|Selector31~1_combout\ : std_logic;
SIGNAL \controller|Mux1~0_combout\ : std_logic;
SIGNAL \controller|Mux6~1_combout\ : std_logic;
SIGNAL \controller|state.s12~regout\ : std_logic;
SIGNAL \controller|Mux3~0_combout\ : std_logic;
SIGNAL \controller|Mux4~0_combout\ : std_logic;
SIGNAL \controller|Add0~1\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|Selector30~0_combout\ : std_logic;
SIGNAL \controller|PC[2]~2_combout\ : std_logic;
SIGNAL \controller|Add0~3\ : std_logic;
SIGNAL \controller|Add0~4_combout\ : std_logic;
SIGNAL \controller|Selector29~2_combout\ : std_logic;
SIGNAL \controller|Mux2~0_combout\ : std_logic;
SIGNAL \controller|state.done~0_combout\ : std_logic;
SIGNAL \controller|state.done~regout\ : std_logic;
SIGNAL \controller|WideOr4~0_combout\ : std_logic;
SIGNAL \controller|Selector37~0_combout\ : std_logic;
SIGNAL \controller|Selector37~2_combout\ : std_logic;
SIGNAL \controller|state.s1~regout\ : std_logic;
SIGNAL \controller|state.s2~regout\ : std_logic;
SIGNAL \controller|state.s4~regout\ : std_logic;
SIGNAL \controller|Mux6~2_combout\ : std_logic;
SIGNAL \controller|Mux6~3_combout\ : std_logic;
SIGNAL \controller|state.s13~regout\ : std_logic;
SIGNAL \controller|Selector52~0_combout\ : std_logic;
SIGNAL \controller|Selector52~1_combout\ : std_logic;
SIGNAL \display1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[0]~reg0_regout\ : std_logic;
SIGNAL \controller|Mux0~0_combout\ : std_logic;
SIGNAL \controller|Mux6~6_combout\ : std_logic;
SIGNAL \controller|state.s11~regout\ : std_logic;
SIGNAL \controller|Mux6~8_combout\ : std_logic;
SIGNAL \controller|state.s8~regout\ : std_logic;
SIGNAL \controller|Selector54~0_combout\ : std_logic;
SIGNAL \controller|Selector54~1_combout\ : std_logic;
SIGNAL \d1|Mux1~0_combout\ : std_logic;
SIGNAL \display1[1]~reg0_regout\ : std_logic;
SIGNAL \display1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[2]~reg0_regout\ : std_logic;
SIGNAL \display1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[3]~reg0_regout\ : std_logic;
SIGNAL \display1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[4]~reg0_regout\ : std_logic;
SIGNAL \display1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \display1[5]~reg0_regout\ : std_logic;
SIGNAL \controller|Mux6~4_combout\ : std_logic;
SIGNAL \controller|state.s9~regout\ : std_logic;
SIGNAL \controller|Mux6~5_combout\ : std_logic;
SIGNAL \controller|state.s10~regout\ : std_logic;
SIGNAL \controller|Selector53~0_combout\ : std_logic;
SIGNAL \controller|Selector53~1_combout\ : std_logic;
SIGNAL \d1|Mux7~0_combout\ : std_logic;
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
SIGNAL \d1|Mux13~0_combout\ : std_logic;
SIGNAL \display3[0]~reg0_regout\ : std_logic;
SIGNAL \display3[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display3[1]~reg0_regout\ : std_logic;
SIGNAL \display3[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display3[2]~reg0_regout\ : std_logic;
SIGNAL \display3[3]~reg0feeder_combout\ : std_logic;
SIGNAL \display3[3]~reg0_regout\ : std_logic;
SIGNAL \display3[4]~reg0_regout\ : std_logic;
SIGNAL \display3[5]~reg0_regout\ : std_logic;
SIGNAL \controller|Selector55~0_combout\ : std_logic;
SIGNAL \controller|Selector55~1_combout\ : std_logic;
SIGNAL \d1|Mux19~0_combout\ : std_logic;
SIGNAL \display4[0]~reg0feeder_combout\ : std_logic;
SIGNAL \display4[0]~reg0_regout\ : std_logic;
SIGNAL \display4[1]~reg0feeder_combout\ : std_logic;
SIGNAL \display4[1]~reg0_regout\ : std_logic;
SIGNAL \display4[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display4[2]~reg0_regout\ : std_logic;
SIGNAL \display4[3]~reg0feeder_combout\ : std_logic;
SIGNAL \display4[3]~reg0_regout\ : std_logic;
SIGNAL \display4[4]~reg0feeder_combout\ : std_logic;
SIGNAL \display4[4]~reg0_regout\ : std_logic;
SIGNAL \display4[5]~reg0feeder_combout\ : std_logic;
SIGNAL \display4[5]~reg0_regout\ : std_logic;
SIGNAL \controller|Selector32~0_combout\ : std_logic;
SIGNAL \controller|Mux6~7_combout\ : std_logic;
SIGNAL \controller|state.s7~regout\ : std_logic;
SIGNAL \controller|WideOr1~0_combout\ : std_logic;
SIGNAL \datapath|entrada1_alu[3]~0_combout\ : std_logic;
SIGNAL \datapath|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|Mux0~1_combout\ : std_logic;
SIGNAL \datapath|entrada2_alu[0]~0_combout\ : std_logic;
SIGNAL \controller|Mux6~9_combout\ : std_logic;
SIGNAL \controller|state.s6~regout\ : std_logic;
SIGNAL \controller|Selector51~0_combout\ : std_logic;
SIGNAL \controller|Selector50~0_combout\ : std_logic;
SIGNAL \controller|Selector50~1_combout\ : std_logic;
SIGNAL \controller|enbcacc~regout\ : std_logic;
SIGNAL \datapath|acc1|output~3_combout\ : std_logic;
SIGNAL \datapath|Mux4~0_combout\ : std_logic;
SIGNAL \datapath|alu1|sub|FA_3|s~0_combout\ : std_logic;
SIGNAL \datapath|alu1|output[3]~0_combout\ : std_logic;
SIGNAL \datapath|alu1|output[3]~1_combout\ : std_logic;
SIGNAL \controller|Selector34~0_combout\ : std_logic;
SIGNAL \datapath|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~3_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~4_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~5_combout\ : std_logic;
SIGNAL \datapath|rf1|out3[0]~feeder_combout\ : std_logic;
SIGNAL \controller|selcrf[0]~feeder_combout\ : std_logic;
SIGNAL \controller|Mux6~10_combout\ : std_logic;
SIGNAL \controller|state.s5~regout\ : std_logic;
SIGNAL \controller|selcrf[1]~0_combout\ : std_logic;
SIGNAL \controller|selcrf[1]~feeder_combout\ : std_logic;
SIGNAL \controller|Selector51~1_combout\ : std_logic;
SIGNAL \controller|enbcrf~regout\ : std_logic;
SIGNAL \datapath|rf1|Mux8~2_combout\ : std_logic;
SIGNAL \datapath|rf1|out2[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux8~1_combout\ : std_logic;
SIGNAL \datapath|rf1|out0[3]~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux19~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux19~1_combout\ : std_logic;
SIGNAL \datapath|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|acc1|output~2_combout\ : std_logic;
SIGNAL \datapath|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|alu1|soma|FA_1|s~combout\ : std_logic;
SIGNAL \datapath|alu1|output[3]~2_combout\ : std_logic;
SIGNAL \datapath|alu1|output[3]~3_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~3_combout\ : std_logic;
SIGNAL \datapath|alu1|output[3]~4_combout\ : std_logic;
SIGNAL \datapath|acc1|output~1_combout\ : std_logic;
SIGNAL \datapath|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|alu1|sub|FA_1|cout~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux8~0_combout\ : std_logic;
SIGNAL \datapath|rf1|out2[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux17~0_combout\ : std_logic;
SIGNAL \datapath|rf1|Mux17~1_combout\ : std_logic;
SIGNAL \datapath|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux1~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux1~2_combout\ : std_logic;
SIGNAL \datapath|alu1|soma|FA_1|cout~0_combout\ : std_logic;
SIGNAL \datapath|alu1|soma|FA_2|s~combout\ : std_logic;
SIGNAL \datapath|alu1|Mux1~3_combout\ : std_logic;
SIGNAL \datapath|acc1|output~0_combout\ : std_logic;
SIGNAL \datapath|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|alu1|soma|FA_3|s~combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~4_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~3_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~7_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~5_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~6_combout\ : std_logic;
SIGNAL \c1|Mux3~0_combout\ : std_logic;
SIGNAL \conv1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \conv1[0]~reg0_regout\ : std_logic;
SIGNAL \conv1[3]~reg0_regout\ : std_logic;
SIGNAL \conv1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \conv1[4]~reg0_regout\ : std_logic;
SIGNAL \conv1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \conv1[5]~reg0_regout\ : std_logic;
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

-- Location: LCCOMB_X16_Y8_N30
\datapath|alu1|sub|FA_1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|sub|FA_1|s~combout\ = \datapath|entrada1_alu\(1) $ (\datapath|entrada2_alu\(1) $ (((\datapath|entrada2_alu\(0)) # (!\datapath|entrada1_alu\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(0),
	datab => \datapath|entrada1_alu\(1),
	datac => \datapath|entrada2_alu\(0),
	datad => \datapath|entrada2_alu\(1),
	combout => \datapath|alu1|sub|FA_1|s~combout\);

-- Location: LCCOMB_X20_Y8_N26
\controller|Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~1_combout\ = (\controller|state.s4~regout\ & (\controller|ADDRESS\(3) & ((\controller|OPCODE\(2)) # (\controller|OPCODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(2),
	datab => \controller|state.s4~regout\,
	datac => \controller|ADDRESS\(3),
	datad => \controller|OPCODE\(1),
	combout => \controller|Selector37~1_combout\);

-- Location: LCFF_X20_Y8_N25
\controller|imm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector35~0_combout\,
	aclr => \rst~combout\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(0));

-- Location: LCFF_X12_Y8_N5
\datapath|rf1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|Mux18~1_combout\,
	aclr => \rst~combout\,
	ena => \controller|enbcrf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(1));

-- Location: LCFF_X12_Y8_N23
\datapath|rf1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|Mux16~1_combout\,
	aclr => \rst~combout\,
	ena => \controller|enbcrf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(3));

-- Location: LCFF_X12_Y8_N13
\datapath|rf1|out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out3[2]~feeder_combout\,
	ena => \datapath|rf1|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(2));

-- Location: LCCOMB_X20_Y8_N24
\controller|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~0_combout\ = (\controller|state.s7~regout\ & (\controller|ADDRESS\(0))) # (!\controller|state.s7~regout\ & (((\controller|Mux3~0_combout\ & \controller|state.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s7~regout\,
	datab => \controller|ADDRESS\(0),
	datac => \controller|Mux3~0_combout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|Selector35~0_combout\);

-- Location: LCFF_X11_Y8_N1
\datapath|rf1|out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(0),
	sload => VCC,
	ena => \datapath|rf1|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(0));

-- Location: LCFF_X15_Y8_N19
\datapath|rf1|out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out2[1]~feeder_combout\,
	ena => \datapath|rf1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(1));

-- Location: LCFF_X11_Y8_N5
\datapath|rf1|out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(1),
	sload => VCC,
	ena => \datapath|rf1|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(1));

-- Location: LCFF_X11_Y8_N31
\datapath|rf1|out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(1),
	sload => VCC,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(1));

-- Location: LCCOMB_X11_Y8_N30
\datapath|rf1|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux18~0_combout\ = (\controller|selcrf\(1) & (((\controller|selcrf\(0))))) # (!\controller|selcrf\(1) & ((\controller|selcrf\(0) & (\datapath|rf1|out1\(1))) # (!\controller|selcrf\(0) & ((\datapath|rf1|out0\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(1),
	datab => \datapath|rf1|out1\(1),
	datac => \datapath|rf1|out0\(1),
	datad => \controller|selcrf\(0),
	combout => \datapath|rf1|Mux18~0_combout\);

-- Location: LCFF_X12_Y8_N29
\datapath|rf1|out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out3[1]~feeder_combout\,
	ena => \datapath|rf1|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(1));

-- Location: LCCOMB_X12_Y8_N4
\datapath|rf1|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux18~1_combout\ = (\controller|selcrf\(1) & ((\datapath|rf1|Mux18~0_combout\ & (\datapath|rf1|out3\(1))) # (!\datapath|rf1|Mux18~0_combout\ & ((\datapath|rf1|out2\(1)))))) # (!\controller|selcrf\(1) & (((\datapath|rf1|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(1),
	datab => \datapath|rf1|out3\(1),
	datac => \datapath|rf1|Mux18~0_combout\,
	datad => \datapath|rf1|out2\(1),
	combout => \datapath|rf1|Mux18~1_combout\);

-- Location: LCFF_X15_Y8_N25
\datapath|rf1|out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out2[3]~feeder_combout\,
	ena => \datapath|rf1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(3));

-- Location: LCFF_X11_Y8_N29
\datapath|rf1|out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(3),
	sload => VCC,
	ena => \datapath|rf1|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(3));

-- Location: LCFF_X11_Y8_N3
\datapath|rf1|out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(3),
	sload => VCC,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(3));

-- Location: LCCOMB_X11_Y8_N2
\datapath|rf1|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux16~0_combout\ = (\controller|selcrf\(1) & (((\controller|selcrf\(0))))) # (!\controller|selcrf\(1) & ((\controller|selcrf\(0) & (\datapath|rf1|out1\(3))) # (!\controller|selcrf\(0) & ((\datapath|rf1|out0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(1),
	datab => \datapath|rf1|out1\(3),
	datac => \datapath|rf1|out0\(3),
	datad => \controller|selcrf\(0),
	combout => \datapath|rf1|Mux16~0_combout\);

-- Location: LCFF_X12_Y8_N31
\datapath|rf1|out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out3[3]~feeder_combout\,
	ena => \datapath|rf1|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(3));

-- Location: LCCOMB_X12_Y8_N22
\datapath|rf1|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux16~1_combout\ = (\controller|selcrf\(1) & ((\datapath|rf1|Mux16~0_combout\ & (\datapath|rf1|out3\(3))) # (!\datapath|rf1|Mux16~0_combout\ & ((\datapath|rf1|out2\(3)))))) # (!\controller|selcrf\(1) & (((\datapath|rf1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(1),
	datab => \datapath|rf1|out3\(3),
	datac => \datapath|rf1|out2\(3),
	datad => \datapath|rf1|Mux16~0_combout\,
	combout => \datapath|rf1|Mux16~1_combout\);

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

-- Location: LCCOMB_X12_Y8_N12
\datapath|rf1|out3[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out3[2]~feeder_combout\ = \datapath|alu1|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(2),
	combout => \datapath|rf1|out3[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y8_N18
\datapath|rf1|out2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out2[1]~feeder_combout\ = \datapath|alu1|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(1),
	combout => \datapath|rf1|out2[1]~feeder_combout\);

-- Location: LCCOMB_X12_Y8_N28
\datapath|rf1|out3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out3[1]~feeder_combout\ = \datapath|alu1|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(1),
	combout => \datapath|rf1|out3[1]~feeder_combout\);

-- Location: LCCOMB_X12_Y8_N30
\datapath|rf1|out3[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out3[3]~feeder_combout\ = \datapath|alu1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(3),
	combout => \datapath|rf1|out3[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y8_N24
\datapath|rf1|out2[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out2[3]~feeder_combout\ = \datapath|alu1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(3),
	combout => \datapath|rf1|out2[3]~feeder_combout\);

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

-- Location: LCCOMB_X20_Y8_N30
\controller|ADDRESS[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ADDRESS[3]~0_combout\ = (!\rst~combout\ & \controller|state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|ADDRESS[3]~0_combout\);

-- Location: LCFF_X20_Y8_N29
\controller|ADDRESS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|PC\(2),
	sload => VCC,
	ena => \controller|ADDRESS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(3));

-- Location: LCCOMB_X20_Y8_N14
\controller|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~0_combout\ = (!\controller|ADDRESS\(3) & \controller|state.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ADDRESS\(3),
	datad => \controller|state.s4~regout\,
	combout => \controller|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y8_N18
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

-- Location: LCCOMB_X20_Y8_N16
\controller|state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s0~0_combout\ = (\controller|state.s0~regout\) # ((!\rst~combout\ & \start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s0~regout\,
	datac => \rst~combout\,
	datad => \start~combout\,
	combout => \controller|state.s0~0_combout\);

-- Location: LCFF_X19_Y8_N31
\controller|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|state.s0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s0~regout\);

-- Location: LCCOMB_X21_Y8_N2
\controller|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector31~0_combout\ = (\controller|state.s12~regout\ & (\controller|ADDRESS\(0))) # (!\controller|state.s12~regout\ & (((!\controller|PC\(0) & \controller|state.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS\(0),
	datab => \controller|state.s12~regout\,
	datac => \controller|PC\(0),
	datad => \controller|state.s0~regout\,
	combout => \controller|Selector31~0_combout\);

-- Location: LCCOMB_X21_Y8_N0
\controller|Selector31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector31~1_combout\ = (\controller|state.s2~regout\ & (!\controller|Add0~0_combout\ & ((!\controller|Selector31~0_combout\) # (!\controller|state.s12~regout\)))) # (!\controller|state.s2~regout\ & (((!\controller|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|Add0~0_combout\,
	datac => \controller|state.s12~regout\,
	datad => \controller|Selector31~0_combout\,
	combout => \controller|Selector31~1_combout\);

-- Location: LCFF_X21_Y8_N1
\controller|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector31~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(0));

-- Location: LCCOMB_X20_Y8_N6
\controller|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux1~0_combout\ = (\controller|PC\(1)) # ((!\controller|PC\(2) & \controller|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(1),
	datab => \controller|PC\(2),
	datac => \controller|PC\(0),
	combout => \controller|Mux1~0_combout\);

-- Location: LCFF_X20_Y8_N7
\controller|OPCODE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux1~0_combout\,
	ena => \controller|ADDRESS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(1));

-- Location: LCCOMB_X20_Y8_N4
\controller|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~1_combout\ = (\controller|OPCODE\(2) & (\controller|OPCODE\(0) & (\controller|Mux6~0_combout\ & \controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(2),
	datab => \controller|OPCODE\(0),
	datac => \controller|Mux6~0_combout\,
	datad => \controller|OPCODE\(1),
	combout => \controller|Mux6~1_combout\);

-- Location: LCFF_X21_Y8_N11
\controller|state.s12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|Mux6~1_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s12~regout\);

-- Location: LCCOMB_X20_Y8_N20
\controller|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux3~0_combout\ = (!\controller|PC\(1) & \controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(1),
	datac => \controller|PC\(0),
	combout => \controller|Mux3~0_combout\);

-- Location: LCFF_X20_Y8_N31
\controller|ADDRESS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|Mux3~0_combout\,
	sload => VCC,
	ena => \controller|ADDRESS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(0));

-- Location: LCCOMB_X21_Y8_N16
\controller|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux4~0_combout\ = (\controller|PC\(0) & (\controller|PC\(2) $ (\controller|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datac => \controller|PC\(2),
	datad => \controller|PC\(1),
	combout => \controller|Mux4~0_combout\);

-- Location: LCFF_X20_Y8_N15
\controller|ADDRESS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|Mux4~0_combout\,
	sload => VCC,
	ena => \controller|ADDRESS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(1));

-- Location: LCCOMB_X21_Y8_N20
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

-- Location: LCCOMB_X21_Y8_N26
\controller|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector30~0_combout\ = (\controller|state.s12~regout\ & (((\controller|ADDRESS\(1))))) # (!\controller|state.s12~regout\ & (\controller|state.s2~regout\ & ((\controller|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|ADDRESS\(1),
	datac => \controller|state.s12~regout\,
	datad => \controller|Add0~2_combout\,
	combout => \controller|Selector30~0_combout\);

-- Location: LCCOMB_X21_Y8_N28
\controller|PC[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|PC[2]~2_combout\ = (!\rst~combout\ & ((\controller|state.s12~regout\) # ((\controller|state.s2~regout\) # (!\controller|state.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|state.s12~regout\,
	datac => \controller|state.s2~regout\,
	datad => \controller|state.s0~regout\,
	combout => \controller|PC[2]~2_combout\);

-- Location: LCFF_X21_Y8_N27
\controller|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector30~0_combout\,
	ena => \controller|PC[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(1));

-- Location: LCCOMB_X21_Y8_N22
\controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~4_combout\ = \controller|PC\(2) $ (!\controller|Add0~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(2),
	cin => \controller|Add0~3\,
	combout => \controller|Add0~4_combout\);

-- Location: LCCOMB_X21_Y8_N14
\controller|Selector29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector29~2_combout\ = (\controller|state.s12~regout\ & (((\controller|ADDRESS\(0))))) # (!\controller|state.s12~regout\ & (\controller|state.s2~regout\ & ((\controller|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|state.s12~regout\,
	datac => \controller|ADDRESS\(0),
	datad => \controller|Add0~4_combout\,
	combout => \controller|Selector29~2_combout\);

-- Location: LCFF_X21_Y8_N15
\controller|PC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector29~2_combout\,
	ena => \controller|PC[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(2));

-- Location: LCCOMB_X20_Y8_N0
\controller|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux2~0_combout\ = (!\controller|PC\(1) & (\controller|PC\(2) $ (!\controller|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(1),
	datab => \controller|PC\(2),
	datac => \controller|PC\(0),
	combout => \controller|Mux2~0_combout\);

-- Location: LCFF_X20_Y8_N1
\controller|OPCODE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux2~0_combout\,
	ena => \controller|ADDRESS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(0));

-- Location: LCCOMB_X19_Y8_N0
\controller|state.done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~0_combout\ = (\controller|state.done~regout\) # ((!\rst~combout\ & (\controller|Mux6~2_combout\ & \controller|OPCODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|Mux6~2_combout\,
	datac => \controller|state.done~regout\,
	datad => \controller|OPCODE\(0),
	combout => \controller|state.done~0_combout\);

-- Location: LCFF_X19_Y8_N1
\controller|state.done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|state.done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.done~regout\);

-- Location: LCCOMB_X20_Y8_N12
\controller|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|WideOr4~0_combout\ = (\controller|state.s0~regout\ & (!\controller|state.s2~regout\ & (!\controller|state.done~regout\ & !\controller|state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s0~regout\,
	datab => \controller|state.s2~regout\,
	datac => \controller|state.done~regout\,
	datad => \controller|state.s4~regout\,
	combout => \controller|WideOr4~0_combout\);

-- Location: LCCOMB_X20_Y8_N28
\controller|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~0_combout\ = (!\controller|state.s0~regout\ & \start~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s0~regout\,
	datad => \start~combout\,
	combout => \controller|Selector37~0_combout\);

-- Location: LCCOMB_X19_Y8_N12
\controller|Selector37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~2_combout\ = (\controller|Selector37~1_combout\) # ((\controller|Selector37~0_combout\) # ((\controller|WideOr4~0_combout\ & !\controller|state.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Selector37~1_combout\,
	datab => \controller|WideOr4~0_combout\,
	datac => \controller|state.s1~regout\,
	datad => \controller|Selector37~0_combout\,
	combout => \controller|Selector37~2_combout\);

-- Location: LCFF_X19_Y8_N13
\controller|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector37~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s1~regout\);

-- Location: LCFF_X21_Y8_N25
\controller|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|state.s1~regout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s2~regout\);

-- Location: LCFF_X21_Y8_N31
\controller|state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \controller|state.s2~regout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s4~regout\);

-- Location: LCCOMB_X20_Y8_N2
\controller|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~2_combout\ = (!\controller|OPCODE\(2) & (\controller|state.s4~regout\ & (\controller|ADDRESS\(3) & !\controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(2),
	datab => \controller|state.s4~regout\,
	datac => \controller|ADDRESS\(3),
	datad => \controller|OPCODE\(1),
	combout => \controller|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y8_N26
\controller|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~3_combout\ = (!\controller|OPCODE\(0) & \controller|Mux6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datac => \controller|Mux6~2_combout\,
	combout => \controller|Mux6~3_combout\);

-- Location: LCFF_X19_Y8_N27
\controller|state.s13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux6~3_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s13~regout\);

-- Location: LCCOMB_X21_Y8_N12
\controller|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector52~0_combout\ = (\controller|selc_dp\(3) & ((\controller|state.s1~regout\) # ((\controller|state.s12~regout\) # (!\controller|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s1~regout\,
	datab => \controller|state.s12~regout\,
	datac => \controller|selc_dp\(3),
	datad => \controller|WideOr4~0_combout\,
	combout => \controller|Selector52~0_combout\);

-- Location: LCCOMB_X21_Y8_N4
\controller|Selector52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector52~1_combout\ = (\controller|state.s13~regout\) # (\controller|Selector52~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.s13~regout\,
	datad => \controller|Selector52~0_combout\,
	combout => \controller|Selector52~1_combout\);

-- Location: LCFF_X21_Y8_N5
\controller|selc_dp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector52~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selc_dp\(3));

-- Location: LCCOMB_X41_Y7_N24
\display1[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1[0]~reg0feeder_combout\ = \controller|selc_dp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|selc_dp\(3),
	combout => \display1[0]~reg0feeder_combout\);

-- Location: LCFF_X41_Y7_N25
\display1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[0]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[0]~reg0_regout\);

-- Location: LCCOMB_X20_Y8_N10
\controller|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux0~0_combout\ = (\controller|PC\(1) & !\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(1),
	datac => \controller|PC\(0),
	combout => \controller|Mux0~0_combout\);

-- Location: LCFF_X20_Y8_N11
\controller|OPCODE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux0~0_combout\,
	ena => \controller|ADDRESS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(2));

-- Location: LCCOMB_X18_Y8_N12
\controller|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~6_combout\ = (!\controller|OPCODE\(0) & (\controller|OPCODE\(1) & (\controller|Mux6~0_combout\ & \controller|OPCODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|OPCODE\(1),
	datac => \controller|Mux6~0_combout\,
	datad => \controller|OPCODE\(2),
	combout => \controller|Mux6~6_combout\);

-- Location: LCFF_X18_Y8_N13
\controller|state.s11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux6~6_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s11~regout\);

-- Location: LCCOMB_X18_Y8_N4
\controller|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~8_combout\ = (\controller|OPCODE\(0) & (\controller|OPCODE\(1) & (\controller|Mux6~0_combout\ & !\controller|OPCODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|OPCODE\(1),
	datac => \controller|Mux6~0_combout\,
	datad => \controller|OPCODE\(2),
	combout => \controller|Mux6~8_combout\);

-- Location: LCFF_X18_Y8_N5
\controller|state.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux6~8_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s8~regout\);

-- Location: LCCOMB_X18_Y8_N18
\controller|Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector54~0_combout\ = (\controller|selc_dp\(1) & ((\controller|state.s1~regout\) # ((\controller|state.s12~regout\) # (!\controller|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(1),
	datab => \controller|state.s1~regout\,
	datac => \controller|WideOr4~0_combout\,
	datad => \controller|state.s12~regout\,
	combout => \controller|Selector54~0_combout\);

-- Location: LCCOMB_X17_Y8_N20
\controller|Selector54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector54~1_combout\ = (\controller|state.s7~regout\) # ((\controller|state.s11~regout\) # ((\controller|state.s8~regout\) # (\controller|Selector54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s7~regout\,
	datab => \controller|state.s11~regout\,
	datac => \controller|state.s8~regout\,
	datad => \controller|Selector54~0_combout\,
	combout => \controller|Selector54~1_combout\);

-- Location: LCFF_X17_Y8_N21
\controller|selc_dp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector54~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selc_dp\(1));

-- Location: LCCOMB_X41_Y7_N30
\d1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|Mux1~0_combout\ = (\controller|selc_dp\(3) & ((\controller|selc_dp\(2)) # (\controller|selc_dp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(2),
	datab => \controller|selc_dp\(3),
	datad => \controller|selc_dp\(1),
	combout => \d1|Mux1~0_combout\);

-- Location: LCFF_X41_Y7_N15
\display1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \d1|Mux1~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[1]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N0
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

-- Location: LCFF_X40_Y7_N1
\display1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[2]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N0
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

-- Location: LCFF_X41_Y7_N1
\display1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[3]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[3]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N2
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

-- Location: LCFF_X41_Y7_N3
\display1[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[4]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[4]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N20
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

-- Location: LCFF_X41_Y7_N21
\display1[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display1[5]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display1[5]~reg0_regout\);

-- Location: LCCOMB_X18_Y8_N0
\controller|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~4_combout\ = (!\controller|OPCODE\(0) & (!\controller|OPCODE\(1) & (\controller|Mux6~0_combout\ & \controller|OPCODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|OPCODE\(1),
	datac => \controller|Mux6~0_combout\,
	datad => \controller|OPCODE\(2),
	combout => \controller|Mux6~4_combout\);

-- Location: LCFF_X18_Y8_N1
\controller|state.s9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux6~4_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s9~regout\);

-- Location: LCCOMB_X18_Y8_N6
\controller|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~5_combout\ = (\controller|OPCODE\(0) & (!\controller|OPCODE\(1) & (\controller|Mux6~0_combout\ & \controller|OPCODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|OPCODE\(1),
	datac => \controller|Mux6~0_combout\,
	datad => \controller|OPCODE\(2),
	combout => \controller|Mux6~5_combout\);

-- Location: LCFF_X18_Y8_N7
\controller|state.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux6~5_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s10~regout\);

-- Location: LCCOMB_X19_Y8_N28
\controller|Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector53~0_combout\ = (\controller|selc_dp\(2) & ((\controller|state.s1~regout\) # ((\controller|state.s12~regout\) # (!\controller|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s1~regout\,
	datab => \controller|selc_dp\(2),
	datac => \controller|WideOr4~0_combout\,
	datad => \controller|state.s12~regout\,
	combout => \controller|Selector53~0_combout\);

-- Location: LCCOMB_X18_Y8_N24
\controller|Selector53~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector53~1_combout\ = (\controller|state.s11~regout\) # ((\controller|state.s9~regout\) # ((\controller|state.s10~regout\) # (\controller|Selector53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s11~regout\,
	datab => \controller|state.s9~regout\,
	datac => \controller|state.s10~regout\,
	datad => \controller|Selector53~0_combout\,
	combout => \controller|Selector53~1_combout\);

-- Location: LCFF_X18_Y8_N25
\controller|selc_dp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector53~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selc_dp\(2));

-- Location: LCCOMB_X41_Y7_N26
\d1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|Mux7~0_combout\ = (\controller|selc_dp\(2)) # ((\controller|selc_dp\(1) & \controller|selc_dp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|selc_dp\(2),
	datac => \controller|selc_dp\(1),
	datad => \controller|selc_dp\(3),
	combout => \d1|Mux7~0_combout\);

-- Location: LCFF_X41_Y7_N27
\display2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \d1|Mux7~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[0]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N8
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

-- Location: LCFF_X41_Y7_N9
\display2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[1]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N6
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

-- Location: LCFF_X41_Y7_N7
\display2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[2]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N16
\display2[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2[3]~reg0feeder_combout\ = \d1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux7~0_combout\,
	combout => \display2[3]~reg0feeder_combout\);

-- Location: LCFF_X41_Y7_N17
\display2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[3]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[3]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N10
\display2[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2[4]~reg0feeder_combout\ = \d1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux7~0_combout\,
	combout => \display2[4]~reg0feeder_combout\);

-- Location: LCFF_X41_Y7_N11
\display2[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[4]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[4]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N28
\display2[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2[5]~reg0feeder_combout\ = \d1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux7~0_combout\,
	combout => \display2[5]~reg0feeder_combout\);

-- Location: LCFF_X41_Y7_N29
\display2[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display2[5]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display2[5]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N14
\d1|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|Mux13~0_combout\ = (\controller|selc_dp\(1)) # ((\controller|selc_dp\(2) & \controller|selc_dp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(2),
	datab => \controller|selc_dp\(3),
	datad => \controller|selc_dp\(1),
	combout => \d1|Mux13~0_combout\);

-- Location: LCFF_X41_Y7_N31
\display3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \d1|Mux13~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[0]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N4
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

-- Location: LCFF_X41_Y7_N5
\display3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display3[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[1]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N18
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

-- Location: LCFF_X40_Y7_N19
\display3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display3[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[2]~reg0_regout\);

-- Location: LCCOMB_X41_Y7_N22
\display3[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3[3]~reg0feeder_combout\ = \d1|Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux13~0_combout\,
	combout => \display3[3]~reg0feeder_combout\);

-- Location: LCFF_X41_Y7_N23
\display3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display3[3]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[3]~reg0_regout\);

-- Location: LCFF_X41_Y7_N13
\display3[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \d1|Mux13~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[4]~reg0_regout\);

-- Location: LCFF_X41_Y7_N19
\display3[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \d1|Mux13~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display3[5]~reg0_regout\);

-- Location: LCCOMB_X18_Y8_N22
\controller|Selector55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector55~0_combout\ = (\controller|selc_dp\(0) & ((\controller|state.s12~regout\) # ((\controller|state.s1~regout\) # (!\controller|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s12~regout\,
	datab => \controller|state.s1~regout\,
	datac => \controller|selc_dp\(0),
	datad => \controller|WideOr4~0_combout\,
	combout => \controller|Selector55~0_combout\);

-- Location: LCCOMB_X18_Y8_N26
\controller|Selector55~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector55~1_combout\ = (\controller|state.s6~regout\) # ((\controller|state.s8~regout\) # ((\controller|state.s10~regout\) # (\controller|Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s6~regout\,
	datab => \controller|state.s8~regout\,
	datac => \controller|state.s10~regout\,
	datad => \controller|Selector55~0_combout\,
	combout => \controller|Selector55~1_combout\);

-- Location: LCFF_X18_Y8_N27
\controller|selc_dp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector55~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selc_dp\(0));

-- Location: LCCOMB_X19_Y8_N8
\d1|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|Mux19~0_combout\ = (\controller|selc_dp\(0)) # ((\controller|selc_dp\(3) & ((\controller|selc_dp\(2)) # (\controller|selc_dp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(2),
	datab => \controller|selc_dp\(0),
	datac => \controller|selc_dp\(3),
	datad => \controller|selc_dp\(1),
	combout => \d1|Mux19~0_combout\);

-- Location: LCCOMB_X27_Y8_N0
\display4[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display4[0]~reg0feeder_combout\ = \d1|Mux19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~0_combout\,
	combout => \display4[0]~reg0feeder_combout\);

-- Location: LCFF_X27_Y8_N1
\display4[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display4[0]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[0]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N12
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

-- Location: LCFF_X40_Y7_N13
\display4[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display4[1]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[1]~reg0_regout\);

-- Location: LCCOMB_X40_Y7_N2
\display4[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display4[2]~reg0feeder_combout\ = \d1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux1~0_combout\,
	combout => \display4[2]~reg0feeder_combout\);

-- Location: LCFF_X40_Y7_N3
\display4[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display4[2]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[2]~reg0_regout\);

-- Location: LCCOMB_X27_Y8_N18
\display4[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display4[3]~reg0feeder_combout\ = \d1|Mux19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~0_combout\,
	combout => \display4[3]~reg0feeder_combout\);

-- Location: LCFF_X27_Y8_N19
\display4[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display4[3]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[3]~reg0_regout\);

-- Location: LCCOMB_X27_Y8_N28
\display4[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display4[4]~reg0feeder_combout\ = \d1|Mux19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~0_combout\,
	combout => \display4[4]~reg0feeder_combout\);

-- Location: LCFF_X27_Y8_N29
\display4[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display4[4]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[4]~reg0_regout\);

-- Location: LCCOMB_X27_Y8_N22
\display4[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display4[5]~reg0feeder_combout\ = \d1|Mux19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|Mux19~0_combout\,
	combout => \display4[5]~reg0feeder_combout\);

-- Location: LCFF_X27_Y8_N23
\display4[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \display4[5]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display4[5]~reg0_regout\);

-- Location: LCCOMB_X20_Y8_N8
\controller|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector32~0_combout\ = (\controller|state.s7~regout\ & (\controller|ADDRESS\(3))) # (!\controller|state.s7~regout\ & (((\controller|PC\(2) & \controller|state.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s7~regout\,
	datab => \controller|ADDRESS\(3),
	datac => \controller|PC\(2),
	datad => \controller|state.s1~regout\,
	combout => \controller|Selector32~0_combout\);

-- Location: LCCOMB_X19_Y8_N2
\controller|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~7_combout\ = (!\controller|OPCODE\(0) & (\controller|Mux6~0_combout\ & (!\controller|OPCODE\(2) & \controller|OPCODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|Mux6~0_combout\,
	datac => \controller|OPCODE\(2),
	datad => \controller|OPCODE\(1),
	combout => \controller|Mux6~7_combout\);

-- Location: LCFF_X19_Y8_N3
\controller|state.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux6~7_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s7~regout\);

-- Location: LCCOMB_X20_Y8_N18
\controller|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|WideOr1~0_combout\ = (\controller|state.s1~regout\) # ((\controller|state.s7~regout\) # (!\controller|state.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s1~regout\,
	datac => \controller|state.s0~regout\,
	datad => \controller|state.s7~regout\,
	combout => \controller|WideOr1~0_combout\);

-- Location: LCFF_X20_Y8_N9
\controller|imm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector32~0_combout\,
	aclr => \rst~combout\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(3));

-- Location: LCCOMB_X16_Y8_N16
\datapath|entrada1_alu[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada1_alu[3]~0_combout\ = (\controller|selc_dp\(2)) # ((\controller|selc_dp\(0) & (\controller|selc_dp\(1))) # (!\controller|selc_dp\(0) & (!\controller|selc_dp\(1) & !\controller|selc_dp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(0),
	datab => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(2),
	datad => \controller|selc_dp\(3),
	combout => \datapath|entrada1_alu[3]~0_combout\);

-- Location: LCCOMB_X16_Y8_N22
\datapath|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux0~0_combout\ = (\controller|selc_dp\(0)) # (((\controller|selc_dp\(2)) # (\controller|selc_dp\(3))) # (!\controller|selc_dp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(0),
	datab => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(2),
	datad => \controller|selc_dp\(3),
	combout => \datapath|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y8_N0
\datapath|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux0~1_combout\ = (\datapath|rf1|output\(3) & ((\datapath|entrada1_alu[3]~0_combout\) # ((\controller|imm\(3) & !\datapath|Mux0~0_combout\)))) # (!\datapath|rf1|output\(3) & (\controller|imm\(3) & ((!\datapath|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(3),
	datab => \controller|imm\(3),
	datac => \datapath|entrada1_alu[3]~0_combout\,
	datad => \datapath|Mux0~0_combout\,
	combout => \datapath|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y8_N18
\datapath|entrada2_alu[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|entrada2_alu[0]~0_combout\ = (\controller|selc_dp\(1) & (((!\controller|selc_dp\(2) & !\controller|selc_dp\(3))))) # (!\controller|selc_dp\(1) & (((!\controller|selc_dp\(0) & !\controller|selc_dp\(2))) # (!\controller|selc_dp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(0),
	datab => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(2),
	datad => \controller|selc_dp\(3),
	combout => \datapath|entrada2_alu[0]~0_combout\);

-- Location: LCFF_X16_Y8_N1
\datapath|entrada1_alu[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux0~1_combout\,
	ena => \datapath|entrada2_alu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(3));

-- Location: LCCOMB_X18_Y8_N20
\controller|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~9_combout\ = (\controller|OPCODE\(0) & (!\controller|OPCODE\(1) & (\controller|Mux6~0_combout\ & !\controller|OPCODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|OPCODE\(1),
	datac => \controller|Mux6~0_combout\,
	datad => \controller|OPCODE\(2),
	combout => \controller|Mux6~9_combout\);

-- Location: LCFF_X18_Y8_N21
\controller|state.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux6~9_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s6~regout\);

-- Location: LCCOMB_X18_Y8_N10
\controller|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector51~0_combout\ = (!\controller|state.s10~regout\ & (!\controller|state.s9~regout\ & (!\controller|state.s8~regout\ & !\controller|state.s11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s10~regout\,
	datab => \controller|state.s9~regout\,
	datac => \controller|state.s8~regout\,
	datad => \controller|state.s11~regout\,
	combout => \controller|Selector51~0_combout\);

-- Location: LCCOMB_X19_Y8_N18
\controller|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector50~0_combout\ = (\controller|state.s6~regout\) # (((\controller|enbcacc~regout\ & !\controller|WideOr4~0_combout\)) # (!\controller|Selector51~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|enbcacc~regout\,
	datab => \controller|state.s6~regout\,
	datac => \controller|WideOr4~0_combout\,
	datad => \controller|Selector51~0_combout\,
	combout => \controller|Selector50~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\controller|Selector50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector50~1_combout\ = (\controller|state.s13~regout\) # (\controller|Selector50~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s13~regout\,
	datad => \controller|Selector50~0_combout\,
	combout => \controller|Selector50~1_combout\);

-- Location: LCFF_X19_Y8_N7
\controller|enbcacc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector50~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enbcacc~regout\);

-- Location: LCFF_X15_Y8_N31
\datapath|acc1|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output~3_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|temp\(3));

-- Location: LCCOMB_X15_Y8_N30
\datapath|acc1|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output~3_combout\ = (\controller|enbcacc~regout\ & ((\datapath|alu1|output\(3)))) # (!\controller|enbcacc~regout\ & (\datapath|acc1|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enbcacc~regout\,
	datac => \datapath|acc1|temp\(3),
	datad => \datapath|alu1|output\(3),
	combout => \datapath|acc1|output~3_combout\);

-- Location: LCFF_X16_Y8_N27
\datapath|acc1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|acc1|output~3_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(3));

-- Location: LCCOMB_X16_Y8_N14
\datapath|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux4~0_combout\ = (\datapath|acc1|output\(3) & ((\controller|selc_dp\(3)) # ((\controller|selc_dp\(2)) # (\controller|selc_dp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(3),
	datab => \datapath|acc1|output\(3),
	datac => \controller|selc_dp\(2),
	datad => \controller|selc_dp\(0),
	combout => \datapath|Mux4~0_combout\);

-- Location: LCFF_X16_Y8_N15
\datapath|entrada2_alu[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux4~0_combout\,
	ena => \datapath|entrada2_alu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(3));

-- Location: LCCOMB_X16_Y8_N4
\datapath|alu1|sub|FA_3|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|sub|FA_3|s~0_combout\ = \datapath|entrada2_alu\(3) $ (\datapath|entrada1_alu\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|entrada2_alu\(3),
	datad => \datapath|entrada1_alu\(3),
	combout => \datapath|alu1|sub|FA_3|s~0_combout\);

-- Location: LCFF_X15_Y8_N5
\datapath|acc1|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|temp\(2));

-- Location: LCCOMB_X18_Y8_N30
\datapath|alu1|output[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[3]~0_combout\ = (!\controller|selc_dp\(2) & \controller|selc_dp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|selc_dp\(2),
	datad => \controller|selc_dp\(0),
	combout => \datapath|alu1|output[3]~0_combout\);

-- Location: LCCOMB_X18_Y8_N16
\datapath|alu1|output[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[3]~1_combout\ = (\controller|selc_dp\(0) & (((\controller|selc_dp\(1))))) # (!\controller|selc_dp\(0) & (!\controller|selc_dp\(2) & (!\controller|selc_dp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(2),
	datab => \controller|selc_dp\(0),
	datac => \controller|selc_dp\(3),
	datad => \controller|selc_dp\(1),
	combout => \datapath|alu1|output[3]~1_combout\);

-- Location: LCCOMB_X20_Y8_N22
\controller|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector34~0_combout\ = (\controller|state.s7~regout\ & (((\controller|ADDRESS\(1))))) # (!\controller|state.s7~regout\ & (\controller|state.s1~regout\ & (\controller|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s7~regout\,
	datab => \controller|state.s1~regout\,
	datac => \controller|Mux4~0_combout\,
	datad => \controller|ADDRESS\(1),
	combout => \controller|Selector34~0_combout\);

-- Location: LCFF_X20_Y8_N23
\controller|imm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector34~0_combout\,
	aclr => \rst~combout\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(1));

-- Location: LCCOMB_X16_Y8_N2
\datapath|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux2~0_combout\ = (\datapath|rf1|output\(1) & ((\datapath|entrada1_alu[3]~0_combout\) # ((\controller|imm\(1) & !\datapath|Mux0~0_combout\)))) # (!\datapath|rf1|output\(1) & (\controller|imm\(1) & ((!\datapath|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|output\(1),
	datab => \controller|imm\(1),
	datac => \datapath|entrada1_alu[3]~0_combout\,
	datad => \datapath|Mux0~0_combout\,
	combout => \datapath|Mux2~0_combout\);

-- Location: LCFF_X16_Y8_N3
\datapath|entrada1_alu[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux2~0_combout\,
	ena => \datapath|entrada2_alu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(1));

-- Location: LCCOMB_X19_Y8_N30
\datapath|alu1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~0_combout\ = (\controller|selc_dp\(3) & (\datapath|alu1|output\(0))) # (!\controller|selc_dp\(3) & ((\datapath|entrada1_alu\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \controller|selc_dp\(3),
	datad => \datapath|entrada1_alu\(0),
	combout => \datapath|alu1|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y8_N24
\datapath|alu1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~1_combout\ = (\controller|selc_dp\(1) & (((\controller|selc_dp\(0))))) # (!\controller|selc_dp\(1) & (\controller|selc_dp\(3) $ (((\controller|selc_dp\(2) & !\controller|selc_dp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(2),
	datab => \controller|selc_dp\(0),
	datac => \controller|selc_dp\(3),
	datad => \controller|selc_dp\(1),
	combout => \datapath|alu1|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y8_N22
\datapath|alu1|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~2_combout\ = (\controller|selc_dp\(2) & ((\controller|selc_dp\(0)) # ((!\controller|selc_dp\(3) & \controller|selc_dp\(1))))) # (!\controller|selc_dp\(2) & (\controller|selc_dp\(3) & ((\controller|selc_dp\(0)) # 
-- (!\controller|selc_dp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(2),
	datab => \controller|selc_dp\(0),
	datac => \controller|selc_dp\(3),
	datad => \controller|selc_dp\(1),
	combout => \datapath|alu1|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y8_N4
\datapath|alu1|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~3_combout\ = (\datapath|entrada2_alu\(0) & (\datapath|alu1|Mux3~1_combout\ & ((!\datapath|alu1|Mux3~2_combout\) # (!\controller|selc_dp\(0))))) # (!\datapath|entrada2_alu\(0) & (\controller|selc_dp\(0) & 
-- (!\datapath|alu1|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(0),
	datab => \controller|selc_dp\(0),
	datac => \datapath|alu1|Mux3~1_combout\,
	datad => \datapath|alu1|Mux3~2_combout\,
	combout => \datapath|alu1|Mux3~3_combout\);

-- Location: LCCOMB_X19_Y8_N10
\datapath|alu1|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~4_combout\ = (\datapath|entrada2_alu\(0) & (\datapath|alu1|Mux3~2_combout\ $ (((\controller|selc_dp\(0)) # (\datapath|alu1|Mux3~1_combout\))))) # (!\datapath|entrada2_alu\(0) & (!\controller|selc_dp\(0) & 
-- (\datapath|alu1|Mux3~1_combout\ & \datapath|alu1|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(0),
	datab => \controller|selc_dp\(0),
	datac => \datapath|alu1|Mux3~1_combout\,
	datad => \datapath|alu1|Mux3~2_combout\,
	combout => \datapath|alu1|Mux3~4_combout\);

-- Location: LCCOMB_X19_Y8_N14
\datapath|alu1|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~5_combout\ = (\datapath|alu1|Mux3~0_combout\ & (!\datapath|alu1|Mux3~3_combout\)) # (!\datapath|alu1|Mux3~0_combout\ & ((\datapath|alu1|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alu1|Mux3~0_combout\,
	datac => \datapath|alu1|Mux3~3_combout\,
	datad => \datapath|alu1|Mux3~4_combout\,
	combout => \datapath|alu1|Mux3~5_combout\);

-- Location: LCFF_X19_Y8_N15
\datapath|alu1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|alu1|Mux3~5_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(0));

-- Location: LCCOMB_X12_Y8_N18
\datapath|rf1|out3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out3[0]~feeder_combout\ = \datapath|alu1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(0),
	combout => \datapath|rf1|out3[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y8_N8
\controller|selcrf[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|selcrf[0]~feeder_combout\ = \controller|ADDRESS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|ADDRESS\(0),
	combout => \controller|selcrf[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y8_N8
\controller|Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~10_combout\ = (!\controller|OPCODE\(0) & (!\controller|OPCODE\(1) & (\controller|Mux6~0_combout\ & !\controller|OPCODE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|OPCODE\(1),
	datac => \controller|Mux6~0_combout\,
	datad => \controller|OPCODE\(2),
	combout => \controller|Mux6~10_combout\);

-- Location: LCFF_X18_Y8_N9
\controller|state.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Mux6~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s5~regout\);

-- Location: LCCOMB_X18_Y8_N2
\controller|selcrf[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|selcrf[1]~0_combout\ = (!\rst~combout\ & ((\controller|state.s6~regout\) # ((\controller|state.s5~regout\) # (!\controller|Selector51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s6~regout\,
	datab => \rst~combout\,
	datac => \controller|state.s5~regout\,
	datad => \controller|Selector51~0_combout\,
	combout => \controller|selcrf[1]~0_combout\);

-- Location: LCFF_X14_Y8_N9
\controller|selcrf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|selcrf[0]~feeder_combout\,
	ena => \controller|selcrf[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selcrf\(0));

-- Location: LCCOMB_X14_Y8_N26
\controller|selcrf[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|selcrf[1]~feeder_combout\ = \controller|ADDRESS\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|ADDRESS\(3),
	combout => \controller|selcrf[1]~feeder_combout\);

-- Location: LCFF_X14_Y8_N27
\controller|selcrf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|selcrf[1]~feeder_combout\,
	ena => \controller|selcrf[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|selcrf\(1));

-- Location: LCCOMB_X18_Y8_N28
\controller|Selector51~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector51~1_combout\ = ((\controller|state.s5~regout\) # ((\controller|enbcrf~regout\ & !\controller|WideOr4~0_combout\))) # (!\controller|Selector51~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Selector51~0_combout\,
	datab => \controller|state.s5~regout\,
	datac => \controller|enbcrf~regout\,
	datad => \controller|WideOr4~0_combout\,
	combout => \controller|Selector51~1_combout\);

-- Location: LCFF_X18_Y8_N29
\controller|enbcrf\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \controller|Selector51~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enbcrf~regout\);

-- Location: LCCOMB_X12_Y8_N0
\datapath|rf1|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux8~2_combout\ = (!\rst~combout\ & (\controller|selcrf\(0) & (\controller|selcrf\(1) & !\controller|enbcrf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|selcrf\(0),
	datac => \controller|selcrf\(1),
	datad => \controller|enbcrf~regout\,
	combout => \datapath|rf1|Mux8~2_combout\);

-- Location: LCFF_X12_Y8_N19
\datapath|rf1|out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out3[0]~feeder_combout\,
	ena => \datapath|rf1|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out3\(0));

-- Location: LCCOMB_X14_Y8_N20
\datapath|rf1|out2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out2[0]~feeder_combout\ = \datapath|alu1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(0),
	combout => \datapath|rf1|out2[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y8_N14
\datapath|rf1|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux8~1_combout\ = (!\rst~combout\ & (\controller|selcrf\(1) & (!\controller|selcrf\(0) & !\controller|enbcrf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|selcrf\(1),
	datac => \controller|selcrf\(0),
	datad => \controller|enbcrf~regout\,
	combout => \datapath|rf1|Mux8~1_combout\);

-- Location: LCFF_X14_Y8_N21
\datapath|rf1|out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out2[0]~feeder_combout\,
	ena => \datapath|rf1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(0));

-- Location: LCCOMB_X11_Y8_N22
\datapath|rf1|out0[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out0[3]~0_combout\ = (!\controller|selcrf\(0) & (!\rst~combout\ & (!\controller|selcrf\(1) & !\controller|enbcrf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \rst~combout\,
	datac => \controller|selcrf\(1),
	datad => \controller|enbcrf~regout\,
	combout => \datapath|rf1|out0[3]~0_combout\);

-- Location: LCFF_X11_Y8_N15
\datapath|rf1|out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(0),
	sload => VCC,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(0));

-- Location: LCCOMB_X11_Y8_N14
\datapath|rf1|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux19~0_combout\ = (\controller|selcrf\(1) & ((\datapath|rf1|out2\(0)) # ((\controller|selcrf\(0))))) # (!\controller|selcrf\(1) & (((\datapath|rf1|out0\(0) & !\controller|selcrf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(1),
	datab => \datapath|rf1|out2\(0),
	datac => \datapath|rf1|out0\(0),
	datad => \controller|selcrf\(0),
	combout => \datapath|rf1|Mux19~0_combout\);

-- Location: LCCOMB_X12_Y8_N26
\datapath|rf1|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux19~1_combout\ = (\controller|selcrf\(0) & ((\datapath|rf1|Mux19~0_combout\ & ((\datapath|rf1|out3\(0)))) # (!\datapath|rf1|Mux19~0_combout\ & (\datapath|rf1|out1\(0))))) # (!\controller|selcrf\(0) & (((\datapath|rf1|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out1\(0),
	datab => \datapath|rf1|out3\(0),
	datac => \controller|selcrf\(0),
	datad => \datapath|rf1|Mux19~0_combout\,
	combout => \datapath|rf1|Mux19~1_combout\);

-- Location: LCFF_X12_Y8_N27
\datapath|rf1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|Mux19~1_combout\,
	aclr => \rst~combout\,
	ena => \controller|enbcrf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(0));

-- Location: LCCOMB_X16_Y8_N20
\datapath|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux3~0_combout\ = (\controller|imm\(0) & (((\datapath|rf1|output\(0) & \datapath|entrada1_alu[3]~0_combout\)) # (!\datapath|Mux0~0_combout\))) # (!\controller|imm\(0) & (\datapath|rf1|output\(0) & (\datapath|entrada1_alu[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(0),
	datab => \datapath|rf1|output\(0),
	datac => \datapath|entrada1_alu[3]~0_combout\,
	datad => \datapath|Mux0~0_combout\,
	combout => \datapath|Mux3~0_combout\);

-- Location: LCFF_X16_Y8_N21
\datapath|entrada1_alu[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux3~0_combout\,
	ena => \datapath|entrada2_alu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(0));

-- Location: LCFF_X15_Y8_N1
\datapath|acc1|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|temp\(1));

-- Location: LCFF_X19_Y8_N21
\datapath|acc1|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|acc1|output~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|temp\(0));

-- Location: LCCOMB_X19_Y8_N20
\datapath|acc1|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output~2_combout\ = (\controller|enbcacc~regout\ & (\datapath|alu1|output\(0))) # (!\controller|enbcacc~regout\ & ((\datapath|acc1|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alu1|output\(0),
	datac => \datapath|acc1|temp\(0),
	datad => \controller|enbcacc~regout\,
	combout => \datapath|acc1|output~2_combout\);

-- Location: LCFF_X19_Y8_N17
\datapath|acc1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|acc1|output~2_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(0));

-- Location: LCCOMB_X19_Y8_N16
\datapath|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux7~0_combout\ = (\datapath|acc1|output\(0) & ((\controller|selc_dp\(2)) # ((\controller|selc_dp\(3)) # (\controller|selc_dp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(2),
	datab => \controller|selc_dp\(3),
	datac => \datapath|acc1|output\(0),
	datad => \controller|selc_dp\(0),
	combout => \datapath|Mux7~0_combout\);

-- Location: LCFF_X16_Y8_N31
\datapath|entrada2_alu[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|Mux7~0_combout\,
	sload => VCC,
	ena => \datapath|entrada2_alu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(0));

-- Location: LCCOMB_X15_Y8_N10
\datapath|alu1|soma|FA_1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|soma|FA_1|s~combout\ = \datapath|entrada1_alu\(1) $ (\datapath|entrada2_alu\(1) $ (((\datapath|entrada2_alu\(0) & \datapath|entrada1_alu\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(1),
	datab => \datapath|entrada2_alu\(0),
	datac => \datapath|entrada2_alu\(1),
	datad => \datapath|entrada1_alu\(0),
	combout => \datapath|alu1|soma|FA_1|s~combout\);

-- Location: LCCOMB_X17_Y8_N24
\datapath|alu1|output[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[3]~2_combout\ = (\controller|selc_dp\(0)) # (!\controller|selc_dp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(2),
	combout => \datapath|alu1|output[3]~2_combout\);

-- Location: LCCOMB_X17_Y8_N6
\datapath|alu1|output[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[3]~3_combout\ = (\controller|selc_dp\(2) & ((\controller|selc_dp\(1)) # (\controller|selc_dp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(1),
	datac => \controller|selc_dp\(0),
	datad => \controller|selc_dp\(2),
	combout => \datapath|alu1|output[3]~3_combout\);

-- Location: LCCOMB_X17_Y8_N26
\datapath|alu1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~0_combout\ = (\datapath|alu1|output[3]~2_combout\ & (((\datapath|alu1|output[3]~3_combout\) # (!\datapath|entrada2_alu\(1))))) # (!\datapath|alu1|output[3]~2_combout\ & (!\datapath|alu1|sub|FA_1|s~combout\ & 
-- ((!\datapath|alu1|output[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|sub|FA_1|s~combout\,
	datab => \datapath|entrada2_alu\(1),
	datac => \datapath|alu1|output[3]~2_combout\,
	datad => \datapath|alu1|output[3]~3_combout\,
	combout => \datapath|alu1|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y8_N0
\datapath|alu1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~1_combout\ = (\datapath|alu1|output[3]~3_combout\ & ((\datapath|entrada2_alu\(1) & ((\datapath|entrada1_alu\(1)) # (!\datapath|alu1|Mux2~0_combout\))) # (!\datapath|entrada2_alu\(1) & (\datapath|entrada1_alu\(1) & 
-- !\datapath|alu1|Mux2~0_combout\)))) # (!\datapath|alu1|output[3]~3_combout\ & (((\datapath|alu1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[3]~3_combout\,
	datab => \datapath|entrada2_alu\(1),
	datac => \datapath|entrada1_alu\(1),
	datad => \datapath|alu1|Mux2~0_combout\,
	combout => \datapath|alu1|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y8_N22
\datapath|alu1|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~2_combout\ = (\datapath|alu1|output[3]~0_combout\ & ((\datapath|entrada2_alu\(1)) # ((\datapath|alu1|output[3]~1_combout\)))) # (!\datapath|alu1|output[3]~0_combout\ & (((!\datapath|alu1|output[3]~1_combout\ & 
-- \datapath|alu1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(1),
	datab => \datapath|alu1|output[3]~0_combout\,
	datac => \datapath|alu1|output[3]~1_combout\,
	datad => \datapath|alu1|Mux2~1_combout\,
	combout => \datapath|alu1|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y8_N8
\datapath|alu1|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~3_combout\ = (\datapath|alu1|output[3]~1_combout\ & ((\datapath|alu1|Mux2~2_combout\ & (\datapath|alu1|soma|FA_1|s~combout\)) # (!\datapath|alu1|Mux2~2_combout\ & ((\datapath|entrada1_alu\(1)))))) # 
-- (!\datapath|alu1|output[3]~1_combout\ & (((\datapath|alu1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[3]~1_combout\,
	datab => \datapath|alu1|soma|FA_1|s~combout\,
	datac => \datapath|entrada1_alu\(1),
	datad => \datapath|alu1|Mux2~2_combout\,
	combout => \datapath|alu1|Mux2~3_combout\);

-- Location: LCCOMB_X18_Y8_N14
\datapath|alu1|output[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[3]~4_combout\ = ((!\controller|selc_dp\(2) & (!\controller|selc_dp\(0) & !\controller|selc_dp\(1)))) # (!\controller|selc_dp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(2),
	datab => \controller|selc_dp\(0),
	datac => \controller|selc_dp\(3),
	datad => \controller|selc_dp\(1),
	combout => \datapath|alu1|output[3]~4_combout\);

-- Location: LCFF_X17_Y8_N9
\datapath|alu1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|alu1|Mux2~3_combout\,
	aclr => \rst~combout\,
	ena => \datapath|alu1|output[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(1));

-- Location: LCCOMB_X15_Y8_N0
\datapath|acc1|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output~1_combout\ = (\controller|enbcacc~regout\ & ((\datapath|alu1|output\(1)))) # (!\controller|enbcacc~regout\ & (\datapath|acc1|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enbcacc~regout\,
	datac => \datapath|acc1|temp\(1),
	datad => \datapath|alu1|output\(1),
	combout => \datapath|acc1|output~1_combout\);

-- Location: LCFF_X16_Y8_N5
\datapath|acc1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|acc1|output~1_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(1));

-- Location: LCCOMB_X16_Y8_N12
\datapath|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux6~0_combout\ = (\datapath|acc1|output\(1) & ((\controller|selc_dp\(0)) # ((\controller|selc_dp\(2)) # (\controller|selc_dp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(0),
	datab => \datapath|acc1|output\(1),
	datac => \controller|selc_dp\(2),
	datad => \controller|selc_dp\(3),
	combout => \datapath|Mux6~0_combout\);

-- Location: LCFF_X16_Y8_N13
\datapath|entrada2_alu[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux6~0_combout\,
	ena => \datapath|entrada2_alu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(1));

-- Location: LCCOMB_X16_Y8_N28
\datapath|alu1|sub|FA_1|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|sub|FA_1|cout~0_combout\ = (\datapath|entrada1_alu\(1) & (\datapath|entrada2_alu\(1) & ((\datapath|entrada2_alu\(0)) # (!\datapath|entrada1_alu\(0))))) # (!\datapath|entrada1_alu\(1) & ((\datapath|entrada2_alu\(0)) # 
-- ((\datapath|entrada2_alu\(1)) # (!\datapath|entrada1_alu\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(0),
	datab => \datapath|entrada1_alu\(1),
	datac => \datapath|entrada1_alu\(0),
	datad => \datapath|entrada2_alu\(1),
	combout => \datapath|alu1|sub|FA_1|cout~0_combout\);

-- Location: LCCOMB_X11_Y8_N12
\datapath|rf1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux8~0_combout\ = (\controller|selcrf\(0) & (!\rst~combout\ & (!\controller|selcrf\(1) & !\controller|enbcrf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(0),
	datab => \rst~combout\,
	datac => \controller|selcrf\(1),
	datad => \controller|enbcrf~regout\,
	combout => \datapath|rf1|Mux8~0_combout\);

-- Location: LCFF_X11_Y8_N17
\datapath|rf1|out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(2),
	sload => VCC,
	ena => \datapath|rf1|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out1\(2));

-- Location: LCCOMB_X15_Y8_N6
\datapath|rf1|out2[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|out2[2]~feeder_combout\ = \datapath|alu1|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alu1|output\(2),
	combout => \datapath|rf1|out2[2]~feeder_combout\);

-- Location: LCFF_X15_Y8_N7
\datapath|rf1|out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|out2[2]~feeder_combout\,
	ena => \datapath|rf1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out2\(2));

-- Location: LCFF_X11_Y8_N27
\datapath|rf1|out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|alu1|output\(2),
	sload => VCC,
	ena => \datapath|rf1|out0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|out0\(2));

-- Location: LCCOMB_X11_Y8_N26
\datapath|rf1|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux17~0_combout\ = (\controller|selcrf\(1) & ((\datapath|rf1|out2\(2)) # ((\controller|selcrf\(0))))) # (!\controller|selcrf\(1) & (((\datapath|rf1|out0\(2) & !\controller|selcrf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selcrf\(1),
	datab => \datapath|rf1|out2\(2),
	datac => \datapath|rf1|out0\(2),
	datad => \controller|selcrf\(0),
	combout => \datapath|rf1|Mux17~0_combout\);

-- Location: LCCOMB_X12_Y8_N8
\datapath|rf1|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rf1|Mux17~1_combout\ = (\controller|selcrf\(0) & ((\datapath|rf1|Mux17~0_combout\ & (\datapath|rf1|out3\(2))) # (!\datapath|rf1|Mux17~0_combout\ & ((\datapath|rf1|out1\(2)))))) # (!\controller|selcrf\(0) & (((\datapath|rf1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rf1|out3\(2),
	datab => \datapath|rf1|out1\(2),
	datac => \controller|selcrf\(0),
	datad => \datapath|rf1|Mux17~0_combout\,
	combout => \datapath|rf1|Mux17~1_combout\);

-- Location: LCFF_X12_Y8_N9
\datapath|rf1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|rf1|Mux17~1_combout\,
	aclr => \rst~combout\,
	ena => \controller|enbcrf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rf1|output\(2));

-- Location: LCCOMB_X16_Y8_N6
\datapath|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux1~0_combout\ = (\controller|imm\(0) & (((\datapath|rf1|output\(2) & \datapath|entrada1_alu[3]~0_combout\)) # (!\datapath|Mux0~0_combout\))) # (!\controller|imm\(0) & (\datapath|rf1|output\(2) & (\datapath|entrada1_alu[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(0),
	datab => \datapath|rf1|output\(2),
	datac => \datapath|entrada1_alu[3]~0_combout\,
	datad => \datapath|Mux0~0_combout\,
	combout => \datapath|Mux1~0_combout\);

-- Location: LCFF_X16_Y8_N7
\datapath|entrada1_alu[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|Mux1~0_combout\,
	ena => \datapath|entrada2_alu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada1_alu\(2));

-- Location: LCCOMB_X17_Y8_N28
\datapath|alu1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~0_combout\ = (\datapath|entrada2_alu\(2) & ((\datapath|entrada1_alu\(2) & ((\datapath|alu1|output[3]~3_combout\))) # (!\datapath|entrada1_alu\(2) & (!\datapath|alu1|output[3]~2_combout\)))) # (!\datapath|entrada2_alu\(2) & 
-- ((\datapath|alu1|output[3]~2_combout\ & ((!\datapath|alu1|output[3]~3_combout\))) # (!\datapath|alu1|output[3]~2_combout\ & (\datapath|entrada1_alu\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(2),
	datab => \datapath|entrada1_alu\(2),
	datac => \datapath|alu1|output[3]~2_combout\,
	datad => \datapath|alu1|output[3]~3_combout\,
	combout => \datapath|alu1|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y8_N30
\datapath|alu1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~1_combout\ = \datapath|alu1|Mux1~0_combout\ $ (((!\datapath|alu1|output[3]~3_combout\ & (!\datapath|alu1|sub|FA_1|cout~0_combout\ & !\datapath|alu1|output[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[3]~3_combout\,
	datab => \datapath|alu1|sub|FA_1|cout~0_combout\,
	datac => \datapath|alu1|output[3]~2_combout\,
	datad => \datapath|alu1|Mux1~0_combout\,
	combout => \datapath|alu1|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y8_N16
\datapath|alu1|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~2_combout\ = (\datapath|alu1|output[3]~0_combout\ & (((\datapath|alu1|output[3]~1_combout\)))) # (!\datapath|alu1|output[3]~0_combout\ & ((\datapath|alu1|output[3]~1_combout\ & (\datapath|entrada1_alu\(2))) # 
-- (!\datapath|alu1|output[3]~1_combout\ & ((\datapath|alu1|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(2),
	datab => \datapath|alu1|output[3]~0_combout\,
	datac => \datapath|alu1|output[3]~1_combout\,
	datad => \datapath|alu1|Mux1~1_combout\,
	combout => \datapath|alu1|Mux1~2_combout\);

-- Location: LCCOMB_X15_Y8_N8
\datapath|alu1|soma|FA_1|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|soma|FA_1|cout~0_combout\ = (\datapath|entrada1_alu\(1) & ((\datapath|entrada2_alu\(1)) # ((\datapath|entrada2_alu\(0) & \datapath|entrada1_alu\(0))))) # (!\datapath|entrada1_alu\(1) & (\datapath|entrada2_alu\(0) & 
-- (\datapath|entrada2_alu\(1) & \datapath|entrada1_alu\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(1),
	datab => \datapath|entrada2_alu\(0),
	datac => \datapath|entrada2_alu\(1),
	datad => \datapath|entrada1_alu\(0),
	combout => \datapath|alu1|soma|FA_1|cout~0_combout\);

-- Location: LCCOMB_X16_Y8_N26
\datapath|alu1|soma|FA_2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|soma|FA_2|s~combout\ = \datapath|entrada1_alu\(2) $ (\datapath|entrada2_alu\(2) $ (\datapath|alu1|soma|FA_1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(2),
	datab => \datapath|entrada2_alu\(2),
	datad => \datapath|alu1|soma|FA_1|cout~0_combout\,
	combout => \datapath|alu1|soma|FA_2|s~combout\);

-- Location: LCCOMB_X17_Y8_N2
\datapath|alu1|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~3_combout\ = (\datapath|alu1|output[3]~0_combout\ & ((\datapath|alu1|Mux1~2_combout\ & ((\datapath|alu1|soma|FA_2|s~combout\))) # (!\datapath|alu1|Mux1~2_combout\ & (\datapath|entrada2_alu\(2))))) # 
-- (!\datapath|alu1|output[3]~0_combout\ & (((\datapath|alu1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(2),
	datab => \datapath|alu1|output[3]~0_combout\,
	datac => \datapath|alu1|Mux1~2_combout\,
	datad => \datapath|alu1|soma|FA_2|s~combout\,
	combout => \datapath|alu1|Mux1~3_combout\);

-- Location: LCFF_X17_Y8_N3
\datapath|alu1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|alu1|Mux1~3_combout\,
	aclr => \rst~combout\,
	ena => \datapath|alu1|output[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(2));

-- Location: LCCOMB_X15_Y8_N4
\datapath|acc1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acc1|output~0_combout\ = (\controller|enbcacc~regout\ & ((\datapath|alu1|output\(2)))) # (!\controller|enbcacc~regout\ & (\datapath|acc1|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enbcacc~regout\,
	datac => \datapath|acc1|temp\(2),
	datad => \datapath|alu1|output\(2),
	combout => \datapath|acc1|output~0_combout\);

-- Location: LCFF_X16_Y8_N25
\datapath|acc1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|acc1|output~0_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acc1|output\(2));

-- Location: LCCOMB_X16_Y8_N24
\datapath|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux5~0_combout\ = (\datapath|acc1|output\(2) & ((\controller|selc_dp\(2)) # ((\controller|selc_dp\(0)) # (\controller|selc_dp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(2),
	datab => \controller|selc_dp\(0),
	datac => \datapath|acc1|output\(2),
	datad => \controller|selc_dp\(3),
	combout => \datapath|Mux5~0_combout\);

-- Location: LCFF_X16_Y8_N9
\datapath|entrada2_alu[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \datapath|Mux5~0_combout\,
	sload => VCC,
	ena => \datapath|entrada2_alu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|entrada2_alu\(2));

-- Location: LCCOMB_X16_Y8_N8
\datapath|alu1|soma|FA_3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|soma|FA_3|s~combout\ = \datapath|alu1|sub|FA_3|s~0_combout\ $ (((\datapath|entrada1_alu\(2) & ((\datapath|entrada2_alu\(2)) # (\datapath|alu1|soma|FA_1|cout~0_combout\))) # (!\datapath|entrada1_alu\(2) & (\datapath|entrada2_alu\(2) & 
-- \datapath|alu1|soma|FA_1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(2),
	datab => \datapath|alu1|sub|FA_3|s~0_combout\,
	datac => \datapath|entrada2_alu\(2),
	datad => \datapath|alu1|soma|FA_1|cout~0_combout\,
	combout => \datapath|alu1|soma|FA_3|s~combout\);

-- Location: LCCOMB_X17_Y8_N4
\datapath|alu1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~2_combout\ = (\datapath|entrada2_alu\(3) & (((\datapath|entrada1_alu\(3) & \datapath|alu1|output[3]~3_combout\)) # (!\datapath|alu1|output[3]~2_combout\))) # (!\datapath|entrada2_alu\(3) & (((!\datapath|alu1|output[3]~2_combout\ & 
-- \datapath|entrada1_alu\(3))) # (!\datapath|alu1|output[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(3),
	datab => \datapath|alu1|output[3]~2_combout\,
	datac => \datapath|entrada1_alu\(3),
	datad => \datapath|alu1|output[3]~3_combout\,
	combout => \datapath|alu1|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y8_N14
\datapath|alu1|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~4_combout\ = (\datapath|alu1|output[3]~0_combout\ & (\datapath|entrada2_alu\(3))) # (!\datapath|alu1|output[3]~0_combout\ & ((\datapath|alu1|output[3]~3_combout\) # ((!\datapath|entrada2_alu\(3) & 
-- \datapath|alu1|output[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada2_alu\(3),
	datab => \datapath|alu1|output[3]~0_combout\,
	datac => \datapath|alu1|output[3]~2_combout\,
	datad => \datapath|alu1|output[3]~3_combout\,
	combout => \datapath|alu1|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y8_N10
\datapath|alu1|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~3_combout\ = \datapath|alu1|sub|FA_3|s~0_combout\ $ (((\datapath|entrada1_alu\(2) & ((!\datapath|alu1|sub|FA_1|cout~0_combout\) # (!\datapath|entrada2_alu\(2)))) # (!\datapath|entrada1_alu\(2) & (!\datapath|entrada2_alu\(2) & 
-- !\datapath|alu1|sub|FA_1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|entrada1_alu\(2),
	datab => \datapath|entrada2_alu\(2),
	datac => \datapath|alu1|sub|FA_3|s~0_combout\,
	datad => \datapath|alu1|sub|FA_1|cout~0_combout\,
	combout => \datapath|alu1|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y8_N18
\datapath|alu1|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~7_combout\ = (\datapath|alu1|Mux0~4_combout\) # ((\datapath|alu1|Mux0~3_combout\ & ((\controller|selc_dp\(2)) # (!\controller|selc_dp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|selc_dp\(0),
	datab => \controller|selc_dp\(2),
	datac => \datapath|alu1|Mux0~4_combout\,
	datad => \datapath|alu1|Mux0~3_combout\,
	combout => \datapath|alu1|Mux0~7_combout\);

-- Location: LCCOMB_X17_Y8_N12
\datapath|alu1|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~5_combout\ = (\datapath|alu1|output[3]~1_combout\ & (\datapath|alu1|output[3]~0_combout\)) # (!\datapath|alu1|output[3]~1_combout\ & (\datapath|alu1|Mux0~7_combout\ & ((\datapath|alu1|output[3]~0_combout\) # 
-- (\datapath|alu1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[3]~1_combout\,
	datab => \datapath|alu1|output[3]~0_combout\,
	datac => \datapath|alu1|Mux0~2_combout\,
	datad => \datapath|alu1|Mux0~7_combout\,
	combout => \datapath|alu1|Mux0~5_combout\);

-- Location: LCCOMB_X17_Y8_N10
\datapath|alu1|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~6_combout\ = (\datapath|alu1|output[3]~1_combout\ & ((\datapath|alu1|Mux0~5_combout\ & ((\datapath|alu1|soma|FA_3|s~combout\))) # (!\datapath|alu1|Mux0~5_combout\ & (\datapath|entrada1_alu\(3))))) # 
-- (!\datapath|alu1|output[3]~1_combout\ & (((\datapath|alu1|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[3]~1_combout\,
	datab => \datapath|entrada1_alu\(3),
	datac => \datapath|alu1|soma|FA_3|s~combout\,
	datad => \datapath|alu1|Mux0~5_combout\,
	combout => \datapath|alu1|Mux0~6_combout\);

-- Location: LCFF_X17_Y8_N11
\datapath|alu1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \datapath|alu1|Mux0~6_combout\,
	aclr => \rst~combout\,
	ena => \datapath|alu1|output[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(3));

-- Location: LCCOMB_X1_Y12_N22
\c1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux3~0_combout\ = (\datapath|alu1|output\(3) & ((\datapath|alu1|output\(2)) # (\datapath|alu1|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|output\(2),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y12_N16
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

-- Location: LCFF_X1_Y12_N17
\conv1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \conv1[0]~reg0feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv1[0]~reg0_regout\);

-- Location: LCFF_X1_Y12_N23
\conv1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux3~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv1[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N24
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

-- Location: LCFF_X1_Y12_N25
\conv1[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \conv1[4]~reg0feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv1[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N6
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

-- Location: LCFF_X1_Y12_N7
\conv1[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \conv1[5]~reg0feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv1[5]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N8
\c1|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux10~0_combout\ = (\datapath|alu1|output\(0) & (!\datapath|alu1|output\(2) & (\datapath|alu1|output\(3) $ (!\datapath|alu1|output\(1))))) # (!\datapath|alu1|output\(0) & (\datapath|alu1|output\(2) & (\datapath|alu1|output\(3) $ 
-- (!\datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|output\(2),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux10~0_combout\);

-- Location: LCFF_X1_Y12_N9
\conv2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux10~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N2
\c1|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux9~0_combout\ = (\datapath|alu1|output\(2) & ((\datapath|alu1|output\(0) & (\datapath|alu1|output\(3) $ (!\datapath|alu1|output\(1)))) # (!\datapath|alu1|output\(0) & (!\datapath|alu1|output\(3) & \datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|output\(2),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux9~0_combout\);

-- Location: LCFF_X1_Y12_N3
\conv2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux9~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N20
\c1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux8~0_combout\ = (!\datapath|alu1|output\(0) & ((\datapath|alu1|output\(3) & (\datapath|alu1|output\(2) & !\datapath|alu1|output\(1))) # (!\datapath|alu1|output\(3) & (!\datapath|alu1|output\(2) & \datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|output\(2),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux8~0_combout\);

-- Location: LCFF_X1_Y12_N21
\conv2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux8~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N26
\c1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux7~0_combout\ = (\datapath|alu1|output\(0) & ((\datapath|alu1|output\(3) & (!\datapath|alu1|output\(2) & \datapath|alu1|output\(1))) # (!\datapath|alu1|output\(3) & (\datapath|alu1|output\(2) $ (!\datapath|alu1|output\(1)))))) # 
-- (!\datapath|alu1|output\(0) & (\datapath|alu1|output\(2) & (\datapath|alu1|output\(3) $ (!\datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|output\(2),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux7~0_combout\);

-- Location: LCFF_X1_Y12_N27
\conv2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux7~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N0
\c1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux6~0_combout\ = (\datapath|alu1|output\(0) & (((\datapath|alu1|output\(2)) # (\datapath|alu1|output\(1))) # (!\datapath|alu1|output\(3)))) # (!\datapath|alu1|output\(0) & (\datapath|alu1|output\(2) & (\datapath|alu1|output\(3) $ 
-- (!\datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|output\(2),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux6~0_combout\);

-- Location: LCFF_X1_Y12_N1
\conv2[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux6~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N10
\c1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux5~0_combout\ = (\datapath|alu1|output\(2) & ((\datapath|alu1|output\(3) & ((!\datapath|alu1|output\(1)))) # (!\datapath|alu1|output\(3) & (\datapath|alu1|output\(0) & \datapath|alu1|output\(1))))) # (!\datapath|alu1|output\(2) & 
-- ((\datapath|alu1|output\(0)) # ((!\datapath|alu1|output\(3) & \datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|output\(2),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux5~0_combout\);

-- Location: LCFF_X1_Y12_N11
\conv2[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \c1|Mux5~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \conv2[5]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N12
\c1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|Mux4~0_combout\ = (\datapath|alu1|output\(2) & (((\datapath|alu1|output\(3)) # (!\datapath|alu1|output\(1))) # (!\datapath|alu1|output\(0)))) # (!\datapath|alu1|output\(2) & ((\datapath|alu1|output\(3) $ (\datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(0),
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|output\(2),
	datad => \datapath|alu1|output\(1),
	combout => \c1|Mux4~0_combout\);

-- Location: LCFF_X1_Y12_N13
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

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


