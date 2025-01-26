----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.01.2025 16:06:12
-- Design Name: 
-- Module Name: VGA - vga_arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
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

entity VGA is
	Port(	clk: in  STD_LOGIC;
			reset_n : in  STD_LOGIC;
			h_sync : out  STD_LOGIC;
			v_sync : out  STD_LOGIC; 
			blank : out  STD_LOGIC;
			r: out STD_LOGIC_VECTOR(7 downto 0);
			g: out STD_LOGIC_VECTOR(7 downto 0);
			b: out STD_LOGIC_VECTOR(7 downto 0);
			trigger_time: in unsigned(9 downto 0);
			trigger_volt: in unsigned (9 downto 0);
			row: out unsigned(9 downto 0);
			column: out unsigned(9 downto 0);
			ch1: in std_logic;
			ch1_enb: in std_logic;
			ch2: in std_logic;
			ch2_enb: in std_logic);
end VGA;

architecture vga_arch of VGA is

    signal w_ctrl : std_logic := '1';
    signal ctrl : std_logic := '1';
    signal w_Q : unsigned(9 downto 0);
    signal w_row, w_column : unsigned (9 downto 0);
component counter is
    generic (pixel_width : integer);
    port(
    clk : in std_logic;
    reset : in std_logic;
    ctrl : in std_logic;
    Q : out unsigned (9 downto 0));
end component counter;

component scopeFace is
    Port ( row : in  unsigned(9 downto 0);
           column : in  unsigned(9 downto 0);
		   trigger_volt: in unsigned (9 downto 0);
		   trigger_time: in unsigned (9 downto 0);
           r : out  std_logic_vector(7 downto 0);
           g : out  std_logic_vector(7 downto 0);
           b : out  std_logic_vector(7 downto 0);
		   ch1: in std_logic;
		   ch1_enb: in std_logic;
		   ch2: in std_logic;
		   ch2_enb: in std_logic);
end component scopeFace;

begin

uut1 : counter
generic map (pixel_width => 800)
port map(
    clk => clk,
    reset => reset_n,
    ctrl => ctrl,
    Q => w_Q
);

uut2 : counter
generic map (pixel_width => 525)
port map(
    clk => clk,
    reset => reset_n,
    ctrl => w_ctrl,
    Q => w_row
);

uut3 : scopeFace
port map(
    trigger_volt => trigger_volt,
    trigger_time => trigger_time,
     row => w_row,
     column => w_column,
     ch1 => ch1,
     ch2 => ch2,
     ch1_enb => ch1_enb,
     ch2_enb => ch2_enb,
     r => r,
     g => g,
     b => b
);
    process(clk)
    begin
        if (rising_edge(clk)) then
            if(w_Q = 799) and (ctrl = '1') then
                w_ctrl <= '1';
            else w_ctrl <= '0';
            end if;
        end if;
    end process;
    w_column <= w_Q;
    row <= w_row;
    column <= w_column;


end vga_arch;
