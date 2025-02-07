--------------------------------------------------------------------
-- Name:	George York
-- Date:	Feb 2, 2021
-- File:	button_debounce.vhdl
-- HW:	    Template for HW7
--	Crs:	ECE 383
--
-- Purp:	For this debouncer, we assume the clock is slowed from 100MHz to 100KHz,
--          and the ringing time is less than 20ms
--
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
------------------------------------------------------------------------- 
library IEEE;		
use IEEE.std_logic_1164.all; 
use IEEE.NUMERIC_STD.ALL;

entity button_debounce is
	Port(	clk: in  STD_LOGIC;
			reset : in  STD_LOGIC;
			button: in STD_LOGIC;
			action: out STD_LOGIC);
end button_debounce;

architecture behavior of button_debounce is
	
	signal cw: STD_LOGIC_VECTOR(1 downto 0):= (others => '0');
	signal sw: STD_LOGIC:= '0';
	signal less : std_logic;
	constant t20ms : unsigned(11 downto 0) := x"7D0";
	type state_type is (Init0, Comp1, Init1, Comp2, Incr1, Comp3, Init2, Comp4, Incr2, Init3);
	signal state: state_type;
	
	COMPONENT lec10    -- clock for 20 msec debounce delay
		generic (N: integer := 12);
		Port(	clk: in  STD_LOGIC;
				reset : in  STD_LOGIC;
				crtl: in std_logic_vector(1 downto 0);
				D: in unsigned (N-1 downto 0);
				Q: out unsigned (N-1 downto 0));
    END COMPONENT;
	
	-- these values are for 100KHz
    signal D : unsigned(11 downto 0) := (others => '0');
    signal Q : unsigned(11 downto 0);
        
begin
    ----------------------------------------------------------------------
	--   DATAPATH
	----------------------------------------------------------------------
	delay_counter: lec10 
    Generic map(12)
	PORT MAP (
          clk => clk,
          reset => '1',
		  crtl => cw,
          D => D,
          Q => Q
        );	
	
	-- reminder: counter counter every other clock cycle!
   	-- these values are for 100KHz clock
    less <= '1' when Q = t20ms else '0';
    
    
   -----------------------------------------------------------------------
   --    CONTROL UNIT
   -----------------------------------------------------------------------
   state_process: process(clk)
	 begin
		if (rising_edge(clk)) then
			if (reset = '0') then 
				state <= Init0;
			else
				case state is
					when Init0 => 
					   state <= Comp1;
					when Comp1 => 
					   if (button = '1') then state <= Init1; end if;
					when Init1 =>
					   state <= Comp2;
					when Comp2 =>
					   if(Q = x"7D0") then state <= Comp3;
					   else state <= Incr1; end if;
					when Incr1 =>
					   state <= Comp2;
				    when Comp3 =>
				        if (button = '1') then state <= Init2; end if;
				    when Init2 =>
				        state <= Comp4;
				    when Comp4 =>
				        if(Q = x"7D0") then state <= Init3;
				        else state <= Incr2; end if;
				    when Incr2 =>
				        state <= Comp4;
				    when Init3 =>
				        state <= Init0;				
				end case;
			end if;
		end if;
	end process;


	------------------------------------------------------------------------------
	--			OUTPUT EQUATIONS
	--	
	--		cw is counter control:  00 is hold; 01 is increment; 11 is reset	
	------------------------------------------------------------------------------	
	cw <=   "00" when state = Init0 else
			"00" when state = Comp1 else
			"11" when state = Init1 else
			"00" when state = Comp2 else
			"01" when state = Incr1 else
			"00" when state = Comp3 else
			"11" when state = Init2 else
			"00" when state = Comp4 else
			"01" when state = Incr2 else
			"00" when state = Init3;
				
	action <= '1' when state = Init3 else '0';
	
end behavior;