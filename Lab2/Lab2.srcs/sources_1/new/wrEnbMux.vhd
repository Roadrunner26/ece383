----------------------------------------------------------------------------------
-- Name:	Grantham Zimmerman
-- Date:	Spring 2025
-- File:    wrEnbMux.vhd
-- HW:	    Lab 2 
-- Pupr:	Lab 2 enable mux for BRAM write. 
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

entity WrEnbMux is
    port(
        clk : in std_logic;
        cw : in std_logic;
        exWen : in std_logic;
        exSel : in std_logic;
        result : out std_logic
    );
end WrEnbMux;

architecture Behavioral of wrEnbMux is

begin

    result <= exWen when exSel = '1' else
    cw;
--    process(clk)
--        begin
--            if(rising_edge(clk)) then
--                if(exSel = '1') then
--                    result <= exWen;
--                else
--                    result <= cw;
--                end if;
--            end if;
--        end process;


end Behavioral;
