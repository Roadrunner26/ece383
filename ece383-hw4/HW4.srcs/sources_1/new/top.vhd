

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port(
        clk : in std_logic;
        reset : in std_logic;
        ctrl: in std_logic;
        Q1, Q0: out unsigned (2 downto 0));
        
end top;

architecture Behavioral of top is

    signal w_Q : unsigned (2 downto 0);
    signal w_ctrl : std_logic;
component counter is
    port (
    clk : in std_logic;
    reset : in std_logic;
    ctrl : in std_logic;
    Q : out unsigned (2 downto 0));
end component counter;
    signal processQ: unsigned (2 downto 0);
begin
counter1 : counter
port map(
    ctrl => ctrl,
    reset => reset,
    clk => clk,
    Q => w_Q
    );

counter2 : counter
port map(
    ctrl => w_ctrl,
    reset => reset,
    clk => clk,
    Q => Q1
    );
    process(clk)
    begin
        if (rising_edge(clk)) then
            if(w_Q = 4) and (ctrl = '1') then
                w_ctrl <= '1';
            else w_ctrl <= '0';
            end if;
        end if;
    end process;
    Q0 <= w_Q;

end Behavioral;
