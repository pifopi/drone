library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity colours is port(
   	 rst      	: IN  std_logic;         -- reset de l'interface
   	 clk		: IN  std_logic;         -- horloge pixel
   	 c_v   		: IN integer range 0 to 1023;        
	 c_h   		: IN integer range 0 to 1023;
	 switch 	: in std_logic;
	 red		: out std_logic_vector(3 downto 0); 
	 green		: out std_logic_vector(3 downto 0); 
	 blue     	: out std_logic_vector(3 downto 0) 
	 );        
	 
END entity colours;


ARCHITECTURE Comportementale OF colours IS
BEGIN
  PROCESS(clk,rst,switch)
  BEGIN  
    
    IF rst = '1'  THEN
      red <= x"0";
      green <= x"0";
      blue <= x"0"; 
    elsif rising_edge(clk)then
		if switch = '1' then
			if c_h < 80 then
				red <= x"0";
				green <= x"0";
				blue <= x"0";
	
			elsif c_h<160 then
				red <= x"F"; -- "1111" en hexa
				green <= x"0";
				blue <= x"0";
		
			elsif  c_h < 240 then 
				red <= x"0";
				green <= x"F";
				blue <= x"0";
		
			elsif  c_h < 320 then
				red <= x"F";
				green <= x"F";
				blue <= x"0";
		
			elsif c_h< 400 then
				red <= x"0";
				green <= x"0";
				blue <= x"F";
			elsif c_h < 480 then
				red <= x"F";
				green <= x"0";
				blue <= x"F";
			elsif c_h < 560 then
				red <= x"0";
				green <= x"F";
				blue <= x"F";
			elsif c_h< 640 then
				red <= x"F";
				green <= x"F";
				blue <= x"F";
			elsif c_h > 640 then
				red <= x"0";
				green <= x"0";
				blue <= x"0";
			end if;
		

		else 	

			if c_h>0 and c_h<640 then
				if c_v < 60 then
					red <= x"0";
					green <= x"0";
					blue <= x"0";
	
				elsif c_v <120 then
					red <= x"F"; -- "1111" en hexa
					green <= x"0";
					blue <= x"0";
			
				elsif  c_v < 180 then 
					red <= x"0";
					green <= x"F";
					blue <= x"0";
			
				elsif  c_v < 240 then
					red <= x"F";
					green <= x"F";
					blue <= x"0";
		
				elsif c_v< 300 then
					red <= x"0";
					green <= x"0";
					blue <= x"F";
				elsif c_v < 360 then
					red <= x"F";
					green <= x"0";
					blue <= x"F";
				elsif c_v < 420 then
					red <= x"0";
					green <= x"F";
					blue <= x"F";
				elsif c_v < 480 then
					red <= x"F";
					green <= x"F";
					blue <= x"F";
				elsif c_v > 480 then
					red <= x"0";
					green <= x"0";
					blue <= x"0";
				end if;
			end if;
		--else 
			--red <= x"0";
			--green <= x"0";
			--blue <= x"0";
		end if;		
    END IF;
  END PROCESS;
END architecture;

--architecture struct of colours is
--signal taclr, tclken : std_logic;
--signal Taddr : std_logic_vector(14 downto 0); 
--begin
--	G3: entity work.compteur_adresse port map (c_v=>c_v, c_h=>c_h, clk=>clk, rst=>rst, aclr=>Taclr, clken=>Tclken, addr=>Taddr); 
--	G4: entity work.ROM_image port map(aclr=>Taclr, clock=>clk, clken=>tclken, address=>Taddr, q(0)=>red(0), q(1)=>blue(0), q(2)=>green(0));
--end architecture;
