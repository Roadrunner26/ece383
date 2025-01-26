----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2025 10:37:14 PM
-- Design Name: 
-- Module Name: counter1 - Behavioral
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

entity counter is
    generic (pixel_width : integer);
    port(
    clk : in std_logic;
    reset : in std_logic;
    ctrl : in std_logic;
    Q : out unsigned (9 downto 0));
end counter;

architecture Behavioral of counter is
    signal processQ: unsigned(9 downto 0);

begin
process(clk)
        begin
            if(rising_edge(clk)) then
                if(reset = '0') then
                    processQ <= (others => '0');
                elsif((processQ < (pixel_width - 1)) and (ctrl = '1')) then
                    processQ <= processQ + 1;
                elsif((processQ = (pixel_width - 1)) and (ctrl = '1')) then
                    processQ <= (others => '0');
                else 
                    processQ <= processQ;
                end if;
            end if;
        end process;
        Q <= processQ;

end Behavioral;
