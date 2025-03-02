----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2025 08:15:53
-- Design Name: 
-- Module Name: synchronize - Behavioral
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

entity synchronize is
port(
    clk : in std_logic;
    reset_n : in std_logic;
    row : in unsigned(9 downto 0);
    column : in unsigned(9 downto 0);
    v_blank : out std_logic;
    h_blank : out std_logic;
    v_sync : out std_logic;
    h_sync : out std_logic);
end synchronize; 

architecture Behavioral of synchronize is

begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset_n = '0') then
                v_sync <= '1';
                h_sync <= '1';
            else
                if(column < 655 or column >= 751) then
                    h_sync <= '1';
                else h_sync <= '0';
                end if;
                if(row < 490 or row >= 492) then
                    v_sync <= '1';
                else v_sync <= '0';
                end if;
                if(column < 639) then
                    h_blank <= '0';
                else h_blank <= '1';
                end if;
                if(row < 480) then
                    v_blank <= '0';
                else v_blank <= '1';
                end if;
            end if;
         end if;
         
    end process;

end Behavioral;
