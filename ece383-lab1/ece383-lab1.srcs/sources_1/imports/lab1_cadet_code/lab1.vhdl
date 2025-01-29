----------------------------------------------------------------------------------
--	Put proper documentation here
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity lab1 is
    Port ( clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
		   btn: in	STD_LOGIC_VECTOR(4 downto 0);
		   switch: in STD_LOGIC_VECTOR(1 downto 0);
           tmds : out  STD_LOGIC_VECTOR (3 downto 0);
           tmdsb : out  STD_LOGIC_VECTOR (3 downto 0));
end lab1;

architecture structure of lab1 is

    signal trigger_time : unsigned(9 downto 0) := "0011101110";
    signal trigger_volt : unsigned(9 downto 0) := "0011111111";
	signal row, column: unsigned(9 downto 0);
	signal old_button, button_activity: std_logic_vector(4 downto 0);
	signal ch1_wave, ch2_wave: std_logic;
	signal btn_up_pressed : std_logic := '0';
    signal btn_down_pressed : std_logic := '0';
	signal btn_right_pressed : std_logic := '0';
	signal btn_left_pressed : std_logic := '0';
	
	component video is
    Port ( clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           tmds : out  STD_LOGIC_VECTOR (3 downto 0);
           tmdsb : out  STD_LOGIC_VECTOR (3 downto 0);
		      trigger_time: in unsigned(9 downto 0);
			  trigger_volt: in unsigned (9 downto 0);
			  row: out unsigned(9 downto 0);
			  column: out unsigned(9 downto 0);
			  ch1: in std_logic;
			  ch1_enb: in std_logic;
			  ch2: in std_logic;
			  ch2_enb: in std_logic);
	end component;

begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(switch(0) = '1') then
                if(row = column) then
                    ch1_wave <= '1';
                else ch1_wave <= '0';
                end if;            
            else
                ch1_wave <= '0';
            end if;
        end if;
    end process;
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(switch(1) = '1') then
                if(row = 440 - column) then
                    ch2_wave <= '1';
                else ch2_wave <= '0';
                end if;            
            else
                ch2_wave <= '0';
            end if;
        end if;
    end process;
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(btn(0) = '1' and btn_up_pressed = '0') then
                btn_up_pressed <= '1';
                trigger_volt <= trigger_volt - 1;
            elsif(btn(2) = '1' and btn_down_pressed = '0') then
                btn_down_pressed <= '1';
                trigger_volt <= trigger_volt + 1;
            end if;
            if(btn(1) = '1' and btn_left_pressed = '0') then
                btn_left_pressed <= '1';
                trigger_time <= trigger_time - 1;
            elsif(btn(3) = '1' and btn_right_pressed = '0') then
                btn_right_pressed <= '1';
                trigger_time <= trigger_time + 1;
            end if;
            if(btn(0) = '0') then
                btn_up_pressed <= '0';
            end if;
            if(btn(2) = '0') then
                btn_down_pressed <= '0';
            end if;
            if(btn(1) = '0') then
                btn_left_pressed <= '0';
            end if;
            if(btn(3) = '0') then
                btn_right_pressed <= '0';
            end if;
        end if;
    end process;
                
                

	------------------------------------------------------------------------------
	-- the variable button_activity will contain a '1' in any position which 
	-- has been pressed or released.  The buttons are all nominally 0
	-- and equal to 1 when pressed.
	------------------------------------------------------------------------------


	------------------------------------------------------------------------------
	-- If a button has been pressed then increment of decrement the trigger vars
	------------------------------------------------------------------------------
	
	------------------------------------------------------------------------------
	------------------------------------------------------------------------------
	video_inst: video port map( 
		clk => clk,
		reset_n => reset_n,
		tmds => tmds,
		tmdsb => tmdsb,
		trigger_time => trigger_time,
		trigger_volt => trigger_volt,
		row => row, 
		column => column,
		ch1 => ch1_wave,
		ch1_enb => switch(0),
		ch2 => ch2_wave,
		ch2_enb => switch(1)); 

	
end structure;
