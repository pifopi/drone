LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Timer_Lost IS
	PORT (
		Load_Timer_Lost : IN STD_LOGIC := '0';
		Update_Timer_Lost : IN STD_LOGIC := '0';
		Game_Lost : OUT STD_LOGIC := '0';
		Clk25 : IN STD_LOGIC := '0';
		Reset : IN STD_LOGIC := '1';
		Timer_Lost : out STD_LOGIC_VECTOR (5 DOWNTO 0) := "000000"
	);
END Timer_Lost;

ARCHITECTURE comportementale OF Timer_Lost IS
	
Signal Timer : STD_LOGIC_VECTOR (5 DOWNTO 0) := "000000";
BEGIN
	PROCESS (Clk25)
	BEGIN
		IF clk25'event and clk25 = '1' THEN
			IF Reset = '0' THEN
				Timer <= "000000";
				Game_Lost <= '0';

			ELSIF Load_Timer_Lost = '1' THEN
				Timer <= "111111";
				Game_Lost <='1';
				

			ELSIF Timer = "000000" THEN
				Game_Lost <='0';

			ELSIF Update_Timer_Lost = '1' THEN
				Timer <= Timer- 1;
				
			END IF;
		END IF;
	END PROCESS;
 Timer_Lost <= Timer;
END;
