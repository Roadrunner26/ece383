----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2025 07:29:22 PM
-- Design Name: 
-- Module Name: FlagRegister - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FlagRegister is
    port(
        clk : in std_logic;
        reset_n : in std_logic;
        set : in std_logic;
        clear : in std_logic;
        Q : in std_logic;
        flagQ : out std_logic
    );
end entity;

architecture Behavioral of FlagRegister is

begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if (reset_n = '0') then
                flagQ <= '0';
            else
                if(set = '1' and clear = '0') then
                    flagQ <= '1';
                elsif (set = '0' and clear = '1') then
                    flagQ <= '0';
                else
                    flagQ <= '0';
                end if;
            end if;
        end if;
    end process;
            


end Behavioral;
