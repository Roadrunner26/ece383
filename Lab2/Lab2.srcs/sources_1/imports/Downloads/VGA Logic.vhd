----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/24/2025 09:17:01 AM
-- Design Name: 
-- Module Name: VGA Logic - Behavioral
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

entity VGA_Logic is
    Port ( clk : in STD_LOGIC;
           row : in unsigned (9 downto 0);
           column : in unsigned (9 downto 0);
           s_blank : out std_logic;
           h_sync : out STD_LOGIC;
           v_sync : out STD_LOGIC);
end VGA_Logic;

architecture Behavioral of VGA_Logic is

begin

s_blank <= '0' when ((row <= 479 ) and (column <= 639)) else '1';

h_sync <= '0' when ((column >= 656) and (column < 752)) else '1';

v_sync <= '0' when ((row >= 490) and (row < 492)) else '1';


end Behavioral;
