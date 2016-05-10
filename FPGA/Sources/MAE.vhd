LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY MAE IS
	PORT (
		pause_rqt : IN STD_LOGIC;
		endFrame : IN STD_LOGIC;
		lost : IN STD_LOGIC;
		no_brick : IN STD_LOGIC;
		Reset : IN STD_LOGIC;
		Clk25 : IN STD_LOGIC;
		Timer_Lost : IN STD_LOGIC_VECTOR (5 downto 0);
		RAZ_tempo_pause : OUT STD_LOGIC;
		update_tempo_pause : OUT STD_LOGIC;
		load_timer_lost : OUT STD_LOGIC;
		update_timer_lost : OUT STD_LOGIC;
		pause : OUT STD_LOGIC;
		brick_win : OUT STD_LOGIC
	);
END MAE;

ARCHITECTURE comportementale OF MAE IS
	TYPE etats IS (un, deux, trois, quatre, cinq, six, sept);

	SIGNAL etat_present : etats := un;
	SIGNAL etat_prochain : etats := un;
	SIGNAL precFrame : STD_LOGIC := '0';

BEGIN
	PROCESS (etat_present, pause_rqt, endFrame, lost, no_brick, Reset)
	BEGIN
		IF Reset = '0' THEN
			etat_prochain <= un;
			RAZ_tempo_pause <= '1';
			update_tempo_pause <= '0';
			load_timer_lost <= '0';
			update_timer_lost <= '0';
			pause <= '1';
			brick_win <= '0';
		ELSE
			CASE etat_present IS
				WHEN un =>
					RAZ_tempo_pause <= '1';
					update_tempo_pause <= '0';
					load_timer_lost <= '0';
					update_timer_lost <= '0';
					pause <= '1';
					brick_win <= '0';
					IF pause_rqt = '1' THEN
						etat_prochain <= un;
					ELSE
						etat_prochain <= deux;
					END IF;

				WHEN deux =>
					RAZ_tempo_pause <= '0';
					update_tempo_pause <= '1';
					load_timer_lost <= '0';
					update_timer_lost <= '0';
					pause <= '1';
					brick_win <= '0';
					IF pause_rqt = '0' THEN
						etat_prochain <= deux;
					ELSE
						etat_prochain <= trois;
					END IF;

				WHEN trois =>
					RAZ_tempo_pause <= '1';
					update_tempo_pause <= '0';
					load_timer_lost <= '0';
					update_timer_lost <= '0';
					pause <= '0';
					brick_win <= '0';
					IF pause_rqt = '1' THEN
						etat_prochain <= trois;
					ELSE
						etat_prochain <= quatre;
					END IF;

				WHEN quatre =>
					RAZ_tempo_pause <= '0';
					update_tempo_pause <= '1';
					load_timer_lost <= '0';
					update_timer_lost <= '0';
					pause <= '0';
					brick_win <= '0';
					IF pause_rqt = '0' AND no_brick = '0' AND lost = '0' THEN
						etat_prochain <= quatre;
					ELSIF pause_rqt = '1' AND no_brick = '0' AND lost = '0' THEN
						etat_prochain <= un;
					ELSIF no_brick = '1' THEN
						etat_prochain <= cinq;
					ELSIF lost = '1' THEN
						etat_prochain <= six;
					END IF;

				WHEN cinq =>
					RAZ_tempo_pause <= '0';
					update_tempo_pause <= '0';
					load_timer_lost <= '0';
					update_timer_lost <= '0';
					pause <= '0';
					brick_win <= '1';
					etat_prochain <= cinq;

				WHEN six =>
					RAZ_tempo_pause <= '1';
					update_tempo_pause <= '0';
					load_timer_lost <= '1';
					update_timer_lost <= '0';
					pause <= '0';
					brick_win <= '0';
					etat_prochain <= sept;

				WHEN sept =>
					RAZ_tempo_pause <= '0';
					update_tempo_pause <= '1';
					load_timer_lost <= '0';
				    IF endframe = '1' AND precFrame = '0' THEN
				        precFrame <= '1';
				        update_timer_lost <= '1';
				    ELSIF endFrame = '0' AND precFrame = '1' THEN
				        precFrame <= '0';
                        update_timer_lost <= '1';
				    ELSE
				        update_timer_lost <= '0';
				    END IF;
					pause <= '1';
					brick_win <= '0';
					etat_prochain <= sept;
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
