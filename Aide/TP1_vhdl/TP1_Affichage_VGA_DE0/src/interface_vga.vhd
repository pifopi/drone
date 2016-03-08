library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interface_vga is port(
    rst        : IN  std_logic;         -- reset de l'interface
    clk		   : IN  std_logic;         -- horloge pixel
    red	       : OUT std_logic_vector(3 downto 0);  
    green	   : OUT std_logic_vector(3 downto 0); 
    blue	   : OUT std_logic_vector(3 downto 0);     
    switch 	   : in std_logic;  
    ver_sync   : OUT std_logic ;        -- synchronisation verticale
    hor_sync   : OUT std_logic );        -- synchronisation horizontale
END entity ;


ARCHITECTURE Comportementale OF interface_vga IS
   signal v,h : integer range 0 to 1023;
BEGIN
  	C1: entity work.SyncGen(Comportementale) port map (rst=>rst, clk=>clk, c_h=>h, c_v=>v, hor_sync=>hor_sync, ver_sync => ver_sync);
	C2: entity work.colours(Comportementale) port map (rst=>rst, clk=>clk, c_h=>h, c_v=>v,switch=>switch, red => red, green => green, blue => blue);
 
	
END architecture;
