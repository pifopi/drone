LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ClkDiv IS
	PORT (
		Reset : IN STD_LOGIC := '1';
		Clk100 : IN STD_LOGIC := '0';
		Clk25 : OUT STD_LOGIC := '0'
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
		ELSIF Clk100'event and Clk100 = '1' THEN
			IF compteur = "0010" THEN
				Clk25 <= '1';
				compteur <= compteur + 1;
			ELSIF compteur = "0100" THEN
				Clk25 <= '0';
				compteur <= "0001";
			ELSE
				compteur <= compteur + 1;
			END IF;
		END IF;
	END PROCESS;
END;
