----------------------------------------------------------------------------------
-- Name:	Grantham Zimmerman
-- Date:	Spring 2025
-- File:    dvid.vhdl
-- HW:	    Lab 1
-- Pupr:	Lab 1 colors for HDMI display. 
--
-- Doc:	Sam Quick and I unsuccessfully verbally talked about trigger logic, reset logic, and worked on the datapath to see 
--if we could successfully get the monitor to show a scroll. This did not work. Lt Col Trimble showed me through a youtube video 
--how to debug my datapath to get simlive to show up. He also showed me how to deal with my fromADCX signals with a clock process 
--to ensure triggering showed up correctly.
-- 	
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

entity dvid is
    Port ( clk       : in  STD_LOGIC;
           clk_n     : in  STD_LOGIC;
           clk_pixel : in  STD_LOGIC;
           red_p     : in  STD_LOGIC_VECTOR (7 downto 0);
           green_p   : in  STD_LOGIC_VECTOR (7 downto 0);
           blue_p    : in  STD_LOGIC_VECTOR (7 downto 0);
           blank     : in  STD_LOGIC;
           hsync     : in  STD_LOGIC;
           vsync     : in  STD_LOGIC;
           red_s     : out STD_LOGIC;
           green_s   : out STD_LOGIC;
           blue_s    : out STD_LOGIC;
           clock_s   : out STD_LOGIC);
end dvid;

architecture Behavioral of dvid is
   COMPONENT TDMS_encoder
   PORT(
      clk     : IN  std_logic;
      data    : IN  std_logic_vector(7 downto 0);
      c       : IN  std_logic_vector(1 downto 0);
      blank   : IN  std_logic;          
      encoded : OUT std_logic_vector(9 downto 0)
      );
   END COMPONENT;

   signal encoded_red, encoded_green, encoded_blue : std_logic_vector(9 downto 0);
   signal latched_red, latched_green, latched_blue : std_logic_vector(9 downto 0) := (others => '0');
   signal shift_red,   shift_green,   shift_blue   : std_logic_vector(9 downto 0) := (others => '0');

   signal shift_clock   : std_logic_vector(9 downto 0) := "0000011111";


   constant c_red       : std_logic_vector(1 downto 0) := (others => '0');
   constant c_green     : std_logic_vector(1 downto 0) := (others => '0');
   signal   c_blue      : std_logic_vector(1 downto 0);

begin   
   c_blue <= vsync & hsync;

   TDMS_encoder_red:   TDMS_encoder PORT MAP(clk => clk_pixel, data => red_p,   c => c_red,   blank => blank, encoded => encoded_red);
   TDMS_encoder_green: TDMS_encoder PORT MAP(clk => clk_pixel, data => green_p, c => c_green, blank => blank, encoded => encoded_green);
   TDMS_encoder_blue:  TDMS_encoder PORT MAP(clk => clk_pixel, data => blue_p,  c => c_blue,  blank => blank, encoded => encoded_blue);

   ODDR2_red   : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
      port map (Q => red_s,   D0 => shift_red(0),   D1 => shift_red(1),   C0 => clk, C1 => clk_n, CE => '1', R => '0', S => '0');

   ODDR2_green : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
      port map (Q => green_s, D0 => shift_green(0), D1 => shift_green(1), C0 => clk, C1 => clk_n, CE => '1', R => '0', S => '0');

   ODDR2_blue  : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
      port map (Q => blue_s,  D0 => shift_blue(0),  D1 => shift_blue(1),  C0 => clk, C1 => clk_n, CE => '1', R => '0', S => '0');

   ODDR2_clock : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
      port map (Q => clock_s, D0 => shift_clock(0), D1 => shift_clock(1), C0 => clk, C1 => clk_n, CE => '1', R => '0', S => '0');


   process(clk_pixel)
   begin
      if rising_edge(clk_pixel) then 
            latched_red   <= encoded_red;
            latched_green <= encoded_green;
            latched_blue  <= encoded_blue;
      end if;
   end process;

   process(clk)
   begin
      if rising_edge(clk) then 
         if shift_clock = "0000011111" then
            shift_red   <= latched_red;
            shift_green <= latched_green;
            shift_blue  <= latched_blue;
         else
            shift_red   <= "00" & shift_red  (9 downto 2);
            shift_green <= "00" & shift_green(9 downto 2);
            shift_blue  <= "00" & shift_blue (9 downto 2);
         end if;
         shift_clock <= shift_clock(1 downto 0) & shift_clock(9 downto 2);
      end if;
   end process;

end Behavioral;
