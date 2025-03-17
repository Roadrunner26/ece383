----------------------------------------------------------------------------------
-- Name:	Grantham Zimmerman
-- Date:	Spring 2025
-- File:    counter1.vhd
-- HW:	    Lab 2
-- Pupr:	Memory counter in lab 2  
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

entity counter is
    generic (pixel_width : integer);
    port(
    clk : in std_logic;
    reset : in std_logic;
    ctrl : in std_logic;
    Q : out unsigned (9 downto 0));
end counter;

architecture Behavioral of counter is
    signal processQ: unsigned(9 downto 0);

begin
process(clk)
        begin
            if(rising_edge(clk)) then
                if(reset = '0') then
                    processQ <= (others => '0');
                elsif((processQ < (pixel_width - 1)) and (ctrl = '1')) then
                    processQ <= processQ + 1;
                elsif((processQ = (pixel_width - 1)) and (ctrl = '1')) then
                    processQ <= (others => '0');
                else 
                    processQ <= processQ;
                end if;
            end if;
        end process;
        Q <= processQ;

end Behavioral;
