-- Author: 
-- Code to test top level of lab2.  Modify for your own use
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab2_tb is
end lab2_tb;

architecture behavior of lab2_tb is

	-- Component Declaration for the Unit Under Test (UUT)
	component lab2
        Port ( clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
--           ac_mclk : out STD_LOGIC;
           ac_adc_sdata : in STD_LOGIC;
--           ac_dac_sdata : out STD_LOGIC;
--           ac_bclk : out STD_LOGIC;
--           ac_lrclk : out STD_LOGIC;
--           scl : inout STD_LOGIC;
--           sda : inout STD_LOGIC;
--           tmds : out  STD_LOGIC_VECTOR (3 downto 0);
--           tmdsb : out  STD_LOGIC_VECTOR (3 downto 0);
           btn: in    STD_LOGIC_VECTOR(4 downto 0));
	end component;
 
 

	--Inputs
	signal clk : std_logic := '0';
	signal reset_n : std_logic := '0';
	signal btn : std_logic_vector(4 downto 0);
	--signal trigger_volt : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
	--signal trigger_time : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
	-- signal row : unsigned(9 downto 0) := (others => '0');
	-- signal column : unsigned(9 downto 0) := (others => '0');
	-- signal ch1, ch1_enb, ch2, ch2_enb: std_logic := '0';
 
	--Outputs
	-- signal h_sync : std_logic;
	-- signal v_sync : std_logic;
	-- signal blank : std_logic;

	-- signal r : std_logic_vector(7 downto 0);
	-- signal g : std_logic_vector(7 downto 0);
	-- signal b : std_logic_vector(7 downto 0);

	-- Clock period definitions
	constant clk_period : time := 10 ns;
	signal s : std_logic;

begin
	-- Instantiate the Unit Under Test (UUT)
 
	uut : lab2
	port map(
		clk => clk, 
		reset_n => reset_n, 
		btn => btn,
		ac_adc_sdata => s
--                   ac_mclk => OPEN,
--                   ac_adc_sdata => '0',
--                   ac_dac_sdata => OPEN,
--                   ac_bclk => OPEN,
--                   ac_lrclk => OPEN,
--                   scl => (others => '0'),
--                   sda => (others => '0'),
--                   tmds => OPEN,
--                   tmdsb => OPEN
	);
 
   

	-- Clock process definitions
	clk_process : process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;

    -- Procedural list of instructions to execute
	reset_n <= '0', '1' after 30nS;
	s <= '0';

	
end;