library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SyncGen is port(
			rst      	: IN  std_logic;         			-- reset de l'interface
			clk		    : IN  std_logic;         			-- horloge pixel
			c_h    		: OUT integer range 0 to 1023;        
			c_v    		: OUT integer range 0 to 1023;        
			hor_sync    : OUT std_logic;    				-- synchronisation horizontale
			ver_sync    : OUT std_logic 		 			-- synchronisation verticale
			); 
END entity SyncGen;


ARCHITECTURE Comportementale OF SyncGen IS
	signal v, h : integer range 0 to 1023;
BEGIN
  
  c_v <= v;
  c_h <= h;
  
  count : entity work.countVH(Comportementale) port map (rst => rst, clk => clk, c_h => h, c_v => v);
  sync : entity work.SyncVH(Comportementale) port map (rst => rst, clk => clk, c_h => h, c_v => v, hor_sync => hor_sync, ver_sync => ver_sync);
  

END Comportementale;
