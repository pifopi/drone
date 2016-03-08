library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity colours is port(
    rst      	: IN  std_logic;         -- reset de l'interface
    clk		   : IN  std_logic;         -- horloge pixel
    c_v   		: IN integer range 0 to 1023;        
	c_h   		: IN integer range 0 to 1023;
	switch 	   : in std_logic;
	red			: out std_logic_vector(3 downto 0); 
	green		: out std_logic_vector(3 downto 0); 
	blue     	: out std_logic_vector(3 downto 0) );         
END entity colours;


ARCHITECTURE Comportementale OF colours IS
BEGIN
  PROCESS(clk,rst)
  BEGIN  
    
    IF rst = '1'  THEN
      red <= x"0";
      green <= x"0";
      blue <= x"0"; 
 	elsif rising_edge(clk)then
	
		if switch = '0' then
			if c_h < 240 then
				red <= x"0";
				green <= x"0";
				blue <= x"0";
		
			elsif c_h < 320 then
				red <= x"F"; 
				green <= x"0";
				blue <= x"0";
			
			elsif  c_h < 400 then 
				red <= x"0";
				green <= x"F";
				blue <= x"0";
			
			elsif  c_h < 480 then
				red <= x"F";
				green <= x"F";
				blue <= x"0";
			
			elsif c_h < 560 then
				red <= x"0";
				green <= x"0";
				blue <= x"F";
			
			elsif c_h < 640 then
				red <= x"F";
				green <= x"0";
				blue <= x"F";
			
			elsif c_h < 720 then
				red <= x"0";
				green <= x"F";
				blue <= x"F";
			
			elsif c_h < 800 then
				red <= x"F";
				green <= x"F";
				blue <= x"F";
			
			else
				red <= x"0";
				green <= x"0";
				blue <= x"0";		
			end if;

		else
			if c_h >152 and c_h < 791 THEN 
			
				if c_v > 35 and c_v < 96 then
						red <= x"0"; 
						green <= x"0";
						blue <= x"0";
				
				elsif  c_v > 95 and c_v < 156 then
					red <= x"F";
					green <= x"0";
					blue <= x"0";
			
				elsif  c_v > 155 and c_v < 216 then
					red <= x"0";
					green <= x"F";
					blue <= x"0";
			
				elsif  c_v > 215 and c_v < 276 then
					red <= x"F";
					green <= x"F";
					blue <= x"0";
			
				elsif  c_v > 275 and c_v < 336 then
					red <= x"0";
					green <= x"0";
					blue <= x"F";
			
				elsif  c_v > 335 and c_v < 396 then
					red <= x"F";
					green <= x"0";
					blue <= x"F";
			
				elsif  c_v > 395 and c_v < 456 then
					red <= x"0";
					green <= x"F";
					blue <= x"F";
			
				elsif  c_v > 455 and c_v < 516 then
					red <= x"F";
					green <= x"F";
					blue <= x"F";
				else
					red <= x"0";
					green <= x"0";
					blue <= x"0";	
				end if;
			else 
				red <= x"0";
				green <= x"0";
				blue <= x"0";	
			END IF;
		end if;
    END IF;
  END PROCESS;
END architecture;

--architecture struct of colours is
	--signal clken, aclr : std_logic;
	--signal adr : std_logic_vector(14 downto 0);
--begin
	
	--cpt_adr : entity work.compteur_adresse(RTL) port map (c_v => c_v, c_h => c_h, clk => clk, rst => rst, addr => adr, aclr => aclr, clken => clken);
--	ROM_image : entity work.ROM_image(SYN) port map (aclr => aclr, address => adr, clken => clken, clock => clk, q(0) => red, q(1) => green, q(2) => blue);
	
--end architecture;		
