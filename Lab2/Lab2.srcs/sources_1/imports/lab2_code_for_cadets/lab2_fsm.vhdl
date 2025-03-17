----------------------------------------------------------------------------------
-- Name:	Grantham Zimmerman
-- Date:	Spring 2025
-- File:    lab2_fsm.vhd
-- HW:	    Lab 2 
-- Pupr:	Lab 2 Finite State Machine for the write circuitry.  
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
use IEEE.NUMERIC_STD.ALL;


entity lab2_fsm is
    Port ( clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR (2 downto 0);
           cw : out  STD_LOGIC_VECTOR (2 downto 0);
           led : out std_logic_vector (7 downto 0)
           );
end lab2_fsm;

architecture Behavioral of lab2_fsm is
    signal readyCompare, readyReady, readyTrigger : std_logic;

	type state_type is (Reset, WaitReady, StoreSample, WaitTrigger);
	signal state: state_type;

begin
    readyCompare <= sw(0);
    readyReady <= sw(1);
    readyTrigger <= sw(2);
	-------------------------------------------------------------------------------
	--		SW		meaning
	--		
	-------------------------------------------------------------------------------
	state_proces: process(clk)  
	begin
		if (rising_edge(clk)) then
			if (reset_n = '0') then 
				state <= reset;
			else 
				case state is
					when Reset => 
					   state <= WaitTrigger;
				    when WaitTrigger =>
					   if(readyTrigger = '1') then
					       state <= WaitReady;
					   end if;
				    when WaitReady =>
				        if(readyReady = '1') then
				            state <= StoreSample;
				        end if;
				   when StoreSample =>
				   	    if(readyCompare = '0') then
				            state <= WaitReady;
				        else
				            state <= Reset;
				        end if;

                    
				end case;
			end if;
		end if;
	end process;

	-------------------------------------------------------------------------------
	--  CW output table
	--		CW		meaning
	--		
	-------------------------------------------------------------------------------
       cw(1 downto 0) <= "11" when state = Reset else
       "01" when state = StoreSample else
       "00";
       
       cw(2) <= '1' when state = StoreSample else
       '0';
       
       
end Behavioral;
