LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
Use work.ALL;

ENTITY mode IS
	PORT (
		pause_rqt : IN STD_LOGIC;
		endFrame : IN STD_LOGIC;
		lost : IN STD_LOGIC;
		no_brick : IN STD_LOGIC;
		Reset : IN STD_LOGIC;
		Clk25 : IN STD_LOGIC;
		pause : OUT STD_LOGIC;
		brick_win : OUT STD_LOGIC;
		Game_Lost : OUT STD_LOGIC
	);
END mode;

architecture Behavioral of mode is
	SIGNAL RAZ_Tempo_Pause : STD_LOGIC;
	SIGNAL Update_Tempo_Pause : STD_LOGIC;
	SIGNAL Fin_Tempo_Pause : STD_LOGIC;
	SIGNAL Load_Timer_Lost : STD_LOGIC;
	SIGNAL Update_Timer_Lost : STD_LOGIC;
	SIGNAL Timer_Lost : STD_LOGIC_VECTOR (5 downto 0);
begin
	Temporisation_pause: entity work.Tempo_pause
		port map (
			RAZ_Tempo_Pause => RAZ_Tempo_Pause,
			Update_Tempo_Pause => Update_Tempo_Pause ,
			Fin_Tempo_Pause => Fin_Tempo_Pause,
			Clk25 => Clk25 ,
			Reset =>  Reset
			);


	Timerr_Lost: entity work.Timer_Lost
		port map (
			Load_Timer_Lost  => Load_Timer_Lost ,
			Update_Timer_Lost  => Update_Timer_Lost,
			Game_Lost  => Game_Lost ,
			Clk25  => Clk25,
			Reset  => Reset,
			Timer_Lost  => Timer_Lost 
			);

	MAETAT: entity work.MAE
		port map (
			pause_rqt => pause_rqt,
			endFrame =>endFrame,
			lost => lost,
			no_brick => no_brick,
			Reset => Reset,
			Clk25 => Clk25 ,
			Timer_Lost => Timer_Lost,
			RAZ_tempo_pause => RAZ_tempo_pause ,
			update_tempo_pause => update_tempo_pause ,
			load_timer_lost => load_timer_lost,
			update_timer_lost => update_timer_lost,
			pause => pause ,
			brick_win => brick_win

			);

end;
