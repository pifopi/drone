LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ClkDiv IS
	PORT (
		Clk100 : IN STD_LOGIC;
		Reset : IN STD_LOGIC;
		Clk25 : OUT STD_LOGIC
	);
END ClkDiv;

ARCHITECTURE comportementale OF ClkDiv IS
	SIGNAL compteur : STD_LOGIC_VECTOR (3 DOWNTO 0) := "0000";
BEGIN
	PROCESS (Reset, Clk100)
	BEGIN
		IF Reset = '0' THEN
			compteur <= "0000";
			Clk25 <= '0';
		ELSIF Clk100'event THEN
			IF compteur = 3 THEN
				Clk25 <= '1';
			ELSIF compteur = 7 THEN
				Clk25 <= '0';
				compteur <= "0000";
			END IF;
			compteur <= compteur + 1; -- L'incrémentation n'est effective que APRES le process
		END IF;
	END PROCESS;
END;
