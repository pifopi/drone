LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY game_mgr IS
	PORT (
		Game_Rqt : IN STD_LOGIC;
		Reset : IN STD_LOGIC;
		Clk25 : IN STD_LOGIC;
		Game_Type : OUT STD_LOGIC
	);
END game_mgr;

ARCHITECTURE comportementale OF game_mgr IS
	TYPE etats IS (un, deux, trois, quatre);

	SIGNAL etat_present : etats := un;
	SIGNAL etat_prochain : etats := un;

BEGIN
	PROCESS (etat_present, Game_Rqt, Reset)
	BEGIN
		IF Reset = '0' THEN
			etat_prochain <= un;
			Game_Type <= '0';
		ELSE
			CASE etat_present IS
				WHEN un =>
					Game_Type <= '0';
					IF Game_Rqt = '1' THEN
						etat_prochain <= deux;
					ELSE
						etat_prochain <= un;
					END IF;

				WHEN deux =>
					Game_Type <= '1';
					IF Game_Rqt = '1' THEN
						etat_prochain <= deux;
					ELSE
						etat_prochain <= trois;
					END IF;

				WHEN trois =>
					Game_Type <= '1';
					IF Game_Rqt = '0' THEN
						etat_prochain <= trois;
					ELSE
						etat_prochain <= quatre;
					END IF;


				WHEN quatre =>
					Game_Type <= '0';
					IF Game_Rqt = '1' THEN
						etat_prochain <= quatre;
					ELSE
						etat_prochain <= un;
					END IF;
			END CASE;
		END IF;
	END PROCESS;

process (clk25)
		BEGIN
			IF clk25' EVENT and  clk25 = '1' THEN
				etat_present <= etat_prochain;
			end if;
	end process;
END;


