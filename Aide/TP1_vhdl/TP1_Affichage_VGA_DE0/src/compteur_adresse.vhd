library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur_adresse is
generic (
      	  Ppixel : integer := 0;
	  Pligne : integer := 0;
	  Npixel : integer := 160;          
	  Nligne : integer := 120);
port (
 	  c_v, c_h : integer range 0 to 1023;
 	  clk,rst : in std_logic;
 	  addr : out std_logic_vector(14 downto 0);
 	  aclr : out std_logic;
 	  clken : out std_logic);
end entity;

architecture RTL of compteur_adresse is
 signal cnt : integer range 0 to 2**15 - 1;
begin

process(clk,rst)
begin
 	if rst = '1' then
 		 cnt <= 0;
 		 aclr <= '0';
 		 clken <= '0';
 	elsif rising_edge(clk) then
 		 if (c_h <(Ppixel + Npixel) and c_v <(Pligne + Nligne)) then 
 			  cnt <= cnt + 1;
 		  if (c_h>(Pligne + Nligne)) then 
 			   cnt <= 0;
 		  end if;
 		 end if;
 	end if;
end process;
 
 addr <= std_logic_vector(to_unsigned(cnt,15));
end architecture;