LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Tempo_pause IS
	PORT (
		RAZ_Tempo_Pause : IN STD_LOGIC := '1';
		Update_Tempo_Pause : IN STD_LOGIC := '0';
		Fin_Tempo_Pause : OUT STD_LOGIC := '0';
		Clk25 : IN STD_LOGIC := '0';
		Reset : IN STD_LOGIC := '1'
	);
END Tempo_pause;

ARCHITECTURE comportementale OF Tempo_pause IS
	SIGNAL compteur : STD_LOGIC_VECTOR (9 DOWNTO 0) := "0000000000";
BEGIN
	PROCESS (Clk25)
	BEGIN
		IF clk25'event and clk25 = '1' THEN
			IF Reset = '0' THEN
				compteur <= "0000000000";
				Fin_Tempo_Pause <= '0';
			ELSIF RAZ_Tempo_Pause = '1' THEN
				compteur <= "0000000000";
			ELSIF compteur = "1111111111" THEN
				Fin_Tempo_Pause <= '1';
			ELSIF Update_Tempo_Pause = '1' THEN
				compteur <= compteur + 1;
				Fin_Tempo_Pause <= '0';
			END IF;
		END IF;
	END PROCESS;
END;
