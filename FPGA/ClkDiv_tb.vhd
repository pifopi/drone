LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ClkDiv_tb IS
END ClkDiv_tb;

ARCHITECTURE comportementale OF ClkDiv_tb IS
	COMPONENT ClkDiv
		PORT (
			Clk100 : IN STD_LOGIC;
			Reset : IN STD_LOGIC;
			Clk25 : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL Clk100 : STD_LOGIC := '0';
	SIGNAL Reset : STD_LOGIC := '1';
	SIGNAL Clk25 : STD_LOGIC := '0';

	CONSTANT clk_period : time := 10 ns;

BEGIN
	Clock : ClkDiv PORT MAP (
		Clk100 => Clk100,
		Reset => Reset,
		Clk25 => Clk25
	);

	PROCESS
	BEGIN
		Clk100 <= '0';
		wait for clk_period / 2;
		Clk100 <= '1';
		wait for clk_period / 2;
	END PROCESS;

	PROCESS
	BEGIN
		wait for 307 ns;
		Reset <= '1';
		wait for 57 ns;
		Reset <= '0';
	END PROCESS;
END;
