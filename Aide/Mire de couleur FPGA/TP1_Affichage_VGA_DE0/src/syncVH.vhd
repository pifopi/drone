library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SyncVH is port(
						rst      	: IN  std_logic;        		    -- reset de l'interface
						clk		    : IN  std_logic;         		    -- horloge pixel
						c_v   		: IN integer range 0 to 1023;        
						c_h   		: IN integer range 0 to 1023;
						hor_sync    : OUT std_logic;    				-- synchronisation horizentale
						ver_sync    : OUT std_logic 					-- synchronisation verticale
						);  
	 
END entity SyncVH;


ARCHITECTURE Comportementale OF SyncVH IS
BEGIN

  PROCESS(clk,rst)
  BEGIN  
    
    IF rst = '1'  THEN
      hor_sync <= '1';
      ver_sync <= '1';
      
 	 elsif rising_edge(clk)then
	 
		if (c_h >= 7) and (c_h <= 103) then
			hor_sync <= '0';
		else
			hor_sync <= '1';
		end if;
		
		if (c_h = 799) then
		
			if (c_v >= 1) and (c_v <= 2) then
				ver_sync <= '0';
			else
				ver_sync <= '1';
		
			end if;     
		end if;
    END IF;
  END PROCESS;
  
END Comportementale;
