----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/17/2025 09:35:36 AM
-- Design Name: 
-- Module Name: Counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
    generic ( count : integer;
              bits : integer
    );
    Port ( clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           ctrl : in STD_LOGIC;
           Q : out unsigned (bits - 1 downto 0);
           rollCombo : out STD_LOGIC
           ); 
           
end Counter;

architecture Behavioral of Counter is
    signal rcombo : std_logic;
    signal processQ: unsigned (bits - 1 downto 0);
begin
------------------------------------------
--          ctrl        Behavior
--          0           hold
--          1           count up 

------------------------------------------

    process (clk)
    begin 
        if (rising_edge(clk)) then
            if (reset_n = '0') then
                processQ <= (others => '0');
            elsif ((processQ < count) and (ctrl = '1')) then
                processQ <= processQ + 1;
            elsif ((processQ = count) and (ctrl = '1')) then
                processQ <= (others  => '0');
            end if;
        end if;
    end process;
    rCombo <= '1' when (processQ = count) else '0';
    Q <= processQ;
    rollCombo <= rCombo;
    
end Behavioral;
