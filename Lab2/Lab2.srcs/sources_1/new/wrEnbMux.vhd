----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2025 09:52:45 AM
-- Design Name: 
-- Module Name: wrEnbMux - Behavioral
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

entity WrEnbMux is
    port(
        clk : in std_logic;
        cw : in std_logic;
        exWen : in std_logic;
        exSel : in std_logic;
        result : out std_logic
    );
end WrEnbMux;

architecture Behavioral of wrEnbMux is

begin

    result <= exWen when exSel = '1' else
    cw;
--    process(clk)
--        begin
--            if(rising_edge(clk)) then
--                if(exSel = '1') then
--                    result <= exWen;
--                else
--                    result <= cw;
--                end if;
--            end if;
--        end process;


end Behavioral;
