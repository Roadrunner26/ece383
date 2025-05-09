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
			lane1X : in unsigned(9 downto 0);
            lane2X: in unsigned(9 downto 0);
            lane3X: in unsigned(9 downto 0);
            lane4X: in unsigned(9 downto 0);
            frogX: in unsigned(9 downto 0);
            frogY: in unsigned(9 downto 0);
            river6X: in unsigned(9 downto 0);
            river7X: in unsigned(9 downto 0);
            river8X: in unsigned(9 downto 0);
            frogType : in integer;
			r: out STD_LOGIC_VECTOR(7 downto 0);
			g: out STD_LOGIC_VECTOR(7 downto 0);
			b: out STD_LOGIC_VECTOR(7 downto 0);
			row: out unsigned(9 downto 0);
			column: out unsigned(9 downto 0));
end VGA;

architecture vga_arch of VGA is

    signal w_ctrl : std_logic;
    signal ctrl : std_logic := '1';
    signal w_Q : unsigned(9 downto 0);
    signal w_row, w_column : unsigned (9 downto 0);
    signal w_h_blank, w_v_blank : std_logic;
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
           lane1X : in unsigned(9 downto 0);
           lane2X: in unsigned(9 downto 0);
           lane3X: in unsigned(9 downto 0);
           lane4X: in unsigned(9 downto 0);
           frogX: in unsigned(9 downto 0);
           frogY: in unsigned(9 downto 0);
           river6X: in unsigned(9 downto 0);
           river7X: in unsigned(9 downto 0);
           river8X: in unsigned(9 downto 0);
           frogType : in integer;
           r : out  std_logic_vector(7 downto 0);
           g : out  std_logic_vector(7 downto 0);
           b : out  std_logic_vector(7 downto 0));
end component;

component synchronize is
port(
    clk : in std_logic;
    reset_n : in std_logic;
    row : in unsigned(9 downto 0);
    column : in unsigned(9 downto 0);
    v_blank : out std_logic;
    h_blank : out std_logic;
    v_sync : out std_logic;
    h_sync : out std_logic);
end component synchronize; 
begin

uut1 : counter
generic map (pixel_width => 800)
port map(
    clk => clk,
    reset => reset_n,
    ctrl => '1',
    Q => w_column
);

w_ctrl <= '1' when w_column = 799 else '0';

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
     row => w_row,
     column => w_column,
     r => r,
     g => g,
     b => b,
    lane1X => lane1X,
    lane2X => lane2X,
    lane3X => lane3X,
    lane4X => lane4X,
    river6X => river6X,
    river7X => river7X,
    river8X => river8X,
    frogType => frogType,
    frogX => frogX,
    frogY => frogY);

uut4 : synchronize
port map(
    clk => clk,
    h_sync => h_sync,
    v_sync => v_sync,
    column => w_column,
    row => w_row,
    reset_n => reset_n,
    h_blank => w_h_blank,
    v_blank => w_v_blank
);
    row <= w_row;
    column <= w_column;
    blank <= w_v_blank or w_h_blank;

end vga_arch;