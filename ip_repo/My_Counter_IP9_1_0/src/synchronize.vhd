----------------------------------------------------------------------------------
-- Name:	Grantham Zimmerman
-- Date:	Spring 2025
-- File:    synchronize.vhd
-- HW:	    Lab 1 
-- Pupr:	Lab 1 logic for HDMI display. 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity synchronize is
port(
    clk : in std_logic;
    reset_n : in std_logic;
    row : in unsigned(9 downto 0);
    column : in unsigned(9 downto 0);
    v_blank : out std_logic;
    h_blank : out std_logic;
    v_sync : out std_logic;
    h_sync : out std_logic);
end synchronize; 

architecture Behavioral of synchronize is

begin

    h_sync <=  '1' when reset_n = '0' else
    '1' when column < 656 else
    '1' when column > 751 else
    '0';
    
    v_sync <= '1' when reset_n = '0' else
    '1' when row < 490 else
    '1' when row > 491 else
    '0';
    
    h_blank <= '0' when column < 640 else
    '1';
    
    v_blank <= '0' when row < 480 else
    '1';
    


end Behavioral;
