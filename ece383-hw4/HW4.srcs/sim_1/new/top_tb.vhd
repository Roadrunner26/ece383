library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_tb is
-- Testbench has no ports
end top_tb;

architecture Behavioral of top_tb is

    -- Component declaration of the unit under test (UUT)
    component top
        Port(
            clk : in std_logic;
            reset : in std_logic;
            ctrl : in std_logic;
            Q1, Q0 : out unsigned (2 downto 0)
        );
    end component;

    -- Signals for the testbench
    signal clk_tb : std_logic := '0';
    signal reset_tb : std_logic := '0';
    signal ctrl_tb : std_logic := '0';
    signal Q1_tb, Q0_tb : unsigned(2 downto 0) := (others => '0') ;

    constant CLK_PERIOD : time := 10 ns; -- Clock period

begin

    -- Instantiate the UUT
    uut: top
        Port map (
            clk => clk_tb,
            reset => reset_tb,
            ctrl => ctrl_tb,
            Q1 => Q1_tb,
            Q0 => Q0_tb
        );

    -- Clock generation process
    clk_process : process
    begin
        clk_tb <= '0';
        wait for CLK_PERIOD / 2;
        clk_tb <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    reset_tb <= '0', '1' after 1 us;
    ctrl_tb <= '1', '0' after 15us, '1' after 16us, '0' after 17us, '1' after 18us;

end Behavioral;

