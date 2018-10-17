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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/16/2018 22:41:30"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk50MHz : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(1 DOWNTO 0);
	led0 : OUT std_logic_vector(0 TO 6);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(0 TO 6)
	);
END top_level;

-- Design Ports Information
-- led0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(0 TO 6);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[0]~8_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[2]~13\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[3]~15\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[4]~16_combout\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[5]~19\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[6]~21\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[7]~22_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U_GCD|controller|y_sel~combout\ : std_logic;
SIGNAL \U_GCD|controller|y_en~0_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[6]~21\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[7]~22_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|LessThan0~1_cout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|LessThan0~3_cout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|LessThan0~5_cout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|LessThan0~7_cout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|LessThan0~9_cout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|LessThan0~11_cout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|LessThan0~13_cout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\ : std_logic;
SIGNAL \U_GCD|controller|y_sel~0_combout\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|state.ldsuby~q\ : std_logic;
SIGNAL \U_GCD|controller|Selector1~0_combout\ : std_logic;
SIGNAL \U_GCD|controller|state.calc~q\ : std_logic;
SIGNAL \U_GCD|controller|state.ldoutput~0_combout\ : std_logic;
SIGNAL \U_GCD|controller|state.ldoutput~q\ : std_logic;
SIGNAL \U_GCD|controller|state.outs~feeder_combout\ : std_logic;
SIGNAL \U_GCD|controller|state.outs~q\ : std_logic;
SIGNAL \U_GCD|controller|state.inld~0_combout\ : std_logic;
SIGNAL \U_GCD|controller|state.inld~q\ : std_logic;
SIGNAL \U_GCD|controller|x_en~0_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[3]~15\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[4]~16_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[4]~17\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[5]~18_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[4]~17\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[5]~18_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[5]~19\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[6]~20_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[6]~20_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|Equal0~3_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|Equal0~2_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|Equal0~0_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|Equal0~1_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|cmprtr|Equal0~4_combout\ : std_logic;
SIGNAL \U_GCD|controller|x_sel~0_combout\ : std_logic;
SIGNAL \U_GCD|controller|state.ldsubx~q\ : std_logic;
SIGNAL \U_GCD|controller|x_sel~combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[0]~8_combout\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[0]~9\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[1]~10_combout\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[0]~9\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[1]~10_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[1]~11\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[2]~12_combout\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[1]~11\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[2]~12_combout\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[2]~13\ : std_logic;
SIGNAL \U_GCD|controller|datapath|yreg|o[3]~14_combout\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o[3]~14_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \U_GCD|controller|datapath|outreg|o[3]~feeder_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|outreg|o[2]~feeder_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|outreg|o[0]~feeder_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|outreg|o[1]~feeder_combout\ : std_logic;
SIGNAL \U_LED0|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux0~0_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|outreg|o[4]~feeder_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|outreg|o[6]~feeder_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|outreg|o[7]~feeder_combout\ : std_logic;
SIGNAL \U_LED1|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux0~0_combout\ : std_logic;
SIGNAL \U_GCD|controller|datapath|xreg|o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_GCD|controller|datapath|yreg|o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_GCD|controller|datapath|outreg|o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_button[1]~input_o\ : std_logic;
SIGNAL \U_LED1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\ALT_INV_button[1]~input_o\ <= NOT \button[1]~input_o\;
\U_LED1|ALT_INV_Mux6~0_combout\ <= NOT \U_LED1|Mux6~0_combout\;
\U_LED0|ALT_INV_Mux6~0_combout\ <= NOT \U_LED0|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y54_N23
\led0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\led0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\led0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\led0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\led0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\led0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\led0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\led0_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_GCD|controller|state.outs~q\,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\led1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\led1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\led1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\led1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\led1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\led1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\led1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G19
\clk50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X58_Y53_N16
\U_GCD|controller|datapath|xreg|o[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|xreg|o[0]~8_combout\ = (\U_GCD|controller|datapath|yreg|o\(0) & (\U_GCD|controller|datapath|xreg|o\(0) $ (VCC))) # (!\U_GCD|controller|datapath|yreg|o\(0) & ((\U_GCD|controller|datapath|xreg|o\(0)) # (GND)))
-- \U_GCD|controller|datapath|xreg|o[0]~9\ = CARRY((\U_GCD|controller|datapath|xreg|o\(0)) # (!\U_GCD|controller|datapath|yreg|o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(0),
	datab => \U_GCD|controller|datapath|xreg|o\(0),
	datad => VCC,
	combout => \U_GCD|controller|datapath|xreg|o[0]~8_combout\,
	cout => \U_GCD|controller|datapath|xreg|o[0]~9\);

-- Location: IOIBUF_X49_Y54_N1
\switch[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: LCCOMB_X58_Y53_N20
\U_GCD|controller|datapath|xreg|o[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|xreg|o[2]~12_combout\ = ((\U_GCD|controller|datapath|yreg|o\(2) $ (\U_GCD|controller|datapath|xreg|o\(2) $ (\U_GCD|controller|datapath|xreg|o[1]~11\)))) # (GND)
-- \U_GCD|controller|datapath|xreg|o[2]~13\ = CARRY((\U_GCD|controller|datapath|yreg|o\(2) & (\U_GCD|controller|datapath|xreg|o\(2) & !\U_GCD|controller|datapath|xreg|o[1]~11\)) # (!\U_GCD|controller|datapath|yreg|o\(2) & 
-- ((\U_GCD|controller|datapath|xreg|o\(2)) # (!\U_GCD|controller|datapath|xreg|o[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(2),
	datab => \U_GCD|controller|datapath|xreg|o\(2),
	datad => VCC,
	cin => \U_GCD|controller|datapath|xreg|o[1]~11\,
	combout => \U_GCD|controller|datapath|xreg|o[2]~12_combout\,
	cout => \U_GCD|controller|datapath|xreg|o[2]~13\);

-- Location: LCCOMB_X58_Y53_N22
\U_GCD|controller|datapath|xreg|o[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|xreg|o[3]~14_combout\ = (\U_GCD|controller|datapath|xreg|o\(3) & ((\U_GCD|controller|datapath|yreg|o\(3) & (!\U_GCD|controller|datapath|xreg|o[2]~13\)) # (!\U_GCD|controller|datapath|yreg|o\(3) & 
-- (\U_GCD|controller|datapath|xreg|o[2]~13\ & VCC)))) # (!\U_GCD|controller|datapath|xreg|o\(3) & ((\U_GCD|controller|datapath|yreg|o\(3) & ((\U_GCD|controller|datapath|xreg|o[2]~13\) # (GND))) # (!\U_GCD|controller|datapath|yreg|o\(3) & 
-- (!\U_GCD|controller|datapath|xreg|o[2]~13\))))
-- \U_GCD|controller|datapath|xreg|o[3]~15\ = CARRY((\U_GCD|controller|datapath|xreg|o\(3) & (\U_GCD|controller|datapath|yreg|o\(3) & !\U_GCD|controller|datapath|xreg|o[2]~13\)) # (!\U_GCD|controller|datapath|xreg|o\(3) & 
-- ((\U_GCD|controller|datapath|yreg|o\(3)) # (!\U_GCD|controller|datapath|xreg|o[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|xreg|o\(3),
	datab => \U_GCD|controller|datapath|yreg|o\(3),
	datad => VCC,
	cin => \U_GCD|controller|datapath|xreg|o[2]~13\,
	combout => \U_GCD|controller|datapath|xreg|o[3]~14_combout\,
	cout => \U_GCD|controller|datapath|xreg|o[3]~15\);

-- Location: LCCOMB_X58_Y53_N24
\U_GCD|controller|datapath|xreg|o[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|xreg|o[4]~16_combout\ = ((\U_GCD|controller|datapath|yreg|o\(4) $ (\U_GCD|controller|datapath|xreg|o\(4) $ (\U_GCD|controller|datapath|xreg|o[3]~15\)))) # (GND)
-- \U_GCD|controller|datapath|xreg|o[4]~17\ = CARRY((\U_GCD|controller|datapath|yreg|o\(4) & (\U_GCD|controller|datapath|xreg|o\(4) & !\U_GCD|controller|datapath|xreg|o[3]~15\)) # (!\U_GCD|controller|datapath|yreg|o\(4) & 
-- ((\U_GCD|controller|datapath|xreg|o\(4)) # (!\U_GCD|controller|datapath|xreg|o[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(4),
	datab => \U_GCD|controller|datapath|xreg|o\(4),
	datad => VCC,
	cin => \U_GCD|controller|datapath|xreg|o[3]~15\,
	combout => \U_GCD|controller|datapath|xreg|o[4]~16_combout\,
	cout => \U_GCD|controller|datapath|xreg|o[4]~17\);

-- Location: IOIBUF_X69_Y54_N1
\switch[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LCCOMB_X57_Y53_N18
\U_GCD|controller|datapath|yreg|o[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|yreg|o[5]~18_combout\ = (\U_GCD|controller|datapath|xreg|o\(5) & ((\U_GCD|controller|datapath|yreg|o\(5) & (!\U_GCD|controller|datapath|yreg|o[4]~17\)) # (!\U_GCD|controller|datapath|yreg|o\(5) & 
-- ((\U_GCD|controller|datapath|yreg|o[4]~17\) # (GND))))) # (!\U_GCD|controller|datapath|xreg|o\(5) & ((\U_GCD|controller|datapath|yreg|o\(5) & (\U_GCD|controller|datapath|yreg|o[4]~17\ & VCC)) # (!\U_GCD|controller|datapath|yreg|o\(5) & 
-- (!\U_GCD|controller|datapath|yreg|o[4]~17\))))
-- \U_GCD|controller|datapath|yreg|o[5]~19\ = CARRY((\U_GCD|controller|datapath|xreg|o\(5) & ((!\U_GCD|controller|datapath|yreg|o[4]~17\) # (!\U_GCD|controller|datapath|yreg|o\(5)))) # (!\U_GCD|controller|datapath|xreg|o\(5) & 
-- (!\U_GCD|controller|datapath|yreg|o\(5) & !\U_GCD|controller|datapath|yreg|o[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|xreg|o\(5),
	datab => \U_GCD|controller|datapath|yreg|o\(5),
	datad => VCC,
	cin => \U_GCD|controller|datapath|yreg|o[4]~17\,
	combout => \U_GCD|controller|datapath|yreg|o[5]~18_combout\,
	cout => \U_GCD|controller|datapath|yreg|o[5]~19\);

-- Location: LCCOMB_X57_Y53_N20
\U_GCD|controller|datapath|yreg|o[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|yreg|o[6]~20_combout\ = ((\U_GCD|controller|datapath|yreg|o\(6) $ (\U_GCD|controller|datapath|xreg|o\(6) $ (\U_GCD|controller|datapath|yreg|o[5]~19\)))) # (GND)
-- \U_GCD|controller|datapath|yreg|o[6]~21\ = CARRY((\U_GCD|controller|datapath|yreg|o\(6) & ((!\U_GCD|controller|datapath|yreg|o[5]~19\) # (!\U_GCD|controller|datapath|xreg|o\(6)))) # (!\U_GCD|controller|datapath|yreg|o\(6) & 
-- (!\U_GCD|controller|datapath|xreg|o\(6) & !\U_GCD|controller|datapath|yreg|o[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(6),
	datab => \U_GCD|controller|datapath|xreg|o\(6),
	datad => VCC,
	cin => \U_GCD|controller|datapath|yreg|o[5]~19\,
	combout => \U_GCD|controller|datapath|yreg|o[6]~20_combout\,
	cout => \U_GCD|controller|datapath|yreg|o[6]~21\);

-- Location: LCCOMB_X57_Y53_N22
\U_GCD|controller|datapath|yreg|o[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|yreg|o[7]~22_combout\ = \U_GCD|controller|datapath|yreg|o\(7) $ (\U_GCD|controller|datapath|yreg|o[6]~21\ $ (!\U_GCD|controller|datapath|xreg|o\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(7),
	datad => \U_GCD|controller|datapath|xreg|o\(7),
	cin => \U_GCD|controller|datapath|yreg|o[6]~21\,
	combout => \U_GCD|controller|datapath|yreg|o[7]~22_combout\);

-- Location: LCCOMB_X57_Y53_N28
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X57_Y53_N0
\U_GCD|controller|y_sel\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|y_sel~combout\ = (!\U_GCD|controller|state.ldsuby~q\ & ((!\U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\) # (!\U_GCD|controller|state.calc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|controller|state.calc~q\,
	datac => \U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\,
	datad => \U_GCD|controller|state.ldsuby~q\,
	combout => \U_GCD|controller|y_sel~combout\);

-- Location: LCCOMB_X57_Y53_N30
\U_GCD|controller|y_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|y_en~0_combout\ = (\U_GCD|controller|state.ldsuby~q\) # (!\U_GCD|controller|state.inld~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GCD|controller|state.inld~q\,
	datad => \U_GCD|controller|state.ldsuby~q\,
	combout => \U_GCD|controller|y_en~0_combout\);

-- Location: FF_X57_Y53_N23
\U_GCD|controller|datapath|yreg|o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|yreg|o[7]~22_combout\,
	asdata => \~GND~combout\,
	sload => \U_GCD|controller|y_sel~combout\,
	ena => \U_GCD|controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|yreg|o\(7));

-- Location: LCCOMB_X58_Y53_N28
\U_GCD|controller|datapath|xreg|o[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|xreg|o[6]~20_combout\ = ((\U_GCD|controller|datapath|yreg|o\(6) $ (\U_GCD|controller|datapath|xreg|o\(6) $ (\U_GCD|controller|datapath|xreg|o[5]~19\)))) # (GND)
-- \U_GCD|controller|datapath|xreg|o[6]~21\ = CARRY((\U_GCD|controller|datapath|yreg|o\(6) & (\U_GCD|controller|datapath|xreg|o\(6) & !\U_GCD|controller|datapath|xreg|o[5]~19\)) # (!\U_GCD|controller|datapath|yreg|o\(6) & 
-- ((\U_GCD|controller|datapath|xreg|o\(6)) # (!\U_GCD|controller|datapath|xreg|o[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(6),
	datab => \U_GCD|controller|datapath|xreg|o\(6),
	datad => VCC,
	cin => \U_GCD|controller|datapath|xreg|o[5]~19\,
	combout => \U_GCD|controller|datapath|xreg|o[6]~20_combout\,
	cout => \U_GCD|controller|datapath|xreg|o[6]~21\);

-- Location: LCCOMB_X58_Y53_N30
\U_GCD|controller|datapath|xreg|o[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|xreg|o[7]~22_combout\ = \U_GCD|controller|datapath|xreg|o\(7) $ (\U_GCD|controller|datapath|xreg|o[6]~21\ $ (!\U_GCD|controller|datapath|yreg|o\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|xreg|o\(7),
	datad => \U_GCD|controller|datapath|yreg|o\(7),
	cin => \U_GCD|controller|datapath|xreg|o[6]~21\,
	combout => \U_GCD|controller|datapath|xreg|o[7]~22_combout\);

-- Location: FF_X58_Y53_N31
\U_GCD|controller|datapath|xreg|o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|xreg|o[7]~22_combout\,
	asdata => \~GND~combout\,
	sload => \U_GCD|controller|x_sel~combout\,
	ena => \U_GCD|controller|x_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|xreg|o\(7));

-- Location: LCCOMB_X58_Y53_N0
\U_GCD|controller|datapath|cmprtr|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|LessThan0~1_cout\ = CARRY((\U_GCD|controller|datapath|yreg|o\(0) & !\U_GCD|controller|datapath|xreg|o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(0),
	datab => \U_GCD|controller|datapath|xreg|o\(0),
	datad => VCC,
	cout => \U_GCD|controller|datapath|cmprtr|LessThan0~1_cout\);

-- Location: LCCOMB_X58_Y53_N2
\U_GCD|controller|datapath|cmprtr|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|LessThan0~3_cout\ = CARRY((\U_GCD|controller|datapath|yreg|o\(1) & (\U_GCD|controller|datapath|xreg|o\(1) & !\U_GCD|controller|datapath|cmprtr|LessThan0~1_cout\)) # (!\U_GCD|controller|datapath|yreg|o\(1) & 
-- ((\U_GCD|controller|datapath|xreg|o\(1)) # (!\U_GCD|controller|datapath|cmprtr|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(1),
	datab => \U_GCD|controller|datapath|xreg|o\(1),
	datad => VCC,
	cin => \U_GCD|controller|datapath|cmprtr|LessThan0~1_cout\,
	cout => \U_GCD|controller|datapath|cmprtr|LessThan0~3_cout\);

-- Location: LCCOMB_X58_Y53_N4
\U_GCD|controller|datapath|cmprtr|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|LessThan0~5_cout\ = CARRY((\U_GCD|controller|datapath|yreg|o\(2) & ((!\U_GCD|controller|datapath|cmprtr|LessThan0~3_cout\) # (!\U_GCD|controller|datapath|xreg|o\(2)))) # (!\U_GCD|controller|datapath|yreg|o\(2) & 
-- (!\U_GCD|controller|datapath|xreg|o\(2) & !\U_GCD|controller|datapath|cmprtr|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(2),
	datab => \U_GCD|controller|datapath|xreg|o\(2),
	datad => VCC,
	cin => \U_GCD|controller|datapath|cmprtr|LessThan0~3_cout\,
	cout => \U_GCD|controller|datapath|cmprtr|LessThan0~5_cout\);

-- Location: LCCOMB_X58_Y53_N6
\U_GCD|controller|datapath|cmprtr|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|LessThan0~7_cout\ = CARRY((\U_GCD|controller|datapath|yreg|o\(3) & (\U_GCD|controller|datapath|xreg|o\(3) & !\U_GCD|controller|datapath|cmprtr|LessThan0~5_cout\)) # (!\U_GCD|controller|datapath|yreg|o\(3) & 
-- ((\U_GCD|controller|datapath|xreg|o\(3)) # (!\U_GCD|controller|datapath|cmprtr|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(3),
	datab => \U_GCD|controller|datapath|xreg|o\(3),
	datad => VCC,
	cin => \U_GCD|controller|datapath|cmprtr|LessThan0~5_cout\,
	cout => \U_GCD|controller|datapath|cmprtr|LessThan0~7_cout\);

-- Location: LCCOMB_X58_Y53_N8
\U_GCD|controller|datapath|cmprtr|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|LessThan0~9_cout\ = CARRY((\U_GCD|controller|datapath|yreg|o\(4) & ((!\U_GCD|controller|datapath|cmprtr|LessThan0~7_cout\) # (!\U_GCD|controller|datapath|xreg|o\(4)))) # (!\U_GCD|controller|datapath|yreg|o\(4) & 
-- (!\U_GCD|controller|datapath|xreg|o\(4) & !\U_GCD|controller|datapath|cmprtr|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(4),
	datab => \U_GCD|controller|datapath|xreg|o\(4),
	datad => VCC,
	cin => \U_GCD|controller|datapath|cmprtr|LessThan0~7_cout\,
	cout => \U_GCD|controller|datapath|cmprtr|LessThan0~9_cout\);

-- Location: LCCOMB_X58_Y53_N10
\U_GCD|controller|datapath|cmprtr|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|LessThan0~11_cout\ = CARRY((\U_GCD|controller|datapath|xreg|o\(5) & ((!\U_GCD|controller|datapath|cmprtr|LessThan0~9_cout\) # (!\U_GCD|controller|datapath|yreg|o\(5)))) # (!\U_GCD|controller|datapath|xreg|o\(5) & 
-- (!\U_GCD|controller|datapath|yreg|o\(5) & !\U_GCD|controller|datapath|cmprtr|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|xreg|o\(5),
	datab => \U_GCD|controller|datapath|yreg|o\(5),
	datad => VCC,
	cin => \U_GCD|controller|datapath|cmprtr|LessThan0~9_cout\,
	cout => \U_GCD|controller|datapath|cmprtr|LessThan0~11_cout\);

-- Location: LCCOMB_X58_Y53_N12
\U_GCD|controller|datapath|cmprtr|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|LessThan0~13_cout\ = CARRY((\U_GCD|controller|datapath|yreg|o\(6) & ((!\U_GCD|controller|datapath|cmprtr|LessThan0~11_cout\) # (!\U_GCD|controller|datapath|xreg|o\(6)))) # (!\U_GCD|controller|datapath|yreg|o\(6) & 
-- (!\U_GCD|controller|datapath|xreg|o\(6) & !\U_GCD|controller|datapath|cmprtr|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(6),
	datab => \U_GCD|controller|datapath|xreg|o\(6),
	datad => VCC,
	cin => \U_GCD|controller|datapath|cmprtr|LessThan0~11_cout\,
	cout => \U_GCD|controller|datapath|cmprtr|LessThan0~13_cout\);

-- Location: LCCOMB_X58_Y53_N14
\U_GCD|controller|datapath|cmprtr|LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\ = (\U_GCD|controller|datapath|xreg|o\(7) & (\U_GCD|controller|datapath|cmprtr|LessThan0~13_cout\ & \U_GCD|controller|datapath|yreg|o\(7))) # (!\U_GCD|controller|datapath|xreg|o\(7) & 
-- ((\U_GCD|controller|datapath|cmprtr|LessThan0~13_cout\) # (\U_GCD|controller|datapath|yreg|o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|xreg|o\(7),
	datad => \U_GCD|controller|datapath|yreg|o\(7),
	cin => \U_GCD|controller|datapath|cmprtr|LessThan0~13_cout\,
	combout => \U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\);

-- Location: LCCOMB_X57_Y53_N6
\U_GCD|controller|y_sel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|y_sel~0_combout\ = (\U_GCD|controller|state.calc~q\ & \U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|controller|state.calc~q\,
	datac => \U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\,
	combout => \U_GCD|controller|y_sel~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\button[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\button[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: FF_X57_Y53_N7
\U_GCD|controller|state.ldsuby\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|y_sel~0_combout\,
	clrn => \button[0]~input_o\,
	ena => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|state.ldsuby~q\);

-- Location: LCCOMB_X57_Y53_N4
\U_GCD|controller|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|Selector1~0_combout\ = (\U_GCD|controller|state.ldsuby~q\) # ((\U_GCD|controller|state.ldsubx~q\) # (!\U_GCD|controller|state.inld~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|state.ldsuby~q\,
	datac => \U_GCD|controller|state.inld~q\,
	datad => \U_GCD|controller|state.ldsubx~q\,
	combout => \U_GCD|controller|Selector1~0_combout\);

-- Location: FF_X57_Y53_N5
\U_GCD|controller|state.calc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|Selector1~0_combout\,
	clrn => \button[0]~input_o\,
	ena => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|state.calc~q\);

-- Location: LCCOMB_X59_Y53_N18
\U_GCD|controller|state.ldoutput~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|state.ldoutput~0_combout\ = (\U_GCD|controller|datapath|cmprtr|Equal0~4_combout\ & (\U_GCD|controller|state.calc~q\ & !\U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|controller|datapath|cmprtr|Equal0~4_combout\,
	datac => \U_GCD|controller|state.calc~q\,
	datad => \U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\,
	combout => \U_GCD|controller|state.ldoutput~0_combout\);

-- Location: FF_X59_Y53_N19
\U_GCD|controller|state.ldoutput\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|state.ldoutput~0_combout\,
	clrn => \button[0]~input_o\,
	ena => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|state.ldoutput~q\);

-- Location: LCCOMB_X59_Y53_N0
\U_GCD|controller|state.outs~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|state.outs~feeder_combout\ = \U_GCD|controller|state.ldoutput~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GCD|controller|state.ldoutput~q\,
	combout => \U_GCD|controller|state.outs~feeder_combout\);

-- Location: FF_X59_Y53_N1
\U_GCD|controller|state.outs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|state.outs~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|state.outs~q\);

-- Location: LCCOMB_X57_Y53_N26
\U_GCD|controller|state.inld~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|state.inld~0_combout\ = !\U_GCD|controller|state.outs~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GCD|controller|state.outs~q\,
	combout => \U_GCD|controller|state.inld~0_combout\);

-- Location: FF_X57_Y53_N27
\U_GCD|controller|state.inld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|state.inld~0_combout\,
	clrn => \button[0]~input_o\,
	ena => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|state.inld~q\);

-- Location: LCCOMB_X57_Y53_N24
\U_GCD|controller|x_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|x_en~0_combout\ = (\U_GCD|controller|state.ldsubx~q\) # (!\U_GCD|controller|state.inld~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GCD|controller|state.inld~q\,
	datad => \U_GCD|controller|state.ldsubx~q\,
	combout => \U_GCD|controller|x_en~0_combout\);

-- Location: FF_X58_Y53_N25
\U_GCD|controller|datapath|xreg|o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|xreg|o[4]~16_combout\,
	asdata => \switch[9]~input_o\,
	sload => \U_GCD|controller|x_sel~combout\,
	ena => \U_GCD|controller|x_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|xreg|o\(4));

-- Location: LCCOMB_X57_Y53_N14
\U_GCD|controller|datapath|yreg|o[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|yreg|o[3]~14_combout\ = (\U_GCD|controller|datapath|yreg|o\(3) & ((\U_GCD|controller|datapath|xreg|o\(3) & (!\U_GCD|controller|datapath|yreg|o[2]~13\)) # (!\U_GCD|controller|datapath|xreg|o\(3) & 
-- (\U_GCD|controller|datapath|yreg|o[2]~13\ & VCC)))) # (!\U_GCD|controller|datapath|yreg|o\(3) & ((\U_GCD|controller|datapath|xreg|o\(3) & ((\U_GCD|controller|datapath|yreg|o[2]~13\) # (GND))) # (!\U_GCD|controller|datapath|xreg|o\(3) & 
-- (!\U_GCD|controller|datapath|yreg|o[2]~13\))))
-- \U_GCD|controller|datapath|yreg|o[3]~15\ = CARRY((\U_GCD|controller|datapath|yreg|o\(3) & (\U_GCD|controller|datapath|xreg|o\(3) & !\U_GCD|controller|datapath|yreg|o[2]~13\)) # (!\U_GCD|controller|datapath|yreg|o\(3) & 
-- ((\U_GCD|controller|datapath|xreg|o\(3)) # (!\U_GCD|controller|datapath|yreg|o[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(3),
	datab => \U_GCD|controller|datapath|xreg|o\(3),
	datad => VCC,
	cin => \U_GCD|controller|datapath|yreg|o[2]~13\,
	combout => \U_GCD|controller|datapath|yreg|o[3]~14_combout\,
	cout => \U_GCD|controller|datapath|yreg|o[3]~15\);

-- Location: LCCOMB_X57_Y53_N16
\U_GCD|controller|datapath|yreg|o[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|yreg|o[4]~16_combout\ = ((\U_GCD|controller|datapath|yreg|o\(4) $ (\U_GCD|controller|datapath|xreg|o\(4) $ (\U_GCD|controller|datapath|yreg|o[3]~15\)))) # (GND)
-- \U_GCD|controller|datapath|yreg|o[4]~17\ = CARRY((\U_GCD|controller|datapath|yreg|o\(4) & ((!\U_GCD|controller|datapath|yreg|o[3]~15\) # (!\U_GCD|controller|datapath|xreg|o\(4)))) # (!\U_GCD|controller|datapath|yreg|o\(4) & 
-- (!\U_GCD|controller|datapath|xreg|o\(4) & !\U_GCD|controller|datapath|yreg|o[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(4),
	datab => \U_GCD|controller|datapath|xreg|o\(4),
	datad => VCC,
	cin => \U_GCD|controller|datapath|yreg|o[3]~15\,
	combout => \U_GCD|controller|datapath|yreg|o[4]~16_combout\,
	cout => \U_GCD|controller|datapath|yreg|o[4]~17\);

-- Location: IOIBUF_X54_Y54_N22
\switch[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: FF_X57_Y53_N17
\U_GCD|controller|datapath|yreg|o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|yreg|o[4]~16_combout\,
	asdata => \switch[4]~input_o\,
	sload => \U_GCD|controller|y_sel~combout\,
	ena => \U_GCD|controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|yreg|o\(4));

-- Location: FF_X57_Y53_N19
\U_GCD|controller|datapath|yreg|o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|yreg|o[5]~18_combout\,
	asdata => \~GND~combout\,
	sload => \U_GCD|controller|y_sel~combout\,
	ena => \U_GCD|controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|yreg|o\(5));

-- Location: LCCOMB_X58_Y53_N26
\U_GCD|controller|datapath|xreg|o[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|xreg|o[5]~18_combout\ = (\U_GCD|controller|datapath|xreg|o\(5) & ((\U_GCD|controller|datapath|yreg|o\(5) & (!\U_GCD|controller|datapath|xreg|o[4]~17\)) # (!\U_GCD|controller|datapath|yreg|o\(5) & 
-- (\U_GCD|controller|datapath|xreg|o[4]~17\ & VCC)))) # (!\U_GCD|controller|datapath|xreg|o\(5) & ((\U_GCD|controller|datapath|yreg|o\(5) & ((\U_GCD|controller|datapath|xreg|o[4]~17\) # (GND))) # (!\U_GCD|controller|datapath|yreg|o\(5) & 
-- (!\U_GCD|controller|datapath|xreg|o[4]~17\))))
-- \U_GCD|controller|datapath|xreg|o[5]~19\ = CARRY((\U_GCD|controller|datapath|xreg|o\(5) & (\U_GCD|controller|datapath|yreg|o\(5) & !\U_GCD|controller|datapath|xreg|o[4]~17\)) # (!\U_GCD|controller|datapath|xreg|o\(5) & 
-- ((\U_GCD|controller|datapath|yreg|o\(5)) # (!\U_GCD|controller|datapath|xreg|o[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|xreg|o\(5),
	datab => \U_GCD|controller|datapath|yreg|o\(5),
	datad => VCC,
	cin => \U_GCD|controller|datapath|xreg|o[4]~17\,
	combout => \U_GCD|controller|datapath|xreg|o[5]~18_combout\,
	cout => \U_GCD|controller|datapath|xreg|o[5]~19\);

-- Location: FF_X58_Y53_N27
\U_GCD|controller|datapath|xreg|o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|xreg|o[5]~18_combout\,
	asdata => \~GND~combout\,
	sload => \U_GCD|controller|x_sel~combout\,
	ena => \U_GCD|controller|x_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|xreg|o\(5));

-- Location: FF_X58_Y53_N29
\U_GCD|controller|datapath|xreg|o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|xreg|o[6]~20_combout\,
	asdata => \~GND~combout\,
	sload => \U_GCD|controller|x_sel~combout\,
	ena => \U_GCD|controller|x_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|xreg|o\(6));

-- Location: FF_X57_Y53_N21
\U_GCD|controller|datapath|yreg|o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|yreg|o[6]~20_combout\,
	asdata => \~GND~combout\,
	sload => \U_GCD|controller|y_sel~combout\,
	ena => \U_GCD|controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|yreg|o\(6));

-- Location: LCCOMB_X59_Y53_N30
\U_GCD|controller|datapath|cmprtr|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|Equal0~3_combout\ = (\U_GCD|controller|datapath|yreg|o\(6) & (\U_GCD|controller|datapath|xreg|o\(6) & (\U_GCD|controller|datapath|yreg|o\(7) $ (!\U_GCD|controller|datapath|xreg|o\(7))))) # 
-- (!\U_GCD|controller|datapath|yreg|o\(6) & (!\U_GCD|controller|datapath|xreg|o\(6) & (\U_GCD|controller|datapath|yreg|o\(7) $ (!\U_GCD|controller|datapath|xreg|o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(6),
	datab => \U_GCD|controller|datapath|xreg|o\(6),
	datac => \U_GCD|controller|datapath|yreg|o\(7),
	datad => \U_GCD|controller|datapath|xreg|o\(7),
	combout => \U_GCD|controller|datapath|cmprtr|Equal0~3_combout\);

-- Location: LCCOMB_X59_Y53_N20
\U_GCD|controller|datapath|cmprtr|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|Equal0~2_combout\ = (\U_GCD|controller|datapath|yreg|o\(4) & (\U_GCD|controller|datapath|xreg|o\(4) & (\U_GCD|controller|datapath|xreg|o\(5) $ (!\U_GCD|controller|datapath|yreg|o\(5))))) # 
-- (!\U_GCD|controller|datapath|yreg|o\(4) & (!\U_GCD|controller|datapath|xreg|o\(4) & (\U_GCD|controller|datapath|xreg|o\(5) $ (!\U_GCD|controller|datapath|yreg|o\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(4),
	datab => \U_GCD|controller|datapath|xreg|o\(4),
	datac => \U_GCD|controller|datapath|xreg|o\(5),
	datad => \U_GCD|controller|datapath|yreg|o\(5),
	combout => \U_GCD|controller|datapath|cmprtr|Equal0~2_combout\);

-- Location: LCCOMB_X59_Y53_N26
\U_GCD|controller|datapath|cmprtr|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|Equal0~0_combout\ = (\U_GCD|controller|datapath|xreg|o\(0) & (\U_GCD|controller|datapath|yreg|o\(0) & (\U_GCD|controller|datapath|xreg|o\(1) $ (!\U_GCD|controller|datapath|yreg|o\(1))))) # 
-- (!\U_GCD|controller|datapath|xreg|o\(0) & (!\U_GCD|controller|datapath|yreg|o\(0) & (\U_GCD|controller|datapath|xreg|o\(1) $ (!\U_GCD|controller|datapath|yreg|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|xreg|o\(0),
	datab => \U_GCD|controller|datapath|xreg|o\(1),
	datac => \U_GCD|controller|datapath|yreg|o\(1),
	datad => \U_GCD|controller|datapath|yreg|o\(0),
	combout => \U_GCD|controller|datapath|cmprtr|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y53_N24
\U_GCD|controller|datapath|cmprtr|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|Equal0~1_combout\ = (\U_GCD|controller|datapath|yreg|o\(3) & (\U_GCD|controller|datapath|xreg|o\(3) & (\U_GCD|controller|datapath|yreg|o\(2) $ (!\U_GCD|controller|datapath|xreg|o\(2))))) # 
-- (!\U_GCD|controller|datapath|yreg|o\(3) & (!\U_GCD|controller|datapath|xreg|o\(3) & (\U_GCD|controller|datapath|yreg|o\(2) $ (!\U_GCD|controller|datapath|xreg|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(3),
	datab => \U_GCD|controller|datapath|xreg|o\(3),
	datac => \U_GCD|controller|datapath|yreg|o\(2),
	datad => \U_GCD|controller|datapath|xreg|o\(2),
	combout => \U_GCD|controller|datapath|cmprtr|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y53_N8
\U_GCD|controller|datapath|cmprtr|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|cmprtr|Equal0~4_combout\ = (\U_GCD|controller|datapath|cmprtr|Equal0~3_combout\ & (\U_GCD|controller|datapath|cmprtr|Equal0~2_combout\ & (\U_GCD|controller|datapath|cmprtr|Equal0~0_combout\ & 
-- \U_GCD|controller|datapath|cmprtr|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|cmprtr|Equal0~3_combout\,
	datab => \U_GCD|controller|datapath|cmprtr|Equal0~2_combout\,
	datac => \U_GCD|controller|datapath|cmprtr|Equal0~0_combout\,
	datad => \U_GCD|controller|datapath|cmprtr|Equal0~1_combout\,
	combout => \U_GCD|controller|datapath|cmprtr|Equal0~4_combout\);

-- Location: LCCOMB_X59_Y53_N28
\U_GCD|controller|x_sel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|x_sel~0_combout\ = (!\U_GCD|controller|datapath|cmprtr|Equal0~4_combout\ & (\U_GCD|controller|state.calc~q\ & !\U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|controller|datapath|cmprtr|Equal0~4_combout\,
	datac => \U_GCD|controller|state.calc~q\,
	datad => \U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\,
	combout => \U_GCD|controller|x_sel~0_combout\);

-- Location: FF_X59_Y53_N29
\U_GCD|controller|state.ldsubx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|x_sel~0_combout\,
	clrn => \button[0]~input_o\,
	ena => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|state.ldsubx~q\);

-- Location: LCCOMB_X59_Y53_N10
\U_GCD|controller|x_sel\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|x_sel~combout\ = (!\U_GCD|controller|state.ldsubx~q\ & (((\U_GCD|controller|datapath|cmprtr|Equal0~4_combout\) # (\U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\)) # (!\U_GCD|controller|state.calc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|state.ldsubx~q\,
	datab => \U_GCD|controller|state.calc~q\,
	datac => \U_GCD|controller|datapath|cmprtr|Equal0~4_combout\,
	datad => \U_GCD|controller|datapath|cmprtr|LessThan0~14_combout\,
	combout => \U_GCD|controller|x_sel~combout\);

-- Location: FF_X58_Y53_N17
\U_GCD|controller|datapath|xreg|o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|xreg|o[0]~8_combout\,
	asdata => \switch[5]~input_o\,
	sload => \U_GCD|controller|x_sel~combout\,
	ena => \U_GCD|controller|x_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|xreg|o\(0));

-- Location: LCCOMB_X57_Y53_N8
\U_GCD|controller|datapath|yreg|o[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|yreg|o[0]~8_combout\ = (\U_GCD|controller|datapath|yreg|o\(0) & ((GND) # (!\U_GCD|controller|datapath|xreg|o\(0)))) # (!\U_GCD|controller|datapath|yreg|o\(0) & (\U_GCD|controller|datapath|xreg|o\(0) $ (GND)))
-- \U_GCD|controller|datapath|yreg|o[0]~9\ = CARRY((\U_GCD|controller|datapath|yreg|o\(0)) # (!\U_GCD|controller|datapath|xreg|o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(0),
	datab => \U_GCD|controller|datapath|xreg|o\(0),
	datad => VCC,
	combout => \U_GCD|controller|datapath|yreg|o[0]~8_combout\,
	cout => \U_GCD|controller|datapath|yreg|o[0]~9\);

-- Location: IOIBUF_X51_Y54_N29
\switch[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: FF_X57_Y53_N9
\U_GCD|controller|datapath|yreg|o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|yreg|o[0]~8_combout\,
	asdata => \switch[0]~input_o\,
	sload => \U_GCD|controller|y_sel~combout\,
	ena => \U_GCD|controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|yreg|o\(0));

-- Location: LCCOMB_X58_Y53_N18
\U_GCD|controller|datapath|xreg|o[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|xreg|o[1]~10_combout\ = (\U_GCD|controller|datapath|yreg|o\(1) & ((\U_GCD|controller|datapath|xreg|o\(1) & (!\U_GCD|controller|datapath|xreg|o[0]~9\)) # (!\U_GCD|controller|datapath|xreg|o\(1) & 
-- ((\U_GCD|controller|datapath|xreg|o[0]~9\) # (GND))))) # (!\U_GCD|controller|datapath|yreg|o\(1) & ((\U_GCD|controller|datapath|xreg|o\(1) & (\U_GCD|controller|datapath|xreg|o[0]~9\ & VCC)) # (!\U_GCD|controller|datapath|xreg|o\(1) & 
-- (!\U_GCD|controller|datapath|xreg|o[0]~9\))))
-- \U_GCD|controller|datapath|xreg|o[1]~11\ = CARRY((\U_GCD|controller|datapath|yreg|o\(1) & ((!\U_GCD|controller|datapath|xreg|o[0]~9\) # (!\U_GCD|controller|datapath|xreg|o\(1)))) # (!\U_GCD|controller|datapath|yreg|o\(1) & 
-- (!\U_GCD|controller|datapath|xreg|o\(1) & !\U_GCD|controller|datapath|xreg|o[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(1),
	datab => \U_GCD|controller|datapath|xreg|o\(1),
	datad => VCC,
	cin => \U_GCD|controller|datapath|xreg|o[0]~9\,
	combout => \U_GCD|controller|datapath|xreg|o[1]~10_combout\,
	cout => \U_GCD|controller|datapath|xreg|o[1]~11\);

-- Location: IOIBUF_X54_Y54_N15
\switch[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: FF_X58_Y53_N19
\U_GCD|controller|datapath|xreg|o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|xreg|o[1]~10_combout\,
	asdata => \switch[6]~input_o\,
	sload => \U_GCD|controller|x_sel~combout\,
	ena => \U_GCD|controller|x_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|xreg|o\(1));

-- Location: LCCOMB_X57_Y53_N10
\U_GCD|controller|datapath|yreg|o[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|yreg|o[1]~10_combout\ = (\U_GCD|controller|datapath|yreg|o\(1) & ((\U_GCD|controller|datapath|xreg|o\(1) & (!\U_GCD|controller|datapath|yreg|o[0]~9\)) # (!\U_GCD|controller|datapath|xreg|o\(1) & 
-- (\U_GCD|controller|datapath|yreg|o[0]~9\ & VCC)))) # (!\U_GCD|controller|datapath|yreg|o\(1) & ((\U_GCD|controller|datapath|xreg|o\(1) & ((\U_GCD|controller|datapath|yreg|o[0]~9\) # (GND))) # (!\U_GCD|controller|datapath|xreg|o\(1) & 
-- (!\U_GCD|controller|datapath|yreg|o[0]~9\))))
-- \U_GCD|controller|datapath|yreg|o[1]~11\ = CARRY((\U_GCD|controller|datapath|yreg|o\(1) & (\U_GCD|controller|datapath|xreg|o\(1) & !\U_GCD|controller|datapath|yreg|o[0]~9\)) # (!\U_GCD|controller|datapath|yreg|o\(1) & 
-- ((\U_GCD|controller|datapath|xreg|o\(1)) # (!\U_GCD|controller|datapath|yreg|o[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(1),
	datab => \U_GCD|controller|datapath|xreg|o\(1),
	datad => VCC,
	cin => \U_GCD|controller|datapath|yreg|o[0]~9\,
	combout => \U_GCD|controller|datapath|yreg|o[1]~10_combout\,
	cout => \U_GCD|controller|datapath|yreg|o[1]~11\);

-- Location: IOIBUF_X51_Y54_N22
\switch[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: FF_X57_Y53_N11
\U_GCD|controller|datapath|yreg|o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|yreg|o[1]~10_combout\,
	asdata => \switch[1]~input_o\,
	sload => \U_GCD|controller|y_sel~combout\,
	ena => \U_GCD|controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|yreg|o\(1));

-- Location: IOIBUF_X58_Y54_N29
\switch[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: FF_X58_Y53_N21
\U_GCD|controller|datapath|xreg|o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|xreg|o[2]~12_combout\,
	asdata => \switch[7]~input_o\,
	sload => \U_GCD|controller|x_sel~combout\,
	ena => \U_GCD|controller|x_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|xreg|o\(2));

-- Location: LCCOMB_X57_Y53_N12
\U_GCD|controller|datapath|yreg|o[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|yreg|o[2]~12_combout\ = ((\U_GCD|controller|datapath|yreg|o\(2) $ (\U_GCD|controller|datapath|xreg|o\(2) $ (\U_GCD|controller|datapath|yreg|o[1]~11\)))) # (GND)
-- \U_GCD|controller|datapath|yreg|o[2]~13\ = CARRY((\U_GCD|controller|datapath|yreg|o\(2) & ((!\U_GCD|controller|datapath|yreg|o[1]~11\) # (!\U_GCD|controller|datapath|xreg|o\(2)))) # (!\U_GCD|controller|datapath|yreg|o\(2) & 
-- (!\U_GCD|controller|datapath|xreg|o\(2) & !\U_GCD|controller|datapath|yreg|o[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|yreg|o\(2),
	datab => \U_GCD|controller|datapath|xreg|o\(2),
	datad => VCC,
	cin => \U_GCD|controller|datapath|yreg|o[1]~11\,
	combout => \U_GCD|controller|datapath|yreg|o[2]~12_combout\,
	cout => \U_GCD|controller|datapath|yreg|o[2]~13\);

-- Location: IOIBUF_X51_Y54_N1
\switch[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: FF_X57_Y53_N13
\U_GCD|controller|datapath|yreg|o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|yreg|o[2]~12_combout\,
	asdata => \switch[2]~input_o\,
	sload => \U_GCD|controller|y_sel~combout\,
	ena => \U_GCD|controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|yreg|o\(2));

-- Location: IOIBUF_X54_Y54_N29
\switch[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: FF_X57_Y53_N15
\U_GCD|controller|datapath|yreg|o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|yreg|o[3]~14_combout\,
	asdata => \switch[3]~input_o\,
	sload => \U_GCD|controller|y_sel~combout\,
	ena => \U_GCD|controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|yreg|o\(3));

-- Location: IOIBUF_X56_Y54_N1
\switch[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: FF_X58_Y53_N23
\U_GCD|controller|datapath|xreg|o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|xreg|o[3]~14_combout\,
	asdata => \switch[8]~input_o\,
	sload => \U_GCD|controller|x_sel~combout\,
	ena => \U_GCD|controller|x_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|xreg|o\(3));

-- Location: LCCOMB_X59_Y53_N22
\U_GCD|controller|datapath|outreg|o[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|outreg|o[3]~feeder_combout\ = \U_GCD|controller|datapath|xreg|o\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GCD|controller|datapath|xreg|o\(3),
	combout => \U_GCD|controller|datapath|outreg|o[3]~feeder_combout\);

-- Location: FF_X59_Y53_N23
\U_GCD|controller|datapath|outreg|o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|outreg|o[3]~feeder_combout\,
	ena => \U_GCD|controller|state.ldoutput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|outreg|o\(3));

-- Location: LCCOMB_X59_Y53_N16
\U_GCD|controller|datapath|outreg|o[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|outreg|o[2]~feeder_combout\ = \U_GCD|controller|datapath|xreg|o\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GCD|controller|datapath|xreg|o\(2),
	combout => \U_GCD|controller|datapath|outreg|o[2]~feeder_combout\);

-- Location: FF_X59_Y53_N17
\U_GCD|controller|datapath|outreg|o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|outreg|o[2]~feeder_combout\,
	ena => \U_GCD|controller|state.ldoutput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|outreg|o\(2));

-- Location: LCCOMB_X59_Y53_N12
\U_GCD|controller|datapath|outreg|o[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|outreg|o[0]~feeder_combout\ = \U_GCD|controller|datapath|xreg|o\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GCD|controller|datapath|xreg|o\(0),
	combout => \U_GCD|controller|datapath|outreg|o[0]~feeder_combout\);

-- Location: FF_X59_Y53_N13
\U_GCD|controller|datapath|outreg|o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|outreg|o[0]~feeder_combout\,
	ena => \U_GCD|controller|state.ldoutput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|outreg|o\(0));

-- Location: LCCOMB_X59_Y53_N14
\U_GCD|controller|datapath|outreg|o[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|outreg|o[1]~feeder_combout\ = \U_GCD|controller|datapath|xreg|o\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GCD|controller|datapath|xreg|o\(1),
	combout => \U_GCD|controller|datapath|outreg|o[1]~feeder_combout\);

-- Location: FF_X59_Y53_N15
\U_GCD|controller|datapath|outreg|o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|outreg|o[1]~feeder_combout\,
	ena => \U_GCD|controller|state.ldoutput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|outreg|o\(1));

-- Location: LCCOMB_X61_Y53_N28
\U_LED0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux6~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(0) & ((\U_GCD|controller|datapath|outreg|o\(3)) # (\U_GCD|controller|datapath|outreg|o\(2) $ (\U_GCD|controller|datapath|outreg|o\(1))))) # (!\U_GCD|controller|datapath|outreg|o\(0) & 
-- ((\U_GCD|controller|datapath|outreg|o\(1)) # (\U_GCD|controller|datapath|outreg|o\(3) $ (\U_GCD|controller|datapath|outreg|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(3),
	datab => \U_GCD|controller|datapath|outreg|o\(2),
	datac => \U_GCD|controller|datapath|outreg|o\(0),
	datad => \U_GCD|controller|datapath|outreg|o\(1),
	combout => \U_LED0|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y53_N14
\U_LED0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux5~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(2) & (\U_GCD|controller|datapath|outreg|o\(0) & (\U_GCD|controller|datapath|outreg|o\(3) $ (\U_GCD|controller|datapath|outreg|o\(1))))) # (!\U_GCD|controller|datapath|outreg|o\(2) & 
-- (!\U_GCD|controller|datapath|outreg|o\(3) & ((\U_GCD|controller|datapath|outreg|o\(0)) # (\U_GCD|controller|datapath|outreg|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(3),
	datab => \U_GCD|controller|datapath|outreg|o\(2),
	datac => \U_GCD|controller|datapath|outreg|o\(0),
	datad => \U_GCD|controller|datapath|outreg|o\(1),
	combout => \U_LED0|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y53_N24
\U_LED0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux4~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(1) & (!\U_GCD|controller|datapath|outreg|o\(3) & ((\U_GCD|controller|datapath|outreg|o\(0))))) # (!\U_GCD|controller|datapath|outreg|o\(1) & ((\U_GCD|controller|datapath|outreg|o\(2) & 
-- (!\U_GCD|controller|datapath|outreg|o\(3))) # (!\U_GCD|controller|datapath|outreg|o\(2) & ((\U_GCD|controller|datapath|outreg|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(3),
	datab => \U_GCD|controller|datapath|outreg|o\(2),
	datac => \U_GCD|controller|datapath|outreg|o\(0),
	datad => \U_GCD|controller|datapath|outreg|o\(1),
	combout => \U_LED0|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y53_N10
\U_LED0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux3~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(0) & ((\U_GCD|controller|datapath|outreg|o\(2) $ (!\U_GCD|controller|datapath|outreg|o\(1))))) # (!\U_GCD|controller|datapath|outreg|o\(0) & ((\U_GCD|controller|datapath|outreg|o\(3) & 
-- (!\U_GCD|controller|datapath|outreg|o\(2) & \U_GCD|controller|datapath|outreg|o\(1))) # (!\U_GCD|controller|datapath|outreg|o\(3) & (\U_GCD|controller|datapath|outreg|o\(2) & !\U_GCD|controller|datapath|outreg|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(3),
	datab => \U_GCD|controller|datapath|outreg|o\(2),
	datac => \U_GCD|controller|datapath|outreg|o\(0),
	datad => \U_GCD|controller|datapath|outreg|o\(1),
	combout => \U_LED0|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y53_N12
\U_LED0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux2~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(3) & (\U_GCD|controller|datapath|outreg|o\(2) & ((\U_GCD|controller|datapath|outreg|o\(1)) # (!\U_GCD|controller|datapath|outreg|o\(0))))) # (!\U_GCD|controller|datapath|outreg|o\(3) & 
-- (!\U_GCD|controller|datapath|outreg|o\(2) & (!\U_GCD|controller|datapath|outreg|o\(0) & \U_GCD|controller|datapath|outreg|o\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(3),
	datab => \U_GCD|controller|datapath|outreg|o\(2),
	datac => \U_GCD|controller|datapath|outreg|o\(0),
	datad => \U_GCD|controller|datapath|outreg|o\(1),
	combout => \U_LED0|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y53_N22
\U_LED0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux1~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(3) & ((\U_GCD|controller|datapath|outreg|o\(0) & ((\U_GCD|controller|datapath|outreg|o\(1)))) # (!\U_GCD|controller|datapath|outreg|o\(0) & (\U_GCD|controller|datapath|outreg|o\(2))))) # 
-- (!\U_GCD|controller|datapath|outreg|o\(3) & (\U_GCD|controller|datapath|outreg|o\(2) & (\U_GCD|controller|datapath|outreg|o\(0) $ (\U_GCD|controller|datapath|outreg|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(3),
	datab => \U_GCD|controller|datapath|outreg|o\(2),
	datac => \U_GCD|controller|datapath|outreg|o\(0),
	datad => \U_GCD|controller|datapath|outreg|o\(1),
	combout => \U_LED0|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y53_N0
\U_LED0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux0~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(2) & (!\U_GCD|controller|datapath|outreg|o\(1) & (\U_GCD|controller|datapath|outreg|o\(3) $ (!\U_GCD|controller|datapath|outreg|o\(0))))) # (!\U_GCD|controller|datapath|outreg|o\(2) & 
-- (\U_GCD|controller|datapath|outreg|o\(0) & (\U_GCD|controller|datapath|outreg|o\(3) $ (!\U_GCD|controller|datapath|outreg|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(2),
	datab => \U_GCD|controller|datapath|outreg|o\(3),
	datac => \U_GCD|controller|datapath|outreg|o\(0),
	datad => \U_GCD|controller|datapath|outreg|o\(1),
	combout => \U_LED0|Mux0~0_combout\);

-- Location: FF_X59_Y53_N21
\U_GCD|controller|datapath|outreg|o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|controller|datapath|xreg|o\(5),
	sload => VCC,
	ena => \U_GCD|controller|state.ldoutput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|outreg|o\(5));

-- Location: LCCOMB_X59_Y53_N2
\U_GCD|controller|datapath|outreg|o[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|outreg|o[4]~feeder_combout\ = \U_GCD|controller|datapath|xreg|o\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GCD|controller|datapath|xreg|o\(4),
	combout => \U_GCD|controller|datapath|outreg|o[4]~feeder_combout\);

-- Location: FF_X59_Y53_N3
\U_GCD|controller|datapath|outreg|o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|outreg|o[4]~feeder_combout\,
	ena => \U_GCD|controller|state.ldoutput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|outreg|o\(4));

-- Location: LCCOMB_X59_Y53_N6
\U_GCD|controller|datapath|outreg|o[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|outreg|o[6]~feeder_combout\ = \U_GCD|controller|datapath|xreg|o\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GCD|controller|datapath|xreg|o\(6),
	combout => \U_GCD|controller|datapath|outreg|o[6]~feeder_combout\);

-- Location: FF_X59_Y53_N7
\U_GCD|controller|datapath|outreg|o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|outreg|o[6]~feeder_combout\,
	ena => \U_GCD|controller|state.ldoutput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|outreg|o\(6));

-- Location: LCCOMB_X59_Y53_N4
\U_GCD|controller|datapath|outreg|o[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|controller|datapath|outreg|o[7]~feeder_combout\ = \U_GCD|controller|datapath|xreg|o\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GCD|controller|datapath|xreg|o\(7),
	combout => \U_GCD|controller|datapath|outreg|o[7]~feeder_combout\);

-- Location: FF_X59_Y53_N5
\U_GCD|controller|datapath|outreg|o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|controller|datapath|outreg|o[7]~feeder_combout\,
	ena => \U_GCD|controller|state.ldoutput~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|controller|datapath|outreg|o\(7));

-- Location: LCCOMB_X61_Y53_N4
\U_LED1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux6~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(4) & ((\U_GCD|controller|datapath|outreg|o\(7)) # (\U_GCD|controller|datapath|outreg|o\(5) $ (\U_GCD|controller|datapath|outreg|o\(6))))) # (!\U_GCD|controller|datapath|outreg|o\(4) & 
-- ((\U_GCD|controller|datapath|outreg|o\(5)) # (\U_GCD|controller|datapath|outreg|o\(6) $ (\U_GCD|controller|datapath|outreg|o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(5),
	datab => \U_GCD|controller|datapath|outreg|o\(4),
	datac => \U_GCD|controller|datapath|outreg|o\(6),
	datad => \U_GCD|controller|datapath|outreg|o\(7),
	combout => \U_LED1|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y53_N30
\U_LED1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux5~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(5) & (!\U_GCD|controller|datapath|outreg|o\(7) & ((\U_GCD|controller|datapath|outreg|o\(4)) # (!\U_GCD|controller|datapath|outreg|o\(6))))) # (!\U_GCD|controller|datapath|outreg|o\(5) & 
-- (\U_GCD|controller|datapath|outreg|o\(4) & (\U_GCD|controller|datapath|outreg|o\(6) $ (!\U_GCD|controller|datapath|outreg|o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(5),
	datab => \U_GCD|controller|datapath|outreg|o\(4),
	datac => \U_GCD|controller|datapath|outreg|o\(6),
	datad => \U_GCD|controller|datapath|outreg|o\(7),
	combout => \U_LED1|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y53_N0
\U_LED1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux4~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(5) & (\U_GCD|controller|datapath|outreg|o\(4) & ((!\U_GCD|controller|datapath|outreg|o\(7))))) # (!\U_GCD|controller|datapath|outreg|o\(5) & ((\U_GCD|controller|datapath|outreg|o\(6) & 
-- ((!\U_GCD|controller|datapath|outreg|o\(7)))) # (!\U_GCD|controller|datapath|outreg|o\(6) & (\U_GCD|controller|datapath|outreg|o\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(5),
	datab => \U_GCD|controller|datapath|outreg|o\(4),
	datac => \U_GCD|controller|datapath|outreg|o\(6),
	datad => \U_GCD|controller|datapath|outreg|o\(7),
	combout => \U_LED1|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y53_N18
\U_LED1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux3~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(4) & (\U_GCD|controller|datapath|outreg|o\(5) $ ((!\U_GCD|controller|datapath|outreg|o\(6))))) # (!\U_GCD|controller|datapath|outreg|o\(4) & ((\U_GCD|controller|datapath|outreg|o\(5) & 
-- (!\U_GCD|controller|datapath|outreg|o\(6) & \U_GCD|controller|datapath|outreg|o\(7))) # (!\U_GCD|controller|datapath|outreg|o\(5) & (\U_GCD|controller|datapath|outreg|o\(6) & !\U_GCD|controller|datapath|outreg|o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(5),
	datab => \U_GCD|controller|datapath|outreg|o\(4),
	datac => \U_GCD|controller|datapath|outreg|o\(6),
	datad => \U_GCD|controller|datapath|outreg|o\(7),
	combout => \U_LED1|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y53_N20
\U_LED1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux2~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(6) & (\U_GCD|controller|datapath|outreg|o\(7) & ((\U_GCD|controller|datapath|outreg|o\(5)) # (!\U_GCD|controller|datapath|outreg|o\(4))))) # (!\U_GCD|controller|datapath|outreg|o\(6) & 
-- (\U_GCD|controller|datapath|outreg|o\(5) & (!\U_GCD|controller|datapath|outreg|o\(4) & !\U_GCD|controller|datapath|outreg|o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(5),
	datab => \U_GCD|controller|datapath|outreg|o\(4),
	datac => \U_GCD|controller|datapath|outreg|o\(6),
	datad => \U_GCD|controller|datapath|outreg|o\(7),
	combout => \U_LED1|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y53_N6
\U_LED1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux1~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(5) & ((\U_GCD|controller|datapath|outreg|o\(4) & ((\U_GCD|controller|datapath|outreg|o\(7)))) # (!\U_GCD|controller|datapath|outreg|o\(4) & (\U_GCD|controller|datapath|outreg|o\(6))))) # 
-- (!\U_GCD|controller|datapath|outreg|o\(5) & (\U_GCD|controller|datapath|outreg|o\(6) & (\U_GCD|controller|datapath|outreg|o\(4) $ (\U_GCD|controller|datapath|outreg|o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(5),
	datab => \U_GCD|controller|datapath|outreg|o\(4),
	datac => \U_GCD|controller|datapath|outreg|o\(6),
	datad => \U_GCD|controller|datapath|outreg|o\(7),
	combout => \U_LED1|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y53_N8
\U_LED1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux0~0_combout\ = (\U_GCD|controller|datapath|outreg|o\(6) & (!\U_GCD|controller|datapath|outreg|o\(5) & (\U_GCD|controller|datapath|outreg|o\(4) $ (!\U_GCD|controller|datapath|outreg|o\(7))))) # (!\U_GCD|controller|datapath|outreg|o\(6) & 
-- (\U_GCD|controller|datapath|outreg|o\(4) & (\U_GCD|controller|datapath|outreg|o\(5) $ (!\U_GCD|controller|datapath|outreg|o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|controller|datapath|outreg|o\(5),
	datab => \U_GCD|controller|datapath|outreg|o\(4),
	datac => \U_GCD|controller|datapath|outreg|o\(6),
	datad => \U_GCD|controller|datapath|outreg|o\(7),
	combout => \U_LED1|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led0(6) <= \led0[6]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(0) <= \led0[0]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(0) <= \led1[0]~output_o\;
END structure;


