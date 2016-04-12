LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Move_tb IS
END Move_tb;

ARCHITECTURE comportementale OF Move_tb IS
	COMPONENT Move
		PORT (
			QA : IN STD_LOGIC;
			QB : IN STD_LOGIC;
			Clk25 : IN STD_LOGIC;
			Reset : IN STD_LOGIC;
			Rot_Left : OUT STD_LOGIC;
			Rot_Right : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL QA : STD_LOGIC := '0';
	SIGNAL QB : STD_LOGIC := '0';
	SIGNAL Clk25 : STD_LOGIC := '0';
	SIGNAL Reset : STD_LOGIC := '1';
	SIGNAL Rot_Left : STD_LOGIC := '0';
	SIGNAL Rot_Right : STD_LOGIC := '0';

	CONSTANT clk_period : time := 40 ns;
BEGIN
	IP_Move : Move PORT MAP (
			QA => QA,
			QB => QB,
			Clk25 => Clk25,
			Reset => Reset,
			Rot_Left => Rot_Left,
			Rot_Right => Rot_Right
		);

	PROCESS
	BEGIN
		Clk25 <= '0';
		wait for clk_period / 2;
		Clk25 <= '1';
		wait for clk_period / 2;
	END PROCESS;

	PROCESS
	BEGIN
		wait for 7 ns;
		Reset <= '1';
		QA <= '1';
		QB <= '0';
		wait for 48 ns;
		QA <= '1';
		QB <= '1';
		wait for 48 ns;
		QA <= '0';
		QB <= '1';
		wait for 48 ns;
		QA <= '0';
		QB <= '0';
		
		
		wait for 48 ns;
		QA <= '0';
		QB <= '1';
		wait for 48 ns;
		QA <= '1';
		QB <= '1';
		wait for 48 ns;
		QA <= '1';
		QB <= '0';
		wait for 48 ns;
		QA <= '0';
		QB <= '0';
		
		wait for 7 ns;
		Reset <= '0';
	END PROCESS;
END;
