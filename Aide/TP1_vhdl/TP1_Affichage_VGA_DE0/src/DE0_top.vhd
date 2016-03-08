

LIBRARY ieee;
USE ieee.std_logic_1164.all; 


ENTITY DE0_top IS 
	PORT
	(
		CLOCK_50 :  IN  STD_LOGIC;
		KEY :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		SW :  IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		VGA_VS :  OUT  STD_LOGIC;
		VGA_HS :  OUT  STD_LOGIC;
		VGA_B :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		VGA_G :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		VGA_R :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END entity;

ARCHITECTURE struct OF DE0_top IS 

SIGNAL	rst :  STD_LOGIC;
SIGNAL	clk_vga :  STD_LOGIC;

BEGIN 

U1 : entity work.interface_vga
PORT MAP(rst => rst,
		 clk => clk_vga,
		 switch => SW(0),
		 ver_sync => VGA_VS,
		 hor_sync => VGA_HS,
		 blue => VGA_B,
		 green => VGA_G,
		 red => VGA_R);

U2 : entity work.pll_vga
PORT MAP(inclk0 => CLOCK_50,
		 c0 => clk_vga);


rst <= NOT(KEY(0));

END architecture;