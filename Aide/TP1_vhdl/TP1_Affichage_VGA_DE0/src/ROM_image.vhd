-- megafunction wizard: %ROM: 1-PORT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altsyncram 

-- ============================================================
-- File Name: ROM_image.vhd
-- Megafunction Name(s):
-- 			altsyncram
--
-- Simulation Library Files(s):
-- 			altera_mf
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 7.2 Build 203 02/05/2008 SP 2 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2007 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY ROM_image IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		address		: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
		clken		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
	);
END ROM_image;


ARCHITECTURE SYN OF rom_image IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (2 DOWNTO 0);



	COMPONENT altsyncram
	GENERIC (
		address_aclr_a		: STRING;
		init_file		: STRING;
		intended_device_family		: STRING;
		lpm_hint		: STRING;
		lpm_type		: STRING;
		numwords_a		: NATURAL;
		operation_mode		: STRING;
		outdata_aclr_a		: STRING;
		outdata_reg_a		: STRING;
		widthad_a		: NATURAL;
		width_a		: NATURAL;
		width_byteena_a		: NATURAL
	);
	PORT (
			clocken0	: IN STD_LOGIC ;
			aclr0	: IN STD_LOGIC ;
			clock0	: IN STD_LOGIC ;
			address_a	: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
			q_a	: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	q    <= sub_wire0(2 DOWNTO 0);

	altsyncram_component : altsyncram
	GENERIC MAP (
		address_aclr_a => "CLEAR0",
		init_file => "display.mif",
		intended_device_family => "Cyclone",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		numwords_a => 19200,
		operation_mode => "ROM",
		outdata_aclr_a => "CLEAR0",
		outdata_reg_a => "CLOCK0",
		widthad_a => 15,
		width_a => 3,
		width_byteena_a => 1
	)
	PORT MAP (
		clocken0 => clken,
		aclr0 => aclr,
		clock0 => clock,
		address_a => address,
		q_a => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
-- Retrieval info: PRIVATE: AclrAddr NUMERIC "1"
-- Retrieval info: PRIVATE: AclrByte NUMERIC "0"
-- Retrieval info: PRIVATE: AclrOutput NUMERIC "1"
-- Retrieval info: PRIVATE: BYTE_ENABLE NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
-- Retrieval info: PRIVATE: BlankMemory NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "1"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "1"
-- Retrieval info: PRIVATE: Clken NUMERIC "1"
-- Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0"
-- Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_A"
-- Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone"
-- Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
-- Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
-- Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
-- Retrieval info: PRIVATE: MIFfilename STRING "display.mif"
-- Retrieval info: PRIVATE: NUMWORDS_A NUMERIC "19200"
-- Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
-- Retrieval info: PRIVATE: RegAddr NUMERIC "1"
-- Retrieval info: PRIVATE: RegOutput NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: SingleClock NUMERIC "1"
-- Retrieval info: PRIVATE: UseDQRAM NUMERIC "0"
-- Retrieval info: PRIVATE: WidthAddr NUMERIC "15"
-- Retrieval info: PRIVATE: WidthData NUMERIC "3"
-- Retrieval info: PRIVATE: rden NUMERIC "0"
-- Retrieval info: CONSTANT: ADDRESS_ACLR_A STRING "CLEAR0"
-- Retrieval info: CONSTANT: INIT_FILE STRING "display.mif"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone"
-- Retrieval info: CONSTANT: LPM_HINT STRING "ENABLE_RUNTIME_MOD=NO"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
-- Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "19200"
-- Retrieval info: CONSTANT: OPERATION_MODE STRING "ROM"
-- Retrieval info: CONSTANT: OUTDATA_ACLR_A STRING "CLEAR0"
-- Retrieval info: CONSTANT: OUTDATA_REG_A STRING "CLOCK0"
-- Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "15"
-- Retrieval info: CONSTANT: WIDTH_A NUMERIC "3"
-- Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
-- Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL aclr
-- Retrieval info: USED_PORT: address 0 0 15 0 INPUT NODEFVAL address[14..0]
-- Retrieval info: USED_PORT: clken 0 0 0 0 INPUT NODEFVAL clken
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
-- Retrieval info: USED_PORT: q 0 0 3 0 OUTPUT NODEFVAL q[2..0]
-- Retrieval info: CONNECT: @address_a 0 0 15 0 address 0 0 15 0
-- Retrieval info: CONNECT: q 0 0 3 0 @q_a 0 0 3 0
-- Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @clocken0 0 0 0 0 clken 0 0 0 0
-- Retrieval info: CONNECT: @aclr0 0 0 0 0 aclr 0 0 0 0
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL ROM_image.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ROM_image.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ROM_image.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ROM_image.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ROM_image_inst.vhd FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ROM_image_waveforms.html TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ROM_image_wave*.jpg FALSE
-- Retrieval info: LIB_FILE: altera_mf
