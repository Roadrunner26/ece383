----------------------------------------------------------------------------------
-- Name:	Grantham Zimmerman
-- Date:	Spring 2025
-- File:    FlagRegister.vhd
-- HW:	    Lab 2 
-- Pupr:	Lab 2 Flag Register to pass sw(1) to the top file.  
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FlagRegister is
    port(
        clk : in std_logic;
        reset_n : in std_logic;
        set : in std_logic;
        clear : in std_logic;
        Q : in std_logic;
        flagQ : out std_logic
    );
end entity;

architecture Behavioral of FlagRegister is

begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if (reset_n = '0') then
                flagQ <= '0';
            elsif(reset_n = '1') then
                if(set = '0') then
                    if(clear = '0') then
                        flagQ <= Q;
                    else
                        flagQ <= '0';
                    end if;
                else
                    flagQ <= '1';
                end if;
            end if;
        end if;
    end process;
            


end Behavioral;
