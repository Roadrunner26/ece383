----------------------------------------------------------------------------------
-- Name:	Template by George your (modified from Jeff Falkinburg)
-- Date:	Spring 2023
-- File:    lab2_fsm.vhd
-- HW:	    Lab 2 
-- Pupr:	Lab 2 Finite State Machine for the write circuitry.  
--
-- Doc:	Adapted from Dr Coulston's Lab exercise
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
    signal ready : std_logic;

	type state_type is (compare, reset, wait_ready, incr);
	signal state: state_type;

begin
    ready <= sw(0);
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
					when reset => 
					   state <= wait_ready;
				    when wait_ready =>
				        if(ready = '1') then
				            state <= incr;
				        end if;
				   when incr =>
				        state <= compare;
				   when compare =>
				        if(sw(1) = '1') then
				            state <= reset;
				        else
				            if(ready = '0') then
				                state <= wait_ready;
				            end if;
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
       cw(1 downto 0) <= "11" when state = reset else
       "01" when state <= incr else
       "00";
       
       cw(2) <= '1' when state = incr else
       '0';
       led(3 downto 0) <= "0001" when state = reset else
       "0010" when state = wait_ready else
       "0100" when state = incr else
       "1000" when state = compare else
       "0000";
       
       
       led(7 downto 5) <= sw(2 downto 0);
end Behavioral;

