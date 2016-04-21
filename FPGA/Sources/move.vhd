LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Move IS
	PORT (
		QA : IN STD_LOGIC;
		QB : IN STD_LOGIC;
		Clk25 : IN STD_LOGIC;
		Reset : IN STD_LOGIC;
		Rot_Left : OUT STD_LOGIC;
		Rot_Right : OUT STD_LOGIC
	);
END Move;

ARCHITECTURE comportementale OF Move IS
	TYPE etats IS (un, deux, trois, quatre, cinq, six);

	SIGNAL etat_present : etats := un;
	SIGNAL etat_prochain : etats := un;

BEGIN
	PROCESS (etat_present, QA, QB, Reset)
	BEGIN
		IF Reset = '0' THEN
			etat_prochain <= un;
			Rot_Left <= '0';
			Rot_Right <= '0';

		ELSE
			CASE etat_present IS
				WHEN un =>
					Rot_Left <= '0';
					Rot_Right <= '0';
					IF QA = '1' AND QB = '0' THEN
						etat_prochain <= deux;
					ELSIF QA = '1' AND QB = '1' THEN
						etat_prochain <= trois;
					ELSIF QA = '0' THEN
						etat_prochain <= un;
					END IF;

				WHEN deux =>
					Rot_Left <= '1';
					Rot_Right <= '0';
					etat_prochain <= quatre;

				WHEN trois =>
					Rot_Left <= '0';
					Rot_Right <= '1';
					etat_prochain <= quatre;

				WHEN quatre =>
					Rot_Left <= '0';
					Rot_Right <= '0';
					IF QA = '0' AND QB = '1' THEN
						etat_prochain <= cinq;
					ELSIF QA = '0' AND QB = '0' THEN
						etat_prochain <= six;
					ELSIF QA = '1' THEN
						etat_prochain <= quatre;
					END IF;

				WHEN cinq =>
					Rot_Left <= '1';
					Rot_Right <= '0';
					etat_prochain <= un;

				WHEN six =>
					Rot_Left <= '0';
					Rot_Right <= '1';
					etat_prochain <= un;

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
